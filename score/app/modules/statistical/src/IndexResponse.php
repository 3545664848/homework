<?php
namespace dxkite\statistical\response;

use suda\core\Request;

class IndexResponse extends \suda\core\Response
{
    public function onRequest(Request $request)
    {
        $view = $this->page('index');
        // 加载 resource/config/statistic.json 文件

        $tables = app()->getModuleConfig(app()->getFileModule(__FILE__),'statistic');
        $list = [];
        // 解析拼凑成可以显示的结构
        foreach ($tables as $id => $attr) {
            $list[$id]['id'] = $id;
            $list[$id]['name']= $attr['name'];
        }
        // 压入到HTML view中显示
        $view->set('list',$list);
        $view->render();
    }
}