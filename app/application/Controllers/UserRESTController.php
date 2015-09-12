<?php


// namespace core\Controller;


require_once 'UserController.php';

class UserRESTController extends UserController {

    public $model;

    //generat json api
    protected function buildAnswer($success, $message, $data = null) {
        return json_encode([
        "success" => $success,
        "message" => $message,
        "data" => $data
        ]);
    }

    /**
     * reqister new user
     * 
     * @return json 
     *   
     */
    public function registerUser($input) {
        $newUser = parent::registerUser(json_decode($input, true));
        return $this->buildAnswer($newUser[0],$newUser[1]);

    }

}
