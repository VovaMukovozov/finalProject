<?php

require_once 'OrderController.php';

class OrderRESTController extends OrderController {

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
    public function payment($input) {
        $newOrder = parent::payment(json_decode($input, true));
        return $this->buildAnswer($newOrder[0],$newOrder[1]);

    }

}
