<?php if (!class_exists("Template_662f49084013b76bace7ef6a983e1d02", false)) { class Template_662f49084013b76bace7ef6a983e1d02 extends suda\template\compiler\suda\Template { protected $name="demo/app:1.0.0-dev:action-page";protected $module="demo/app:1.0.0-dev"; protected $source="E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/action-page.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Action PAGE</title>
</head>
<body>
    <h4>这是我的第一个动态页面</h4>
    <p> <?php echo htmlspecialchars(__($this->get("ip"))); ?> - <?php echo htmlspecialchars(__($this->get("time"))); ?></p>
</body>
</html><?php }} } return ["class"=>"Template_662f49084013b76bace7ef6a983e1d02","name"=>"demo/app:1.0.0-dev:action-page","source"=>"E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/action-page.tpl.html","module"=>"demo/app:1.0.0-dev"]; 