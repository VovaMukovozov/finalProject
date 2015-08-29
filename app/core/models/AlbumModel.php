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

    public function deleteAlbum($id) {
        $success = $this->_db->query("DELETE FROM albums WHERE album_id = ?", $id);

        return $success;
    }

}
