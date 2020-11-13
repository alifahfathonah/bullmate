<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
        /*cache control*/
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
    }
      public function get_blog($blog_id = 0) {
        if ($blog_id > 0) {
            $this->db->where('id', $blog_id);
        }
        return $this->db->get('blogs');
    }

    public function get_all_blog($blog_id = 0) {
        if ($blog_id > 0) {
            $this->db->where('id', $blog_id);
        }
        return $this->db->get('blogs')->result();
    }
    
    public function add_blog() {
        $validity = 'true';
        if ($validity == false) {
            $this->session->set_flashdata('error_message', get_phrase('email_duplication'));
        }else {
            $data['title'] = html_escape($this->input->post('title'));
            $data['description'] = $this->input->post('description');
            $data['short_description'] = $this->input->post('short_description');
            $data['date_added'] = strtotime(date("Y-m-d H:i:s"));
            $data['status'] = 1;
            $this->db->insert('blogs', $data);
            $blog_id = $this->db->insert_id();
            $this->upload_blog_image($blog_id);
            $this->session->set_flashdata('flash_message', get_phrase('blog_added_successfully'));
        }
    }


    public function edit_blog($blog_id = "") { // Admin does this editing
        $validity = 'true';
      
        if ($validity) {
            $data['title'] = html_escape($this->input->post('title'));
            $data['description'] = $this->input->post('description');
            $data['short_description'] = $this->input->post('short_description');
            $data['status'] = 1;
            $data['last_modified'] = strtotime(date("Y-m-d H:i:s"));
            $this->db->where('id', $blog_id);
            $this->db->update('blogs', $data);
//            echo $this->db->last_query();
            $this->upload_blog_image($blog_id);
            $this->session->set_flashdata('flash_message', get_phrase('blog_update_successfully'));
        }
    }
    public function delete_blog($blog_id = "") {
        $this->db->where('id', $blog_id);
        $this->db->delete('blogs');
        $this->session->set_flashdata('flash_message', get_phrase('blog_deleted_successfully'));
    }
    
    public function get_blog_image_url($blog_id) {

         if (file_exists('uploads/blog_image/'.$blog_id.'.jpg'))
             return base_url().'uploads/blog_image/'.$blog_id.'.jpg';
        else
            return base_url().'uploads/blog_image/blank.png';
    }
    
       public function upload_blog_image($blog_id) {
        if (isset($_FILES['blog_image']) && $_FILES['blog_image']['name'] != "") {
            move_uploaded_file($_FILES['blog_image']['tmp_name'], 'uploads/blog_image/'.$blog_id.'.jpg');
            $this->session->set_flashdata('flash_message', get_phrase('blog_update_successfully'));
        }
    }
    
}