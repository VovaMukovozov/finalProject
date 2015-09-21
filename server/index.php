<?php
require_once dirname(__FILE__) .'/app/application/api/Slim/Slim.php';
\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();

$app->contentType('application/json');


$app->get('/', function(){
	echo json_encode( array( "error" => 1, "msg" => "No method selected" ) );
});


$app->run();