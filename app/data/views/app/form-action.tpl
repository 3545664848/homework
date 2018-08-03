<?php if (!class_exists("Template_72eea035ae064c569f6031af96116f6c", false)) { class Template_72eea035ae064c569f6031af96116f6c extends suda\template\compiler\suda\Template { protected $name="demo/app:1.0.0-dev:form-action";protected $module="demo/app:1.0.0-dev"; protected $source="E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/form-action.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Action PAGE</title>
</head>

<body>
    <!-- 
    | Form 表单 
    | action 表示提交数据到哪个页面
    | method 表示提交方式（GET，POST 两种） 
    -->
    <form action="<?php echo $this->url(); ?>" method="GET">
        <div>
            <input type="text" name="text_value">
        </div>
        <div>
            <input type="number" name="int_value">
        </div>
        <button>提交数据</button>

        <div>
            <h3>提交的数据</h3>
            <div> <?php echo htmlspecialchars(__($this->get("text"))); ?> </div>
            <div> <?php echo htmlspecialchars(__($this->get("int"))); ?> </div>
        </div>


        <p>账号 nqzva</p>
        <p>密码 ebbg</p>
        <p>Please log in rot13</p>
        <div>
            <input type="text" name="id_value">
        </div>
        <div>
            <input type="password" name="password_value">
        </div>
        <button>登录</button>
    </form>
    
    
    <p> <?php echo htmlspecialchars(__($this->get("ip"))); ?> - <?php echo htmlspecialchars(__($this->get("time"))); ?></p>
    <a href="http://localhost/dev.php/hello">place visit hello</a>
    <p></p>
    <a href="http://ctf.ssleye.com/rot13.html">decode</a>
</body>

</html><?php }} } return ["class"=>"Template_72eea035ae064c569f6031af96116f6c","name"=>"demo/app:1.0.0-dev:form-action","source"=>"E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/form-action.tpl.html","module"=>"demo/app:1.0.0-dev"]; 