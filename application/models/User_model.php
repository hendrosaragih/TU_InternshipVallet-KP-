<?php
class User_model extends CI_model{



public function order_user($pesanan){


$this->db->insert('pesanan', $pesanan);

}

public function email_check($email){

  $this->db->select('*');
  $this->db->from('pesanan');
  $this->db->where('email_perusahaan',$email);
  $query=$this->db->get();

  if($query->num_rows()>0){
    return false;
  }else{
    return true;
  }

}


}


?>
