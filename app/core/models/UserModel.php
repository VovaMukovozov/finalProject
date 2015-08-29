<?php

require_once dirname(__FILE__) . '/Model.php';

class UserModel extends Model {
     /**
     * parent construct
     * @return void
     */
    public function __construct() {
        parent::__construct();
    }
    /**
     * create new user
     * @param array $data
     * @return $success
     */
    public function createUser($data) {
        $success = $this->_db->query("INSERT INTO users (user_email, user_password, user_firstname, user_lastname) VALUES ('".$data['email']."','".$data['pass']."','".$data['first_name']."','".$data['last_name']."')"); 
        return $success;
    }
    /**
     * get  user
     * @param int $id
     * @return $user
     */
    public function getUser($id) {
        $results = $this->_db->query("SELECT * FROM users WHERE user_id = $id");
        if ($results) {
            $user = [];
            while ($row = $results->fetch_assoc()) {
                $user[] = $row;
            }
            return $user;
        }
        return NULL;
    }
    
    /**
     * update  user
     * @param int $id, array $data
     * @return $success
     */
    public function updateUser($id, $data) {
        $success = $this->_db->query("UPDATE users SET user_email = '".$data['email']."', user_password = '".$data['pass']."', user_firstname = '".$data['first_name']."', user_lastname = '".$data['last_name']."' WHERE user_id = '$id'"); 
        return $success;
    }
    
    /**
     * delete  user
     * @param int $id
     * @return $success
     */
    public function deleteUser($id) {
        $success = $this->_db->query("DELETE FROM users WHERE user_id = $id");
        return $success;
    }

}
