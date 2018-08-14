<?php if (!class_exists("Template_54f151dd6488e23c1224087109ef5807", false)) { class Template_54f151dd6488e23c1224087109ef5807 extends suda\template\compiler\suda\Template { protected $name="dxkite/statistical:1.0.0:download";protected $module="dxkite/statistical:1.0.0"; protected $source="E:\\website\\score\\app\\modules\\statistical\\resource\\template\\default/download.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Action PAGE</title>
</head>
<body>
    <form action="<?php echo $this->url(); ?>" method="GET">
        Password:<input type="password" name="password">
        <input type="submit" value="Submit">
    </form>
    <div>
        <div>下载密码: <?php echo htmlspecialchars(__($this->get("pwd"))); ?> </div>
        <div>你的输入的密码: <?php echo htmlspecialchars(__($this->get("ypwd"))); ?></div>
        <div>当前情况: <?php echo htmlspecialchars(__($this->get("response"))); ?> </div>
    </div>
</body>
</html><?php }} } return ["class"=>"Template_54f151dd6488e23c1224087109ef5807","name"=>"dxkite/statistical:1.0.0:download","source"=>"E:\\website\\score\\app\\modules\\statistical\\resource\\template\\default/download.tpl.html","module"=>"dxkite/statistical:1.0.0"]; 