<?php
namespace cn\atd3\response;

use suda\core\Request;

class ActionPageResponse_song extends \suda\core\Response
{
    public function onRequest(Request $request)
    {
        $view = $this->page('action-page-song'); // 创建一个页面并使用 action-page.tpl.html 作为模板
        $view->set('ip',$request->ip()); // 获取IP并压入模板
        $view->set('time',date('Y-m-d H:i:s',time())); // 压入时间
        debug()->info('日志信息');
        echo "song";
        $view->render();  // 渲染模板显示出来
        echo "</br>".u();
    }
}

