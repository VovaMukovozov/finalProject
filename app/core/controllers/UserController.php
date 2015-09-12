<?php
require_once dirname( __FILE__ ) . '/../models/UserModel.php';

/**
 *  UserController class
 *
 * @author vadim
 */
class UserController {
    
    protected  $user;
     
    /**
     *  constructor user controller
     * @param UserModel $user
     * @return void 
     * 
     */
    public function __construct(UserModel $user) {
       
        $this->user = $user;
    }
        /**
         *  user registration method
         *  @param array $data
         * 
         */
    public function register($data){
            
            if($this->userValidation($data)===true){
              
                        if($this->user->createUser($data)){
                          
                        }
            }
    }
    
    public function signIn($data){
        
    }
        /**
         * 
         * @param array $data
         * @return boolean
         */
    public function userValidation($data){
        //filling fields
        foreach ($data as $value){
                if($value==NULL){
                return false;
           } 
        }
         // Validate email
        if (!filter_var($data['user_email'], FILTER_VALIDATE_EMAIL) === false) {
            //     echo("$email is a valid email address");
            } else {
            //     echo("$email is not a valid email address");
                return false;
            }
         
         
            // Validate password 
         if(strlen($data['user_password']) < 6){
           
          return false;  
             
         }
      return true;
    }
    
    public function editProfile($data){
        
        
    }
}
