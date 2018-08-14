<?php
namespace cn\atd3\response;

use cn\atd3\table\UserTable;
use suda\core\Request;

class DBResponse extends \suda\core\Response
{
    public function onRequest(Request $request)
    {
        $view = $this->page('database'); 
        // 新建数据表对象
        $table = new UserTable;
        if ($request->hasPost()) {

            if ($request->Post('op')=="添加用户") {
                // 插入一条数据
                $table->insert([
                    'name' => $request->post('name'),
                    'password' => $request->post('password'),
                ]);
            }
            elseif($request->post('op')=="删除用户"){
                // 删除一条数据
                $table->delete([
                    'name' => $request->post('name'),
                    'password' => $request->post('password'),
                ]);
            }
            elseif($request->post('op')=="更新用户"){
                $table->update(
                    ['password' => $request->post('password')],
                    ['name' => $request->post('name')]
                );
            }



            if($request->post('op_id')=="删除用户"){
                // 通过指定id删除一条用户数据
                $table->deleteByPrimaryKey(
                    $request->post('id')
                );
            }
            elseif($request->post('op_id')=="更新用户"){
                //通过指定id更新用户数据
                $table->updateByPrimaryKey(
                    $request->post('id'),
                    ['name' => $request->post('name'),'password' => $request->post('password')]            
            );

            }



        }
        // 获取数据（ list 方法 可以获取全部数据）
        $view->set('user',$table->list());
        
        $view->set('ip',$request->ip()); // 获取IP并压入模板
        $view->set('time',date('Y-m-d H:i:s',time())); // 压入时间
        debug()->info('日志信息');
        $view->render();  
    }
    
}
