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
     * check if email exist
     * @param array $email
     * @return $success
     */
    public function loginUser($data) {
        $email = $data['email'];
        $pass = $data['password'];
        $success = $this->_db->query("SELECT user_id FROM users WHERE user_email = '$email' AND user_password = '$pass'");
        if ($success) {
            $user_id = [];
            while ($row = $success->fetch_assoc()) {
                $user_id[] = $row;
            }
            return $user_id;
        }
        return false;
    }
    /**
     * create new user
     * @param array $data
     * @return $success
     */
    public function createUser($data) {
        $success = $this->_db->query("INSERT INTO users (user_email, user_password, user_firstname, user_lastname) VALUES ('" . $data['email'] . "','" . $data['password'] . "','" . $data['firstName'] . "','" . $data['lastName'] . "')");
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
