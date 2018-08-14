<?php if (!class_exists("Template_900bb15ddea3590fa1699b2d660f3944", false)) { class Template_900bb15ddea3590fa1699b2d660f3944 extends suda\template\compiler\suda\Template { protected $name="demo/app:1.0.0-dev:upload-file";protected $module="demo/app:1.0.0-dev"; protected $source="E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/upload-file.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Action PAGE</title>
</head>
<body>
    <h2>文件上传页面</h2>
    <p> <?php echo htmlspecialchars(__($this->get("ip"))); ?> - <?php echo htmlspecialchars(__($this->get("time"))); ?></p>
    
<!-- 必须指定编码方式为 `multipart/form-data` -->
<form action="<?php echo $this->url(); ?>" method="post" enctype="multipart/form-data">
    <div>
        <!-- 指定文件类型 -->
        <input type="file" name="my_file_name">
    </div>
    <div>
        <!-- 上传的同时可以上传数据 -->
        <input type="text" name="my_text">
    </div>
    <div>
        <button type="submit">上传文件</button>
    </div>
</form>

<h3>上传的内容</h3>
<div>
    <h4>文件内容</h4>
    <?php foreach($this->get("file")as $key => $value): ?>
    <div><?php echo htmlspecialchars(__($key)); ?> => <?php echo htmlspecialchars(__($value)); ?></div>
    <?php endforeach; ?>
</div>
<div><?php echo htmlspecialchars(__($this->get("text"))); ?></div>

</body>
            
</html><?php }} } return ["class"=>"Template_900bb15ddea3590fa1699b2d660f3944","name"=>"demo/app:1.0.0-dev:upload-file","source"=>"E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/upload-file.tpl.html","module"=>"demo/app:1.0.0-dev"]; 