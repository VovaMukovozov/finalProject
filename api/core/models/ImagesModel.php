<?php

require_once dirname(__FILE__) . '/Model.php';

 class ImagesModel extends Model{
    
     /**
     * parent construct
     * @return void
     */
     public function __construct() {
        parent::__construct();
    }
        /**
         *  adding images
         * @param type $data
         * @return boolean
         * 
         */
    public function addImages($data){
        
        $succ = $this->_db->query("INSERT INTO images (image_path, image_title ) "
                . "VALUES (".$data['image_path'].",'".$data['image_title']."')"); 
        if($succ){
            $id_image = $this->_db->query("SELECT LAST_INSERT_ID() FROM images");
            $image=$this->addImageToAlbumToAlbum($id_image, $data['album_id']);
        }
      return $image;
    }
    
        /**
         * 
         * @param type $image_id
         * @param type $album_id
         * @return boolean $succ
         */
    public function addImageToAlbum($image_id, $album_id){
        
         $succ= $this->_db->query("INSERT INTO images_to_albums(image_id, album_id) "
               . "VALUES (".$image_id.",".$album_id.")");
       return $succ; 
    }
       /**
         *  getting images list
         * @param type $id
         * @return $images
         * 
         */
    public function getImages($id){
      if($id){
           $results = $this->_db->query("SELECT * FROM images WHERE image_id = $id ");   
          }
          else{
           $results = $this->_db->query("SELECT * FROM images "); 
          }
           if ($results) {
            $images = [];
            while ($row = $results->fetch_assoc()){
                $images[] = $row;
            }
            return $images;
        }
          
     return NULL;
       
    }
        /**
         * editing images 
         * @param type $data $id
         * @return boolean
         * 
         */
    public function editImages($data,$id){
        
        if($data['image_path'] && $data['image_title']){
            
            $succ = $this->_db->query("UPDATE images SET image_title = '".$data['image_title']."'"
                    . ",image_path = '".$data['image_path']."' WHERE image_id = $id");
            return $succ;
        }
        
        if(empty($data['image_path']) || !empty($data['image_title'])){
            
            $succ = $this->_db->query("UPDATE images SET image_title = '".$data['image_title']."' WHERE image_id = $id ");
            return $succ; 
        }
        
        if(!empty($data['image_path']) || empty($data['image_title'])){
            
            $succ = $this->_db->query("UPDATE images SET image_path = '".$data['image_path']."' WHERE image_id =  $id ");
            return $succ; 
        }
    }
        /**
         * deleting image
         * @param type $id
         * @return boolean
         * 
         */
    public function deleteImages($id=false){
        if($id){
           $succ = $this->_db->query(" DELETE FROM images WHERE image_id = $id ");   
          }
          else{
           $succ = $this->_db->query(" DELETE FROM images "); 
          }
        return $succ;
    }
    
        /**
         * getting images by title
         * @param type $title
         * @return $result
         * 
         */
    public function getImagesByTitle($title){
        
        if(!empty($title)){
            $results= $this->_db->query("SELECT * FROM genres WHERE genre_name LIKE%'$title'%");    
        }
        
        if ($results) {
        $images = [];
            while ($row = $results->fetch_assoc()) {
                $images[] = $row;
            }
            return $images;
        }
        return NULL;
        
    }
    
     public function getAlbum($image_id){
        
        $result= $this->_db->query("SELECT  images_to_albums.album_id "
                . "FROM images_to_albums INNER JOIN images ON song_id = $image_id ");
        
        if ($result) {
        $albums = [];
            while ($row = $result->fetch_assoc()) {
                $albums[] = $row;
            }
            return $albums;
        }
        return NULL;
    }
}
