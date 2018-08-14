<?php
namespace dxkite\statistical\response;

use suda\core\Request;

class TableResponse extends \suda\core\Response
{
    public function onRequest(Request $request)
    {
        $tables = app()->getModuleConfig(app()->getFileModule(__FILE__), 'statistic');
        $tableId = $request->get('table_id');
        // 判断是否存在ID
        if (isset($tables[$tableId])) {
            if ($request->hasPost()) {
                // 显示结果页面
                $view = $this->page('state');
                if ($type = $this->insertData($tableId, $request)) {
                    if ($type == 1) {
                        $view->set('message','写入成功');
                    } else {
                        $view->set('message','数据未更新');
                    }
                } else {
                    $view->set('message','写入失败');
                }
                $view->render();
            } else {
                $view = $this->page('table');
                $view->set('fields', $tables[$tableId]['fields']);
                $view->set('name', $tables[$tableId]['name']);
                $view->render();
            }
        } else {
            // 显示404界面
            hook()->exec('system:404');
        }
    }

    public function insertData(string $tableId, Request $request): int
    {
        $table = new \dxkite\statistical\table\StatisticTable;
        if ($request->post('name', null) && $request->post('number', null) && $request->post('data', null)) {
            // 查询条件
            $where = [
                'table_id' => $tableId,
                'student_id' => $request->post('number')
            ];
            // 如果存在学号相同，则更新记录
            // 根据ID更新会更快
            if ($data = $table->select(['id'],$where)->fetch()) {
                if ($table->updateByPrimaryKey($data['id'], [
                    'name' => $request->post('name'),
                    'data' => $request->post('data')
                ])) {
                    // 更新成功
                    return 1;
                } else {
                    // 未跟新
                    return 2;
                }
            } else {
                // 插入新记录
                $id = $table->insert([
                    'table_id' => $tableId,
                    'student_id' => $request->post('number'),
                    'name' => $request->post('name'),
                    'data' => $request->post('data'),
                ]);
                if ($id > 0) {
                    return 1;
                }
            }
        }
        return 0;
    }
}