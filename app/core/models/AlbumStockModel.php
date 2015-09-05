<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AlbumStock
 *
 * @author vadim
 */
require_once dirname(__FILE__) . '/Model.php';
class AlbumStockModel  extends Model{
    
    /**
     * parent construct
     * @return void
     */
    public function __construct() {
        parent::__construct();
    }
    
    /**
     * adding albums to stock
     * @param type $data
     * @return  boolean
     */
   public function addToStock($data){
    
       $success = $this->_db->query("INSERT INTO albums_stock (album_id, album_stock) VALUES (" .$data['album_id']. "," .$data['album_stock']. ")"); 
        return $success;
   }
    /**
     * counting current quantity 
     * @param type $id
     * @return type $count
     */ 
   public function getSummary($id=false){
         
          if($id){
           $count = $this->_db->query("SELECT SUM(album_stock) FROM albums_stock WHERE album_id = $id ");   
          }
          else{
           $count = $this->_db->query("SELECT SUM(album_stock) FROM albums_stock "); 
          }
         
          return $count; 
     }
     
     /**
      * deleting from stock 
      * @param type $id
      * @return boolean
      */
 
   public function deleteFromStock($id=false){
          if($id){
           $succ = $this->_db->query("DELETE FROM albums_stock WHERE album_id = $id ");   
          }
          else{
           $succ = $this->_db->query("DELETE FROM albums_stock "); 
          }
         return true;
     }
     
   }
