<?php

require_once dirname(__FILE__) . '/Model.php';

class GenresModel extends Model {
    
    /**
     * parent construct
     * @return void
     */
    public function __construct() {
        parent::__construct();
    }
        /**
         *  adding new genre 
         * @param type $data
         * @return boolean $genre
         * 
         */
    public function addGenre($data){
        
         $succ = $this->_db->query("INSERT INTO genres (genre_perent_id, genre_name ) VALUES (".$data['genere_peret_id'].",'".$data['genere_name']."')"); 
         if($succ){
            $id_genre = $this->_db->query("SELECT LAST_INSERT_ID() FROM genres");
            $genre=$this->addGenreToAlbum($id_genre, $data['album_id']);
        }
        return $genre;
    }
            /**
             *  adding new ganre to album
             * @param int $genre_id
             * @param int $album_id
             * @return $succ
             * 
             */
    public function addGanreToAlbum($genre_id,$album_id){
        
         $succ= $this->_db->query("INSERT INTO genres_to_albums(genre_id, album_id) "
               . "VALUES (".$genre_id.",".$album_id.")");
       return $succ;  
    }
        /**
         *  getting genres 
         * @param type $id
         * @return $result
         * 
         */
    public function getGenres($id=false){
     
          if($id){
           $results = $this->_db->query("SELECT * FROM genres WHERE genre_id = $id ");   
          }
          else{
           $results = $this->_db->query("SELECT * FROM genres "); 
          }
           if ($results) {
            $generes = [];
            while ($row = $results->fetch_assoc()) {
                $generes[] = $row;
            }
            return $generes;
        }
          
     return NULL;
        
    }
        /**
         * search genres by genre-title
         * @param type $name
         * @return $result
         * 
         */
    public function getGenresByName($name){
        
        if(!empty($name)){
            $results= $this->_db->query("SELECT * FROM genres WHERE genre_name LIKE %'$name'% ");    
        }
        
        if ($results) {
        $generes = [];
            while ($row = $results->fetch_assoc()) {
                $generes[] = $row;
            }
            return $generes;
        }
        return NULL;
    }
        /**
         * editing genres 
         * @param type $data $id
         * @return boolean
         * 
         */
    public function editGenres($data,$id){
        
        if($data['genre_parent_id'] && $data['genre_name']){
            
            $succ = $this->_db->query("UPDATE generes SET genere_name = '".$data['genere_name']."'"
                    . ",genere_parent_id = ".$data['genere_parent_id']." WHERE genere_id = '$id'");
            return $succ;
        }
        
        if(empty($data['genre_parent_id']) || !empty($data['genre_name'])){
            
            $succ = $this->_db->query("UPDATE generes SET genere_name = '".$data['genere_name']." WHERE genere_id = '$id'");
            return $succ; 
        }
        
        if(!empty($data['genre_parent_id']) || empty($data['genre_name'])){
            
            $succ = $this->_db->query("UPDATE generes SET genere_parent_id = ".$data['genere_parent_id']." WHERE genere_id = '$id'");
            return $succ; 
        }
        
    }
    
    public function getAlbums($genre_id){
        
         $result= $this->_db->query("SELECT  genres_to_albums.album_id "
                . "FROM genres_to_albums INNER JOIN genres ON genre_id = $genre_id ");
        
        if ($result) {
            $albums = [];
            while ($row = $result->fetch_assoc()) {
                $albums[] = $row;
            }
            return $albums;
        }
        return NULL;
    }
    
        /**
         * deleting genres 
         * @param type $id
         * @return boolean
         * 
         */
    
    public function deleteGenres($id=false){
        
        if($id){
           $succ = $this->_db->query(" DELETE FROM genres WHERE genres_id = $id ");   
          }
          else{
           $succ = $this->_db->query(" DELETE FROM genres "); 
          }
        return $succ;
    }
    
}
