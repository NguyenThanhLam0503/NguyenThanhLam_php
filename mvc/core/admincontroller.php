<?php
class AdminController extends Controller{
    protected function loadAdminView($master, $view, $data){
        require_once PATH_TO_ADMINVIEW.strtolower($master).'.php';
    }
}
?>