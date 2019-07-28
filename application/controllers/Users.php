<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Users extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('prime_model');
    }
    public function index(){
//        $this->load->model('prime_model');
        $data['title'] = 'Fetch Database Info';
//        $query = $this->db->get('users');
//        $data['users'] = $query->result_array();
        $data['users'] = $this->prime_model->get_data('users');
        $this->load->view('users',$data);
    }
    public function create() {
        $data['title'] = 'Create New User';
        $data['action'] = site_url('users/create');
        $data['button'] = 'Create';
        if($this->input->post('submit')){
            $username = $this->input->post('username',TRUE);
            $email = $this->input->post('email',TRUE);
            $about = $this->input->post('about',TRUE);
            $user = array(
                'username' => $username,
                'email' => $email,
                'about' => $about
            );
            $this->db->insert('users',$user);
            redirect('users');
        }
        $this->load->view('create', $data);
    }
    public function edit($id = FALSE) {
        if ($id != '') {
            $user_id = (int) $id;
            $data = array(
                'title' => 'Edit a User',
                'action' => site_url('users/edit'),
                'users' => $this->prime_model->get_data('users', 'id', $user_id),
                'button' => 'Update'
            );
            if (count($data['users']) < 1) {
                redirect('users');
            }
        }
        if ($this->input->post('submit')) {
            $user_id = (int) $this->input->post('id');
            $username = $this->input->post('username', TRUE);
            $email = $this->input->post('email', TRUE);
            $about = $this->input->post('about', TRUE);
            $user = array(
                'username' => $username,
                'email' => $email,
                'about' => $about
            );
            $this->db->where('id', $user_id)->update('users', $user);
            redirect('users');
        }
        $this->load->view('create', $data);
    }
    public function delete_user($id){
        if($id != ''){
            $this->db->where('id',(int)$id)->delete('users');
            redirect('users');
        }
    }
    public function getRow(){
        $data['title'] = 'Fetch Database Info';
        $this->load->view('addRow',$data);
    }
}