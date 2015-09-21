<?php


/**
 * Description of Songs
 *
 * @author vadim
 */
require_once dirname(__FILE__) . '/Model.php';


    class SongsModel extends Model{
        
    /**
     * parent construct
     * @return void
     */
    public function __construct() {
        parent::__construct();
    }
    
        /**
         *  adding new song
         * @param type $data , $id_album
         * @return type boolean
         * 
         */
    public function addSong($data,$id_album){
        $succ = $this->_db->query("INSERT INTO songs (song_name, song_duration, song_path) VALUES ('" . $data['song_name'] . "','" . $data['album_artist'] . "','" . $data['song_duration'] . "','" . $data['song_path'] . "')");
        
        // updating albums
        if($succ){
            $id_song = $this->_db->query("SELECT LAST_INSERT_ID() FROM songs");
            $songToAlbums=$this->addSongToAlbum($id_song, $id_album);
        }
        return $songToAlbums;
    }   
        /**
         *  deleting songs from store
         * @param type $id
         * @return type boolean
         * 
         */
    public function delSongs($id){
            if($id){
           $succ = $this->_db->query(" DELETE FROM songs WHERE song_id = $id ");   
          }
          else{
           $succ = $this->_db->query(" DELETE FROM songs "); 
          }
        return $succ;
    }
        /**
         * 
         * @param type $album_id
         * @return $songs 
         * 
         */
    public function getSongs($album_id){
        if($album_id){
           $results = $this->_db->query("SELECT song_id , song_name , song_duration , song_path"
                   . " FROM songs WHERE song_id IN (SELECT song_id FROM songs_to_albums WHERE "
                   . "album_id = $album_id ) ");   
          }
          else{
           $results = $this->_db->query("SELECT * FROM songs "); 
          }
           if ($results) {
            $songs = [];
            while ($row = $results->fetch_assoc()){
                $songs[] = $row;
            }
            return $songs;
        }
          
     return NULL;
    }
          /**
           *  getting songs list by duration
           * @param type $duration
           * @return $songs
           * 
           */
    public function getSongsByDuration($duration){
        if(!empty($duration)){
            $results= $this->_db->query("SELECT * FROM songs WHERE song_name = ' $duration '");    
        }
        
        if ($results) {
        $songs = [];
            while ($row = $results->fetch_assoc()) {
                $songs[] = $row;
            }
            return $songs;
        }
        return NULL;
        
    }
            /**
             *  getting songs list by name
             * @param type $name
             * @return $songs
             * 
             */
    public function getSongsByName($name){
        if(!empty($name)){
            $results= $this->_db->query("SELECT * FROM songs WHERE song_name = ' $name '");    
        }
        
        if ($results) {
        $songs = [];
            while ($row = $results->fetch_assoc()) {
                $songs[] = $row;
            }
            return $songs;
        }
        return NULL;
    }
    
        /**
         *  getting songs from album
         * @param int $song_id
         * @return array $songs
         * 
         */
    public function getAlbum($song_id){
        
        $result= $this->_db->query("SELECT  songs_to_albums.album_id "
                . "FROM songs_to_albums INNER JOIN songs ON song_id = $song_id ");
        
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
      *  getting songs quantity
      * @return count 
      * 
      */
    public function totalSongs(){
        $count = $this->_db->query("SELECT COUNT(DISTINCT song_id) FROM songs");
        return $count;
    }
    
    
    /**
     *  adding song to albums
     *  @param int $id_song $id_album
     *  @return boolean
     * 
     */
    
   public function addSongToAlbum($id_song, $id_album){
       
       $succ= $this->_db->query("INSERT INTO songs_to_albums(song_id, album_id) "
               . "VALUES (".$id_song.",".$id_album.")");
       
       return $succ;  
   }
   
 
}
