<?php array (
  'dxkite/statistical:1.0.0:index' => 
  suda\core\route\Mapping::__set_state(array(
     'method' => 
    array (
    ),
     'url' => '/',
     'mapping' => '\\/',
     'callback' => 'dxkite\\statistical\\response\\IndexResponse->onRequest',
     'template' => NULL,
     'source' => NULL,
     'module' => 'dxkite/statistical:1.0.0',
     'name' => 'index',
     'role' => 1,
     'types' => NULL,
     'param' => NULL,
     'value' => NULL,
     'buffer' => true,
     'host' => NULL,
     'port' => NULL,
     'scheme' => NULL,
     'antiPrefix' => false,
     'hidden' => false,
     'dynamic' => false,
  )),
  'dxkite/statistical:1.0.0:table' => 
  suda\core\route\Mapping::__set_state(array(
     'method' => 
    array (
    ),
     'url' => '/{table_id:string}',
     'mapping' => '\\/([^\\/]+)',
     'callback' => 'dxkite\\statistical\\response\\TableResponse->onRequest',
     'template' => NULL,
     'source' => NULL,
     'module' => 'dxkite/statistical:1.0.0',
     'name' => 'table',
     'role' => 1,
     'types' => 
    array (
      'table_id' => 'string',
    ),
     'param' => NULL,
     'value' => NULL,
     'buffer' => true,
     'host' => NULL,
     'port' => NULL,
     'scheme' => NULL,
     'antiPrefix' => false,
     'hidden' => false,
     'dynamic' => false,
  )),
  'dxkite/statistical:1.0.0:download' => 
  suda\core\route\Mapping::__set_state(array(
     'method' => 
    array (
    ),
     'url' => '/{table_id:string}/download',
     'mapping' => '\\/([^\\/]+)\\/download',
     'callback' => 'dxkite\\statistical\\response\\DownloadResponse->onRequest',
     'template' => NULL,
     'source' => NULL,
     'module' => 'dxkite/statistical:1.0.0',
     'name' => 'download',
     'role' => 1,
     'types' => 
    array (
      'table_id' => 'string',
    ),
     'param' => NULL,
     'value' => NULL,
     'buffer' => true,
     'host' => NULL,
     'port' => NULL,
     'scheme' => NULL,
     'antiPrefix' => false,
     'hidden' => false,
     'dynamic' => false,
  )),
)