<?php

// namespace core\Controller;

require_once '../../core/models/AlbumModel.php';
require_once 'AlbumController.php';

class AlbumRESTController extends AlbumController {

    public $model;
    //generat json api
    protected function buildAnswer($success, $message, $data = null) {
        return json_encode([
        "success" => $success,
        "message" => $message,
        "data" => $data
        ]);
    }
    /**
     * get all albums
     * 
     * @return json 
     *   
     */
    public function getAllAlbums() {
        $albums = parent::getAllAlbums();
        if ($albums) {
            return $this->buildAnswer(true, 'Ok', array($albums));
        } else {
            return $this->buildAnswer(false, 'Cannot fetch albums at this time');
        }
    }
/**
     * delete albums
     * @param ineger $id
     * @return json 
     *   
     */
    public function deleteAlbum($id) {
        
    }
    /**
     * create new albums
     * @param array $details 
     * @return json
     *   
     */
    public function insertNewAlbum($details) {
        $insert_id = parent::insertNewAlbum($details);

        if ($insert_id){
            return $this->buildAnswer(0, 200, array("success" => 1, "insert_id" => $insert_id));
        }

        return $this->buildAnswer(1, 400, array("success" => 1, "insert_id" => $insert_id));
    }

}
