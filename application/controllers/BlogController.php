<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BlogController extends CI_Controller {

    public function __construct() {
        parent::__construct();
        // Your own constructor code
        $this->load->database();
        $this->load->library('session');
        // $this->load->library('stripe');
        /* cache control */
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        if (!$this->session->userdata('cart_items')) {
            $this->session->set_userdata('cart_items', array());
        }
    }
    function index(){
      $page_data['page_name'] = "blog";
        $page_data['page_title'] = get_phrase('blog');
        $page_data['blog_data'] = $this->blog_model->get_all_blog();
        $this->load->view('frontend/' . get_frontend_settings('theme') . '/index', $page_data);
    }
    function detail($blog_id,$title) {
        $page_data['page_name'] = "blog_detail";
        $page_data['blog_id'] = $blog_id;
        $page_data['page_title'] = 'Man must explore, and this is exploration at its greatest';
        $this->load->view('frontend/' . get_frontend_settings('theme') . '/index', $page_data);
    }
    
    
}
?>