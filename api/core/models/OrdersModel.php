<?php

/**
 * Description of Orders
 *
 */
require_once dirname(__FILE__) . '/Model.php';

class OrdersModel extends Model {

    /**
     * parent construct
     * @return void
     * 
     */
    public function __construct() {
        parent::__construct();
    }

    /**
     * creating new order
     * @param type $data
     * @return boolean $purchase
     * 
     */
    public function createOrder($data) {
        $success = $this->_db->query("INSERT INTO orders (user_id, order_created, order_shipping_address, order_shipping_city, order_shipping_zipcode, order_shipping_phone, order_payment_method, order_total) "
                . "VALUES (" . $data['user_id'] . ",'" . $data['order_created'] . "'"
                . ",'" . $data['order_shipping_address'] . "','" . $data['order_shipping_city'] . "','" . $data['order_shipping_zipcode'] . "'"
                . ",'" . $data['order_shipping_phone'] . "','" . $data['order_payment_method'] . "', " . $data['order_total'] . ")");

        if ($success) {
            $id_order = $this->_db->query("SELECT order_id FROM orders WHERE user_id = " . $data['user_id'] . " ORDER BY order_id DESC LIMIT 1;");
            if ($id_order) {
                $orders = [];
                while ($row = $id_order->fetch_assoc()) {
                    $orders[] = $row;
                }
            }
            foreach ($data['albums_id'] as $album_id){
               $purchase = $this->buyAlbum($orders[0]['order_id'], $album_id); // album per order
            }
        }

        return $purchase;
    }

    /**
     *  getting orders list
     * @param type $order_id
     * @param type $user_id
     * @return $orders
     * 
     */
    public function getOrders($order_id = false, $user_id = false) {

        if ($order_id) {
            $result = $this->_db->query(" SELECT * FROM orders WHERE order_id = $order_id ");
        } elseif ($user_id) {
            $result = $this->_db->query(" SELECT * FROM orders WHERE user_id = $user_id ");
        } else {
            $result = $this->_db->query(" SELECT * FROM orders ");
        }

        if ($result) {
            $orders = [];
            while ($row = $result->fetch_assoc()) {
                $orders[] = $row;
            }
            return $orders;
        }

        return NULL;
    }

    /**
     * getting orders by city
     * @param type $city
     * @return $orders
     * 
     */
    public function getOrdersByCity($city) {

        $result = $this->_db->query(" SELECT * FROM orders WHERE order_id = ' $city ' ");
        if ($result) {
            $orders = [];
            while ($row = $result->fetch_assoc()) {
                $orders[] = $row;
            }
            return $orders;
        }

        return NULL;
    }

    /**
     * getting orders by adress
     * @param type $adress
     * @return $orders
     */
    public function getOrdersByAdress($adress) {

        $result = $this->_db->query(" SELECT * FROM orders WHERE order_id = ' $adress ' ");
        if ($result) {
            $orders = [];
            while ($row = $result->fetch_assoc()) {
                $orders[] = $row;
            }
            return $orders;
        }

        return NULL;
    }

    /**
     *  getting ordres by phone number
     * @param type $phone
     * @return $orders
     */
    public function getOrdersByPhone($phone) {
        $result = $this->_db->query(" SELECT * FROM orders WHERE order_id = ' $phone ' ");
        if ($result) {
            $orders = [];
            while ($row = $result->fetch_assoc()) {
                $orders[] = $row;
            }
            return $orders;
        }

        return NULL;
    }

    /**
     * getting orders by payment method
     * @param type $method
     * @return $orders
     * 
     */
    public function getOrdersByMethod($method) {
        $result = $this->_db->query(" SELECT * FROM orders WHERE order_id = ' $method ' ");
        if ($result) {
            $orders = [];
            while ($row = $result->fetch_assoc()) {
                $orders[] = $row;
            }
            return $orders;
        }

        return NULL;
    }

    /**
     *  deleting orders 
     * @param type $order_id
     * @param type $user_id
     * @return $success
     */
    public function deleteOrders($order_id, $user_id) {

        if ($order_id) {
            $success = $this->_db->query(" DELETE FROM orders WHERE order_id = $order_id ");
        } elseif ($user_id) {
            $success = $this->_db->query(" DELETE FROM orders WHERE user_id = $user_id ");
        } else {
            $success = $this->_db->query(" DELETE FROM orders ");
        }
        return $success;
    }

    /**
     *  getting orders quantity
     * @param type $user_id
     * @return $total
     * 
     */
    public function getTotalOrders($user_id = false) {

        if ($user_id) {
            $count = $this->_db->query("SELECT SUM(order_total) FROM orders WHERE user_id = $user_id ");
        } else {
            $count = $this->_db->query("SELECT SUM(order_total) FROM orders ");
        }

        return $count;
    }

    /**
     * getting albums from order
     * @param int $order_id
     * @return $albums
     * 
     */
    public function getPurchases($order_id) {
        $result = $this->_db->query("SELECT  orderes_to_albums.album_id "
                . "FROM order_to_albums INNER JOIN orders ON order_id = $order_id ");

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
     * 
     * @param int $id_order
     * @param int $id_album
     * @return boolean $succ
     * 
     */
    public function buyAlbum($id_order, $id_album) {
        $succ = $this->_db->query("INSERT INTO orders_to_albums(order_id, album_id) "
                . "VALUES (" . $id_order . "," . $id_album . ")");
        if($succ){
            return true;
        }
        else{
            return false;
        }
        
    }

}
