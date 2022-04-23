<?php
class Auth extends Controller{
    public function adminLogin()
    {
        $this->loadView('master3','auth/adminlogin',[]);
    }
}
?>