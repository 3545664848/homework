<?php if (!class_exists("Template_1b25fd7627fd427cb73e34f4d7674fbf", false)) { class Template_1b25fd7627fd427cb73e34f4d7674fbf extends suda\template\compiler\suda\Template { protected $name="demo/app:1.0.0-dev:database";protected $module="demo/app:1.0.0-dev"; protected $source="E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/database.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>数据库基本操作</title>
</head>
<body>
    <p> <?php echo htmlspecialchars(__($this->get("ip"))); ?> - <?php echo htmlspecialchars(__($this->get("time"))); ?></p>

    <div>
        <h2>添加用户</h2>
        <form action="<?php echo $this->url(); ?>" method="POST">
            <div>
                <input type="text" name="name">
            </div>
            <div>
                <input type="text" name="password">
            </div>

            <input type="submit" name="op" value="添加用户">
            <input type="submit" name="op" value="删除用户">
            <input type="submit" name="op" value="更新用户">


            <div>
                <h4>通过指定id操作</h4>
                <input type="text" name="id">
            </div>

            <input type="submit" name="op_id" value="删除用户">
            <input type="submit" name="op_id" value="更新用户">
            
        </form>
    </div>

    <div>
        
        <form action="<?php echo $this->url(); ?>" method="POST">

            
        </form>
    </div>

    <div>
        <h3>用户列表</h3>
        <!-- 与PHP If 一致 -->
        <?php if(is_array($this->get("user"))): ?>
            <?php foreach( $this->get("user")as $user): ?>
            <li><?php echo htmlspecialchars(__($user['id'])); ?> - <?php echo htmlspecialchars(__($user['name'])); ?> - <?php echo htmlspecialchars(__($user['password'])); ?> </li>
            <?php endforeach; ?>
        <?php else: ?>
            <div>空用户</div>
        <?php endif; ?>
    </div>
    
</body>
</html><?php }} } return ["class"=>"Template_1b25fd7627fd427cb73e34f4d7674fbf","name"=>"demo/app:1.0.0-dev:database","source"=>"E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/database.tpl.html","module"=>"demo/app:1.0.0-dev"]; 