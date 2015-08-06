<?php
// namespace core\Model;

require_once dirname( __FILE__ ) . '/Model.php';

class AlbumModel extends Model {

	public function __construct() {
		parent::__construct();
	}

	public function getAllAlbums() {
		$results = $this->_db->query( "SELECT * FROM albums" );
		
		if ( $results ) {
			$albums = [];
			while ( $row = $results->fetch_assoc() ){
				$albums[] = $row;
                        }
			return $albums;
		}
		
		return NULL;
	}
	
	public function deleteAlbum( $id ) {
		$success = $this->_db->query( "DELETE FROM albums WHERE album_id = ?", $id );

		return $success;
	}
	
	public function insertNewAlbum( $details ) {
		$success = $this->_db->query( "INSERT INTO albums (album_title, album_length, album_numsongs, album_gener, album_cover_photo) VALUES ('?','?','?','?','?')", $details['album_title'], $details['album_length'], $details['album_numsongs'], $details['album_gener'], $details['album_cover_photo'] );
		
		if ( $success ){
			return $this->_db->insert_id;
                }
		return false;
	}
}