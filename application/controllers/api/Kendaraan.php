<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Kendaraan extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Kendaraan_model', 'kendaraan');
    }

    public function index_get()
    {
        $jenis_kendaraan = $this->get('jenis_kendaraan');
        $merk_kendaraan  = $this->get('merk_kendaraan');

        if ($jenis_kendaraan == null) {
            $kendaraan    = $this->kendaraan->getKendaraan();
            foreach ($kendaraan as $index => $data) {
                $data_kendaraan[$index]    = array(
                    "jenis_kendaraan"   => $data['jenis_kendaraan'],
                    "merk_kendaraan"    => $data['merk_kendaraan'],
                    "detail"            => array($data),
                );
                $data_detail = $this->main->group_by('jenis_kendaraan', $data_kendaraan);
            }
        } elseif ($jenis_kendaraan == null) {
            $kendaraan    = $this->kendaraan->getKendaraan($jenis_kendaraan);
            foreach ($kendaraan as $index => $data) {
                $data_kendaraan[$index]    = array(
                    "jenis_kendaraan"   => $data['jenis_kendaraan'],
                    "merk_kendaraan"    => $data['merk_kendaraan'],
                    "detail"            => array($data),
                );
                $data_detail = $this->main->group_by('jenis_kendaraan', $data_kendaraan);
            }
        } else {
            $kendaraan    = $this->kendaraan->getKendaraan($jenis_kendaraan, $merk_kendaraan);
            foreach ($kendaraan as $index => $data) {
                $data_kendaraan[$index]    = array(
                    "jenis_kendaraan"   => $data['jenis_kendaraan'],
                    "merk_kendaraan"    => $data['merk_kendaraan'],
                    "detail"            => array($data),
                );
                $data_detail = $this->main->group_by('jenis_kendaraan', $data_kendaraan);
            }
        }
        if ($kendaraan) {
            $this->response([
                'status'    => TRUE,
                'data'      => $data_detail,
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'No data were found'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }
}
