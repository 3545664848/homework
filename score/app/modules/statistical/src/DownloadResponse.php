<?php
namespace dxkite\statistical\response;

use suda\core\Request;

class DownloadResponse extends \suda\core\Response
{
    public function onRequest(Request $request)
    {
        $tables = app()->getModuleConfig(app()->getFileModule(__FILE__), 'statistic');
        $tableId = $request->get('table_id');
        // 判断是否存在ID
        if (isset($tables[$tableId])) {
            if (isset($tables[$tableId]['password'])) {
                            // 显示密码填写界面
                $view = $this->page('download');

                //设置页面变量
                $view->set('pwd',$tables[$tableId]['password']);
                $view->set('ypwd',$request->get('password'));
                
                if ($request->get('password') == $tables[$tableId]['password']) {
                    $view->set('response','密码正确，请下载');
                    $this->download($tableId, $tables[$tableId]['fields']);
                } else {
                    $view->set('response','密码错误');
                }
                
                // 渲染模板显示出来
                $view->render();
            } else {
                $this->download($tableId, $tables[$tableId]['fields']);
            }
        } else {
            // 显示404界面
            hook()->exec('system:404');
        }
    }

    public function download(string $tableId, array $fields)
    {
        $data = $this->exportData($tableId, $fields);
        // 暂存文件
        $path = RUNTIME_DIR .'/'. $tableId .'.csv';
        storage()->put($path, $data);
        // 生成文件下载
        $this->file($path);
    }

    public function exportData(string $tableId, array $fields): string
    {
        $table = new \dxkite\statistical\table\StatisticTable;
        // 列出同一个表格
        $datas =  $table->listWhere(['table_id' => $tableId]);
        // 生成表头
        $csv = [];
        $csv[0] = [ 0 =>'学号', 1 => '姓名'];
        // 表头ID
        $header = [0,1];
        foreach ($fields as $id  => $value) {
            $csv[0][$id] = $value['name'];
            $header[] = $id;
        }
        // 生成数据
        foreach ($datas as $data) {
            $id = count($csv);
            $csv[$id][0]= $data['student_id'];
            $csv[$id][1]= $data['name'];
            foreach ($data['data'] as $index => $value) {
                $csv[$id][$index]=$value;
            }
        }
        $text = '';
        foreach ($csv as $data) {
            $row = [];
            foreach ($header as $id) {
                $row[] = $data[$id];
            }
            $text .= implode(',', $row) . "\r\n";
        }
        return $text;
    }
}