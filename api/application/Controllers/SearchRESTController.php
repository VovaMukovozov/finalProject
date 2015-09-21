<?php

/**
 * SearchRESTController
 *
 * @author vadim
 */
require_once 'SearchController.php';

class SearchRESTController extends SearchController {
    
    //generate json api
    protected function buildAnswer($success, $message, $data = null) {
        return json_encode([
        "success" => $success,
        "message" => $message,
        "data" => $data
        ]);
    }
        /**
         * getting songs list in json format
         * @param array $input
         * @return json 
         */
   public function searchAlbum($input){
        $albums = parent::searchAlbum(json_decode($input,true));
        if($albums){
           return $this->buildAnswer(true, 'Ok', $albums);
        }else{
           return $this->buildAnswer(false, 'Cannot fetch albums at this time');
        }
        
   }
}
