<?php if (!class_exists("Template_4dfb390f1499c81e80a0568c4ad76799", false)) { class Template_4dfb390f1499c81e80a0568c4ad76799 extends suda\template\compiler\suda\Template { protected $name="demo/app:1.0.0-dev:action-page-song";protected $module="demo/app:1.0.0-dev"; protected $source="E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/action-page-song.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>song</title>
    <style>
        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }
        
        .dropdown {
            position: relative;
            display: inline-block;
        }
        
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }
        
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        
        .dropdown-content a:hover {background-color: #f1f1f1}
        
        .dropdown:hover .dropdown-content {
            display: block;
        }
        
        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }
        </style>
</head>
<style>
body
{
	background-color:#b0c4de;
}
</style>
<body>
    <h2>这是我的第一个动态页面布置</h2>
    <p class="serif"> 时间:  <?php echo htmlspecialchars(__($this->get("ip"))); ?> - <?php echo htmlspecialchars(__($this->get("time"))); ?></p>
    <h2>你想干嘛</h2>
    <p>千万别往下看</p>
    
    <div class="dropdown">
      <button class="dropbtn">别点我</button>
      <div class="dropdown-content">
        <a href="http://www.shiyanbar.com/ctf/practice">实验吧</a>
        <a href="http://www.w3school.com.cn/php/">PHP</a>
        <a href="http://library.atd3.cn/tag/Mission/">homework</a>
        <a>让你别点还不听</a>
      </div>
    </div>

</body>
</html><?php }} } return ["class"=>"Template_4dfb390f1499c81e80a0568c4ad76799","name"=>"demo/app:1.0.0-dev:action-page-song","source"=>"E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/action-page-song.tpl.html","module"=>"demo/app:1.0.0-dev"]; 