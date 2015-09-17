<?php


require_once 'GenreController.php';

class GenreRESTController extends GenreController {

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
     * get all genre
     * 
     * @return json 
     *   
     */
    public function getAllGenres() {
        $genres = parent::getAllGenres();
        if ($genres) {
            return $this->buildAnswer(true, 'Ok', $genres);
        } else {
            return $this->buildAnswer(false, 'Ops!! Cannot fetch genres at this time');
        }
    }
/**
     * delete genre
     * @param ineger $id
     * @return json 
     *   
     */
    public function deleteGenre($id) {
        
    }
    /**
     * create new genre
     * @param array $details 
     * @return json
     *   
     */
    public function insertNewGenre($details) {
        $insert_id = parent::insertNewGenre($details);

        if ($insert_id){
            return $this->buildAnswer(true, "Genre creted");
        }

        return $this->buildAnswer(false, 'Ops!! Genre not creted');
    }

}
