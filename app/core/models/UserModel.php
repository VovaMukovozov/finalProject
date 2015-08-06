<?php
// namespace core\Model;
//zaparka
require_once dirname( __FILE__ ) . '/Model.php';

class AlbumModel extends Model {

	public function __construct() {
		parent::__construct();
	}

	public function getUser($id) {
		$results = $this->_db->query( "SELECT * FROM users WHERE user_id = ?",$id );
		
		if ( $results ) {
			$user = [];
			while ( $row = $results->fetch_assoc() ){
				$user[] = $row;
                        }
			return $user;
		}
		
		return NULL;
	}
	
	public function deleteUser( $id ) {
		$success = $this->_db->query( "DELETE FROM users WHERE user_id = ?",$id );

		return $success;
	}
	
	public function insertNewAlbum( $details ) {
		$success = $this->_db->query( "INSERT INTO users (user_firstname, user_lastname, user_email, user_password) VALUES ('?','?','?','?')",$details['firstname'], $details['lastname'], $details['email'], $details['password']);
		
		if ( $success ){
			return $this->_db->insert_id;
                }
		
		return false;
	}
}