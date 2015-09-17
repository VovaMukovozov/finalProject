<?php

require 'Slim/Slim.php';
require_once '../Controllers/AlbumRESTController.php';
require_once '../Controllers/UserRESTController.php';
require_once '../Controllers/GenreRESTController.php';
require_once '../Controllers/SongRESTController.php';
require_once '../Controllers/SearchRESTController.php';
require_once '../Controllers/OrderRESTController.php';
\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();

$song = new SongRESTController();
$album = new AlbumRESTController();
$newUser = new UserRESTController();
$login = new UserRESTController();
$genre = new GenreRESTController();
$search = new SearchRESTController();

$order = new OrderRESTController();

// GET route
$app->get('/', function () {
    echo json_encode(array("error" => 1, "msg" => "No method selected"));
}
);

$app->get('/songs', function ()use ($app, $song) {
    $request = $app->request->getBody();
    $songs = $song->getSong($request);
    echo($songs);
});

$app->get('/categories', function() use($genre) {
    $genres = $genre->getAllGenres();
    echo ($genres);
});

$app->get('/album', function() use ( $album ) {
    $albums = $album->getAllAlbums();
    echo ($albums);
});
$app->get('/session', function() {
    if (isset($_SESSION['user_id'])) {
        echo $_SESSION['user_id'];
    } else {
        echo false;
    }
});

$app->get('/logout', function() {
    session_destroy();
    echo 'true';
});

// POST route
$app->post('/newUser', function() use($app, $newUser) {
    $request = $app->request->getBody();
    $user = $newUser->registerUser($request);
    echo($user);
}
);

$app->post('/login', function() use($app, $newUser) {
    $request = $app->request->getBody();
    $user = $newUser->loginUser($request);
    echo($user);
}
);

$app->post('/search', function()use($app, $search) {
    $request = $app->request->getBody();
    $album = $search->searchAlbum($request);
    echo($album);
});

$app->post('/order', function() use($app, $order) {
    $request = $app->request->getBody();
    $orders = $order->payment($request);
    echo($orders);
}
);

// PUT route
$app->put(
        '/put', function () {
    echo 'This is a PUT route';
}
);

// PATCH route
$app->patch('/patch', function () {
    echo 'This is a PATCH route';
});

// DELETE route
$app->delete(
        '/delete', function () {
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
