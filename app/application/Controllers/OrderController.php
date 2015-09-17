<?php

require_once '../../core/models/OrdersModel.php';
require_once '../../core/controllers/Controller.php';

class OrderController extends Controller {

    public $model; // model 

    /**
     *  conect to model
     */

    public function __construct() {
        $this->model = new OrdersModel();
    }

    /**
     * reqister new user
     * @param request $input
     * @return success true/false 
     *   
     */
    public function payment($input) {
        $input['order_created'] = date("Y-m-d H:i:s");
//        print_r($input['order_created']);
//        die();
//        try {
            $newOrder = $this->model->createOrder($input);
            if ($newOrder !== NULL) {
                return [true, 'Order created'];
//            } else
//                throw new Exception();
//        } catch (Exception $e) {
//            return [false, 'Please try again'];
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
