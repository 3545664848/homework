<?php
namespace cn\atd3\response;

use suda\core\Request;

class FormActionResponse extends \suda\core\Response
{
    public function onRequest(Request $request)
    {
        $view = $this->page('form-action'); // 创建一个页面并使用 action-page.tpl.html 作为模板
        $view->set('ip',$request->ip()); // 获取IP并压入模板
        $view->set('time',date('Y-m-d H:i:s',time())); // 压入时间
        debug()->info('日志信息');
        echo "song";
        // 如果存在 Get 数据
        if ($request->hasGet()) {
            $view->set('method','GET');
            // 获取 GET 的 text_value 的值并设置到页面的text变量中
            $view->set('text',$request->get('text_value'));
            // 获取 GET 的 int_value 的值并设置到页面的int变量中
            $view->set('int',$request->get('int_value')); 
        }
        else if ($request->hasPost()) {
            $view->set('method','POST');
            // 获取 POST 的 text_value 的值并设置到页面的text变量中
            $view->set('text',$request->post('text_value'));
            // 获取 POST 的 int_value 的值并设置到页面的int变量中
            $view->set('int',$request->post('int_value')); 
        }

        if($request->get('id_value')=="admin" && $request->get('password_value')=="root"){
            header("http://localhost/dev.php/action-page-song");
        }

        $view->render();  // 渲染模板显示出来
        echo "</br>".u();
    }
}

