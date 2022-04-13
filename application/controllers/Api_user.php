<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;
class Api_user extends CI_Controller {

    public function index()
    {
        $this->load->helper('url');

        $this->load->view('rest_server');
    }
}
