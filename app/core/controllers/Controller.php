<?php


/**
 * Description of BaseController
 *
 * @author vadim
 */
class Controller {
   
    private $model;

    public function __construct($model) {
        $this->model = $model;
    }
}
