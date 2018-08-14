<?php
namespace cn\atd3\response;

use suda\core\Request;

class uploadResponse extends \suda\core\Response
{
    public function onRequest(Request $request)
    {
        debug()->info('日志信息');
        $view = $this->page('upload-file'); // 创建一个页面并使用uploada-file.tpl.html 作为模板
        $view->set('ip',$request->ip()); // 获取IP并压入模板
        $view->set('time',date('Y-m-d H:i:s',time())); // 压入时间
        if ($request->hasPost()) {
            $file = $request->files('my_file_name');
            $text = $request->post('my_text');
            $view->set('file',$file);
            $view->set('text',$text);
        }
        if ($file['error'] == 0) {
            // 判断是否为上传文件
            if (is_uploaded_file($file['tmp_name'])) {
                // 从临时文件移动到 DATA_DIR 目录下
                move_uploaded_file($file['tmp_name'],DATA_DIR.'/'.$file['name']);
            }
        }else{
            $view->set('text',__('上传文件错误'));
        }
        $view->render();// 渲染模板显示出来
        echo "</br>".u();
    }
}

