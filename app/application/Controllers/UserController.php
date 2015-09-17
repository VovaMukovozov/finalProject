<?php

session_start();
require_once '../../core/models/UserModel.php';
require_once '../../core/controllers/Controller.php';

class UserController extends Controller {

    public $model; // model 

    /**
     *  conect to model
     */

    public function __construct() {
        $this->model = new UserModel();
    }

    /**
     * reqister new user
     * @param request $input
     * @return success true/false 
     *   
     */
    public function registerUser($input) {
        if (filter_var($input['email'], FILTER_VALIDATE_EMAIL) === false) {
            return [false, 'Email must comply with this mask: chars(.chars)@chars(.chars).chars(2-4)'];
        }
        if ($this->model->checkEmail($input['email'])) {
            return [false, 'Email exist'];
        }
        if (strlen($input["password"]) < 6) {
            return [false, 'Password not valid'];
        }
        $input["password"] = md5($input["password"]);
        if (!$input["firstName"]) {
            return [false, 'first name not require'];
        }
        if (!$input["lastName"]) {
            return [false, 'last name not require'];
        }
        try {
            $newUser = $this->model->createUser($input);
            if ($newUser !== NULL) {
                return [true, 'User created'];
            } else
                throw new Exception();
        } catch (Exception $e) {
            return [false, 'Please try again'];
        }
    }

    /**
     * login user
     * @param integer $input
     * @return success true/false 
     *   
     */
    public function loginUser($input) {
        $input["password"] = md5($input["password"]);
        $user = $this->model->loginUser($input);
        if (isset($user[0]['user_id'])) {
            $_SESSION['user_id'] = $user[0]['user_id'];
            return array(true, "logined");
        }
        else{
            return array(false, "Failed login");
        }
    }

    /**
     * delete user
     * @param integer $id
     * @return success true/false 
     *   
     */
    public function deleteUser($id) {
        $delete = $this->model->deleteUser($id);

        if ($delete) {
            return [true, 'user removed'];
        }

        return array(false, "Failed to delete");
    }

}
