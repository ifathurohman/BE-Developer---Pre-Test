<?php

defined('BASEPATH') or exit('No direct script access allowed');
class M_main extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function group_by($key, $data)
    {
        $result = array();

        foreach ($data as $val) {
            if (array_key_exists($key, $val)) {
                $result[$val[$key]][] = $val;
            } else {
                $result[""][] = $val;
            }
        }

        return $result;
    }
}
