<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SongController
 *
 * @author vadim
 */
require_once '../../core/models/SongsModel.php';
require_once '../../core/controllers/Controller.php';
class SongController extends Controller{
    
    public $model; // model 

    /**
     *  conect to model
     */

    public function __construct() {
        $this->model = new SongsModel();
    }
    
    /**
     * getting songs list
     * @param array $input
     * @return array $songs
     */
    public function getSong($input){
        
        try{
            $songs= $this->model->getSongs($input['album_id']);
            
            if($songs!==NULL){
                 return ["songs" => $songs];
            }  else{ 
                 throw new Exception();
            }
        }  catch (Exception $e){
                  return [false];
        }     
    }

   

   
}
