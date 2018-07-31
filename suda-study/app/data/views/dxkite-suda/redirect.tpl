<?php if (!class_exists("Template_1f8d3800a3dafea1a075e617f4708f04", false)) { class Template_1f8d3800a3dafea1a075e617f4708f04 extends suda\template\compiler\suda\Template { protected $name="dxkite/suda:1.0.6:redirect";protected $module="dxkite/suda:1.0.6"; protected $source="E:\\website\\suda-study\\suda\\system\\resource\\modules\\dxkite-suda\\resource\\template\\default/redirect.tpl.html";protected function _render_template() {  ?><?php $this->extend('bootstrap'); ?>
<?php $this->set('title', $this->get("title",'跳转中。。。')  ); ?>
<?php $this->set('lang','Zh-cn'); ?>
<?php $this->execHook('bs-head',function () { ?>
  <style>
    body {
      padding-top: 40px;
      padding-bottom: 40px;
      background-color: #eee;
    }
  </style>
<?php });?>
<?php $this->execHook('bs-content',function () { ?>
  <div class="container">

    <div class="jumbotron">
      <h1 class="display-3"> <?php echo htmlspecialchars(__($this->get("message",'跳转中。。。'))); ?> </h1>
      <p class="lead"> 页面跳转至 <a id="href" href="<?php echo htmlspecialchars(__($this->get("url"))); ?>"><?php echo htmlspecialchars(__($this->get("url"))); ?></a> 中。</p>
          <hr class="my-4">
      <p class="lead">
        <a class="btn btn-primary btn-lg" href="<?php echo htmlspecialchars(__($this->get("url"))); ?>" role="button">立即跳转 (<span id="time"><?php echo htmlspecialchars(__($this->get("time",1))); ?></span>)</a>
      </p>
    </div>
  </div>
<?php });?>
<?php $this->execHook('bs-footer',function () { ?>
<script type="text/javascript">
(function(){
href = document.getElementById('href').href;
var time_counter= document.getElementById('time');
var time = time_counter.innerText || 0;
var interval = setInterval(function(){
    if (time<=0){
        clearInterval(interval);
        time_counter.innerText='0';
        location.href = href;
    }
	else{
        time_counter.innerText=time-1;
        time--;
    }
}, 1000);
})();
</script>
<?php });?><?php }} } return ["class"=>"Template_1f8d3800a3dafea1a075e617f4708f04","name"=>"dxkite/suda:1.0.6:redirect","source"=>"E:\\website\\suda-study\\suda\\system\\resource\\modules\\dxkite-suda\\resource\\template\\default/redirect.tpl.html","module"=>"dxkite/suda:1.0.6"]; 