<?php

class User extends CI_Controller {

public function __construct()
  {
    parent::__construct();
    $this->load->helper('url');
    $this->load->model('user_model');
    $this->load->model('daftar_model');
    $this->load->library('session');
    $this->load->library('form_validation');
  }

  public function index()
  {
    $data['types'] = $this->daftar_model->get();
    $this->load->view('templates/header');
    $this->load->view("order.php", $data);
    $this->load->view('templates/footer');
    $this->load->helper(array('form', 'url'));
  }

public function order_user(){

      $pesanan=array(
      'nama_perusahaan'=>$this->input->post('name'),
      'email_perusahaan'=>$this->input->post('email'),
      'kontak_perusahaan'=>$this->input->post('kontak_perusahaan'),
      'jenis_pesanan'=>$this->input->post('jenis_pesanan'),
      'harga'=>$this->input->post('harga'),
      'detail_pesanan'=>$this->input->post('message')
        );

$email_check=$this->user_model->email_check($pesanan['email_perusahaan']);

      if($email_check){
  
        $this->user_model->order_user($pesanan);
        $this->load->view('templates/success');
      }
      else{

        $this->load->view('templates/failed');

      }

}
}


