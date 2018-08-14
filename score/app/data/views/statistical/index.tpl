<?php if (!class_exists("Template_3254a0dc0ec52213939ab31f4c2b0759", false)) { class Template_3254a0dc0ec52213939ab31f4c2b0759 extends suda\template\compiler\suda\Template { protected $name="dxkite/statistical:1.0.0:index";protected $module="dxkite/statistical:1.0.0"; protected $source="E:\\website\\score\\app\\modules\\statistical\\resource\\template\\default/index.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo htmlspecialchars(__($this->get("name"))); ?> - 填写表单</title>
</head>

<body>
    <h3><?php echo htmlspecialchars(__($this->get("name"))); ?></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>学号</th>
            <th>操作</th>
        </tr>

        <tr>
            <td>
               table_id_1
           </td>

           <td>
               学生XXX统计表-1
           </td>

           <td>
               <a href="<?php echo $this->url('table', 'table_id_1' ); ?>">填写</a>
               <a href="<?php echo $this->url('download','table_id_1'); ?>">下载</a>
           </td>
       </tr>

        <tr>
             <td>
                table_id_2
            </td>

            <td>
                学生XXX统计表-2
            </td>

            <td>
                <a href="<?php echo $this->url('table', 'table_id_2' ); ?>">填写</a>
                <a href="<?php echo $this->url('download','table_id_2'); ?>">下载</a>
            </td>
        </tr>
        
    </table>
</body>

</html><?php }} } return ["class"=>"Template_3254a0dc0ec52213939ab31f4c2b0759","name"=>"dxkite/statistical:1.0.0:index","source"=>"E:\\website\\score\\app\\modules\\statistical\\resource\\template\\default/index.tpl.html","module"=>"dxkite/statistical:1.0.0"]; 