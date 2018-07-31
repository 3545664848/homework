<?php if (!class_exists("Template_878621de6346091a513ad0975725c688", false)) { class Template_878621de6346091a513ad0975725c688 extends suda\template\compiler\suda\Template { protected $name="dxkite/suda:1.0.6:bootstrap";protected $module="dxkite/suda:1.0.6"; protected $source="E:\\website\\suda-study\\suda\\system\\resource\\modules\\dxkite-suda\\resource\\template\\default/bootstrap.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html lang="<?php echo htmlspecialchars(__($this->get("lang",'en'))); ?>">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<?php echo suda\template\Manager::assetServer(suda\template\Manager::getStaticAssetPath($this->getModule())); ?>/bootstrap/css/bootstrap.min.css">
    <title><?php echo htmlspecialchars(__($this->get("title"))); ?></title>
    <?php $this->exec('bs-head'); ?>
</head>

<body>
    <?php $this->exec('bs-content'); ?>
    <script src="<?php echo suda\template\Manager::assetServer(suda\template\Manager::getStaticAssetPath($this->getModule())); ?>/jquery-3.2.0.min.js"></script>
    <script src="<?php echo suda\template\Manager::assetServer(suda\template\Manager::getStaticAssetPath($this->getModule())); ?>/tether/js/tether.min.js"></script>
    <script src="<?php echo suda\template\Manager::assetServer(suda\template\Manager::getStaticAssetPath($this->getModule())); ?>/bootstrap/js/bootstrap.min.js" ></script>
    <?php $this->exec('bs-footer'); ?>
</body>

</html><?php }} } return ["class"=>"Template_878621de6346091a513ad0975725c688","name"=>"dxkite/suda:1.0.6:bootstrap","source"=>"E:\\website\\suda-study\\suda\\system\\resource\\modules\\dxkite-suda\\resource\\template\\default/bootstrap.tpl.html","module"=>"dxkite/suda:1.0.6"]; 