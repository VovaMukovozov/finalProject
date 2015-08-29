<?php

require_once dirname(__FILE__) . '/app/core/models/UserModel.php';
require_once dirname(__FILE__) . '/app/core/models/AlbumModel.php';
//$user = new UserModel();
//
//$kostikUser = [
//    'email' => 'kostik@gmail.com',
//    'pass' => '12345',
//    'first_name' => 'kostik',
//    'last_name' => 'sofrigin',
//];
//$vovaUser = [
//    'email' => 'vova@gmail.com',
//    'pass' => '12345',
//    'first_name' => 'vova',
//    'last_name' => 'mukovozov',
//];
//$success = $user->updateUser(4, $vovaUser);
//
//var_dump($success);

$albim = new AlbumModel();

$newAlbum = [
    'album_name' => 'Cool name',
    'album_artist' => 'Best Artist',
    'album_duration' => '120',
    'album_release_year' => '2005',
    'album_description' => 'How to write about your album',
    'album_long_description' => 'Your album description is essentially a sales pitch, but that doesn’t mean it needs to read that way. It’s important to avoid tired phrases that mean nothing, and use specific language that really gets at the heart of what your album is about. After all, if you want people to click that “buy” button (that resides right next to your album description) you’ve got to provide some good reasons for people to do just that. But what seals the deal? What can you say that might take that teetering customer over the edge and into purchase territory',
    'album_created' => time(),
    'album_price' => 123
];
//$success = $albim->createAlbum($newAlbum);
$success = $albim->getAllAlbums(2);
var_dump($success);
