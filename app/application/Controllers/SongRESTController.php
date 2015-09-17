<?php

require_once 'SongController.php';
/**
 * Description of SongRESTController
 *
 * @author vadim
 */
class SongRESTController extends SongController{
    
    //generat json api
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
   public function getSong($input){
        $songs = parent::getSong(json_decode($input,true));
        
        if($songs){
            $this->buildAnswer(true, 'Ok',array($songs));
        }else{
            $this->buildAnswer(false, 'Cannot fetch songs at this time');
        }
   }

   
}
