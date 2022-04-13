<?php

class Kendaraan_model extends CI_Model
{
    public function getKendaraan($p1 = '', $p2 = '')
    {
        $this->db->select("
            jk.jenis_kendaraan,
            mk.merk_kendaraan,
            tk.type_kendaraan,
        ");
        $this->db->from("jenis_kendaraan as jk");
        $this->db->join("merk_kendaraan as mk", "jk.jenis_id = mk.jenis_id", "left");
        $this->db->join("type_kendaraan as tk", "mk.merk_id = tk.merk_id", "left");

        if (!$p1 == null and $p2 == null) :
            $this->db->group_start();
            $this->db->where("jk.jenis_kendaraan", $p1);
            $this->db->group_end();
        elseif (!$p1 == null and !$p2 == null) :
            $this->db->group_start();
            $this->db->where("jk.jenis_kendaraan", $p1);
            $this->db->where("mk.merk_kendaraan", $p2);
            $this->db->group_end();
        endif;

        $query = $this->db->get();

        return $query->result_array();
    }
}
