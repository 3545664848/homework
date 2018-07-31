<?php array (
  'demo/app:1.0.0-dev:index' => 
  suda\core\route\Mapping::__set_state(array(
     'method' => 
    array (
    ),
     'url' => '/',
     'mapping' => '\\/',
     'callback' => 'cn\\atd3\\response\\IndexResponse->onRequest',
     'template' => NULL,
     'source' => NULL,
     'module' => 'demo/app:1.0.0-dev',
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
  'demo/app:1.0.0-dev:hello' => 
  suda\core\route\Mapping::__set_state(array(
     'method' => 
    array (
    ),
     'url' => '/hello',
     'mapping' => '\\/hello',
     'callback' => 'suda\\core\\route\\Mapping::emptyResponse',
     'template' => 'hello',
     'source' => NULL,
     'module' => 'demo/app:1.0.0-dev',
     'name' => 'hello',
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
)