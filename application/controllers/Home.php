<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
    public function load_common_views($view_name, $data) {
        $this->load->view('templates/header', $data);
        $this->load->view('templates/navbar');
        $this->load->view($view_name, $data);
        $this->load->view('templates/footer');
    }

    public function index() {
        $data['title'] = 'Home page';
        $this->load_common_views('home', $data); // Update 'index' to 'home' as the view file is named home.php
    }
}
