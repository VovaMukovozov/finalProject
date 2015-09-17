<?php

require_once '../../core/models/AlbumModel.php';
require_once '../../core/controllers/Controller.php';

class SearchController extends Controller {

    public $model; //model

    /**
     * class constructor 
     */
    public function __construct() {
        $this->model = new AlbumModel();
    }
    /**
     * searching albums in store
     * @param array $input
     * @return array
     * @throws Exception $e
     */
    public function searchAlbum($input) {
        try {
            $albums = $this->model->getAlbumsForSearch($input['search']);
            if ($albums !== NULL) {
                return ["albums" => $albums];
            } else {
                throw new Exception();
            }
        } catch (Exception $e) {
            return[false];
        }
    }

}
