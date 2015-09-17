<?php

require_once '../../core/models/GenresModel.php';
require_once '../../core/controllers/Controller.php';

class GenreController extends Controller {

    public $model; // model 

    /**
     *  conect to model
     */

    public function __construct() {
        $this->model = new GenresModel();
    }

    /**
     * get all genres
     * @return array $genres 
     *   
     */
    public function getAllGenres() {
        try {
            $geners = $this->model->getGenres();
            if ($geners !== NULL) {
                return $geners;
            } else
                throw new Exception();
        } catch (Exception $e) {
            return false;
        }
    }

    /**
     * delete genre
     * @param integer $id
     * @return success true/false 
     *   
     */
    public function deleteGenres($id) {
        $delete = $this->model->deleteGenres($id);

        if ($delete){
            return true;
        }

        return false;
    }


}
