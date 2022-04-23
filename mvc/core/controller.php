<?php
class Controller{

    public function home()
    {
        echo"Trang home cua controller";
    }
    protected function loadView($master, $view, $data)
    {
        require_once PATH_TO_VIEW.strtolower($master).'.php';
    }
}
?>