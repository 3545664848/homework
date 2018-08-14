<?php
namespace dxkite\statistical\table;
class StatisticTable extends \suda\archive\Table {

    public function  __construct(){
        // 数据表名
        parent::__construct('statistic');
    }

    protected function onBuildCreator($table){
        $table->fields(
            $table->field('id','bigint',20)->primary()->auto()->comment('自动增长ID'),
            $table->field('student_id','varchar',80)->key()->comment('学号'),
            $table->field('table_id','varchar',80)->key()->comment('姓名'),
            $table->field('name','varchar',80),
            $table->field('data','text')
        );
        return $table;
    }

    protected function _inputDataField($data){
        return serialize($data);
    }

    protected function _outputDataField($data){
        return unserialize($data);
    }
}