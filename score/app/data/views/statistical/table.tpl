<?php if (!class_exists("Template_1e16e73ddd7fdb32b1dd8f6f3c13866c", false)) { class Template_1e16e73ddd7fdb32b1dd8f6f3c13866c extends suda\template\compiler\suda\Template { protected $name="dxkite/statistical:1.0.0:table";protected $module="dxkite/statistical:1.0.0"; protected $source="E:\\website\\score\\app\\modules\\statistical\\resource\\template\\default/table.tpl.html";protected function _render_template() {  ?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo htmlspecialchars(__($this->get("name"))); ?> - 填写表单</title>
</head>

<body>
    <h3><?php echo htmlspecialchars(__($this->get("name"))); ?></h3>
    <form action="<?php echo $this->url(); ?>" method="post">
    <table>
        <tr>
            <th>姓名</th>
            <td>
                <input type="text" name="name" />
            </td>
        </tr>
        <tr>
            <th>学号</th>
            <td>
                <input type="text" name="number" />
            </td>
        </tr>
        <?php foreach($this->get("fields")as $id => $field): ?> 
        <tr>
            <th><?php echo htmlspecialchars(__($field['name'])); ?></th>
            <td>
                <?php if($field['type'] == 'text'): ?>
                    <textarea name="data[<?php echo htmlspecialchars(__($id)); ?>]" cols="30" rows="10" required></textarea>
                <?php elseif ($field['type'] == 'number'): ?>
                    <input type="number" name="data[<?php echo htmlspecialchars(__($id)); ?>]" required> 
                <?php else: ?>
                    <input type="text" name="data[<?php echo htmlspecialchars(__($id)); ?>]" required> 
                <?php endif; ?>
            </td>
         <?php endforeach; ?>
        </tr>
        
    </table>
    <button>提交</button>
</form>
</body>

</html><?php }} } return ["class"=>"Template_1e16e73ddd7fdb32b1dd8f6f3c13866c","name"=>"dxkite/statistical:1.0.0:table","source"=>"E:\\website\\score\\app\\modules\\statistical\\resource\\template\\default/table.tpl.html","module"=>"dxkite/statistical:1.0.0"]; 