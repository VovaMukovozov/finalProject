<?php

// namespace core\Controller;

require_once '../../core/models/AlbumModel.php';
require_once '../../core/controllers/Controller.php';

class AlbumController extends Controller {

    public $model; // model 

    /**
     *  conect to model
     */

    public function __construct() {
        $this->model = new AlbumModel();
    }

    /**
     * get albums by multi-parametrs query
     * 
     * @return array $albums 
     *   
     */
    public function getAllAlbums() {
        try {
            $albums = $this->model->getAllAlbums();
            if ($albums !== NULL) {
                return array("albums" => $albums);
            } else
                throw new Exception();
        } catch (Exception $e) {
            return false;
        }
    }

    public function deleteAlbum($id) {
        $delete = $this->model->deleteAlbum($id);

        if ($delete)
            return array("success" => true);

        return array("error" => 1, "msg" => "Failed to delete");
    }

    public function insertNewAlbum($details) {
        // Some validation about the input
        // If validation... continue. else! return false;

        $insert = $this->model->insertNewAlbum($details);
        return $insert;
    }

}
