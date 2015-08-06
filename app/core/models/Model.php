<?php
// namespace core\Model;
require_once dirname( __FILE__ ) . '/../lib/DB.class.php';

class Model {
	protected $_db;
	
	public function __construct() {
		$this->_db = DB::getInstance();
	}
}