<?php
require 'Slim/Slim.php';
require_once '../Controllers/AlbumRESTController.php';
\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();


$album = new AlbumRESTController();
// GET route
$app->get('/', function () {
      echo json_encode( array( "error" => 1, "msg" => "No method selected" ) );
    }
);

$app->get('/categories', function(){
    echo json_encode( array( "error" => 1, "msg" => "yes" ) );
});

$app->get('/album', function() use ( $album ) {
    $albums = $album->getAllAlbums();
    echo ($albums);
});
// POST route
$app->post(
    '/post',
    function () {
        echo 'This is a POST route';
    }
);

// PUT route
$app->put(
    '/put',
    function () {
        echo 'This is a PUT route';
    }
);

// PATCH route
$app->patch('/patch', function () {
    echo 'This is a PATCH route';
});

// DELETE route
$app->delete(
    '/delete',
    function () {
        echo 'This is a DELETE route';
    }
);

/**
 * Step 4: Run the Slim application
 *
 * This method should be called last. This executes the Slim application
 * and returns the HTTP response to the HTTP client.
 */
$app->run();
