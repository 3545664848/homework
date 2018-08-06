<?php
namespace cn\atd3\table;
class UserTable extends \suda\archive\Table {
    public function  __construct(){
        // 数据表名
        parent::__construct('user');
    }
    protected function onBuildCreator($table){
        $table->fields(
            // 键名id，类型，长度省略 添加主键(primary)，自动增长(auto) 
            $table->field('id','bigint')->primary()->auto(),
            $table->field('name','varchar',30),
            $table->field('password','varchar', 255)
        );
        return $table;
    }
}