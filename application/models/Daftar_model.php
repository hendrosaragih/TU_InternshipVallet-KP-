<?php
class Daftar_model extends CI_model
{
    public $table = 'daftar_harga';

    function __construct()
    {
        parent::__construct();
    }

    function get()
    {
        return $this->db->get($this->table)->result_array();
    }
}
