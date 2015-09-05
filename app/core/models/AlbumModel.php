<?php

// namespace core\Model;

require_once dirname(__FILE__) . '/Model.php';

class AlbumModel extends Model {

    /**
     * parent construct
     * @return void
     */
    public function __construct() {
        parent::__construct();
    }

    /**
     * create new album
     * @param array $data
     * @return $success
     */
    public function createAlbum($data) {
        $success = $this->_db->query("INSERT INTO albums (album_name, album_artist, album_duration, album_release_year, album_description, album_long_description, album_created, album_price) VALUES ('" . $data['album_name'] . "','" . $data['album_artist'] . "','" . $data['album_duration'] . "','" . $data['album_release_year'] . "','" . $data['album_description'] . "','" . $data['album_long_description'] . "'," . $data['album_created'] . "," . $data['album_price'] . ")");
        return $success;
    }
    
    /**
     * get  album/s
     * @param int $id default false
     * @return $success
     */
    public function getAllAlbums($id = false) {
        if($id){
            $results = $this->_db->query("SELECT * FROM albums WHERE album_id = $id ");
        }
        else{
            $results = $this->_db->query("SELECT * FROM albums");
        }
        if ($results) {
            $albums = [];
            while ($row = $results->fetch_assoc()) {
                $albums[] = $row;
            }
            return $albums;
        }

        return NULL;
    }
    /**
     * delete  album/s
     * @param int $id
     * @return $success
     */
    public function deleteAlbum($id) {
        $success = $this->_db->query("DELETE FROM albums WHERE album_id = $id" );
        return $success;
    }

    /**
     *  delete all 
     * @return $success
     */
    
    public function deleteAll(){
        $success= $this->_db->query("DELETE FROM albums");
        return $success;
    }
    
    /**
     *  get albums by artist name
     *  @param  $artist
     *  @return  $success
     * 
     */
    public function getAlbumsByArtist($artist){
        $success= $this->_db->query("SELECT * FROM albums WHERE album_artist = ' $artist ' " );
        
        if ($success) {
            $albums = [];
            while ($row = $success->fetch_assoc()) {
                $albums[] = $row;
            }
            return $albums;
        }

        return NULL;
    }
    
     /**
     *  get albums by short description
     *  @param  $description
     *  @return  $success
     * 
     */
    
    public function getAlbumsByTitle($description){
        $success= $this->_db->query("SELECT * FROM albums WHERE album_description LIKE%'$description'%" );
          
        if ($success) {
            $albums = [];
            while ($row = $success->fetch_assoc()) {
                $albums[] = $row;
            }
            return $albums;
        }

        return NULL;
        
    }
    
     /**
     *  get albums by year
     *  @param  $year
     *  @return  $success
     * 
     */
    
    public function getAlbumsByRelease($year){
        $success= $this->_db->query("SELECT * FROM albums WHERE album_releas_year =  $year " );
        
        if ($success) {
            $albums = [];
            while ($row = $success->fetch_assoc()) {
                $albums[] = $row;
            }
            return $albums;
        }

        return NULL;
    }

     /**
     *  get albums by description
     *  @param  $longdescription
     *  @return  $success
     * 
     */
    
    public function getAlbumsByDescription($longdescription){
        $success= $this->_db->query("SELECT * FROM albums WHERE album_long_description LIKE %'$longdescription'% " );
        
        if ($success) {
            $albums = [];
            while ($row = $success->fetch_assoc()) {
                $albums[] = $row;
            }
            return $albums;
        }

        return NULL;
    }
    
   /**
    * get albums by multi-parametrs query
    * @params $artistname $description $year $longdescription 
    * @return $albums 
    *   
    */ 
    
    public function getAlbumsByAll($artistname = false, $description = false, $year =false, $longdescription=false){
       
        if(!empty($artistname) && !empty($description) &&!empty($year) &&!empty($longdescription)){
            
            $results=$this->_db->query("SELECT * FROM albums WHERE album_artist ='$artistname'AND"
                    . "album_description LIKE%'$description'%"
                    . "AND album_release_year = $year
                       AND album_long_description LIKE %'$longdescription'%");
        }
        if(empty($artistname) ||empty($description)||empty($year) ||empty($longdescription)){
          //  $results=$this->_db->query();
        }
        
        if ($results) {
                $albums = [];
                while ($row = $results->fetch_assoc()) {
                    $albums[] = $row;
                }
                return $albums;
            }

                return NULL;
    
        }
    
 }
