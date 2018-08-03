<?php if (!class_exists("Template_880066b50ff7cfd205f17cc6485e3568", false)) { class Template_880066b50ff7cfd205f17cc6485e3568 extends suda\template\compiler\suda\Template { protected $name="demo/app:1.0.0-dev:index";protected $module="demo/app:1.0.0-dev"; protected $source="E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/index.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html>

<head>
    <title><?php echo htmlspecialchars(__($this->get("title"))); ?></title>
    <?php $this->execGlobalHook("head"); ?>
</head>

<body>
    <div> <?php echo htmlspecialchars(__(__($this->get("helloworld")))); ?> <?php echo $this->url(); ?> </div>
 
    <table>
        <?php foreach($this->get("list")as $item ): ?>
        <tr>
            <th><?php echo htmlspecialchars(__($item['name'])); ?></th>
            <td><?php echo htmlspecialchars(__($item['value'])); ?></td>
        </tr>
        <?php endforeach; ?>
    </table>
    <?php $this->execGlobalHook("body"); ?>
</body>
<?php $this->execGlobalHook("script"); ?>

</html><?php }} } return ["class"=>"Template_880066b50ff7cfd205f17cc6485e3568","name"=>"demo/app:1.0.0-dev:index","source"=>"E:\\website\\suda-study\\app\\modules\\app\\resource\\template\\default/index.tpl.html","module"=>"demo/app:1.0.0-dev"]; 