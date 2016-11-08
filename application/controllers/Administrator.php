<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/**
 * Created by Samrat.
 *
 * @property Panel_model $panel_model Panel Model
 * @property Common_model $common_model Common Model
 * User: Dell
 * Date: 9/29/2015
 * Time: 1:00 PM
 */
class Administrator extends CI_Controller
{

    protected $data = array();
    private $records = array();
    private $results = array();
    private $_session = array();
    private $status = array("status" => 0, "msg" => NULL);
    private $where = array();
    private $id;
    private $pagetitle;
    private $isUpdate = 0;
    private $isDelete = 0;
    private $isInsert = 0;

    public function __construct()
    {
        parent::__construct();
        $this->load->model("common_model");
        $this->load->model("settings_model");
        $this->load->model("panel_model");
        $this->load->library(array('ion_auth', 'form_validation', 'upload', 'initial','datatables'));

        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
    }

    public function index()
    {
        if ($this->ion_auth->logged_in()) {
            $this->data['userInformation'] = $this->ion_auth->user()->row();
        }
        $this->data['title'] = "Administrator Panel";


        $this->load->view('administrator/layouts/header', $this->data);
        $this->load->view('administrator/panel', $this->data);
        $this->load->view('layouts/footer', $this->data);
    }

    public function absense_view()
    {

    }

    public function subscribers()
    {
        if ($this->ion_auth->logged_in()) {
            $this->data['userInformation'] = $this->ion_auth->user()->row();
        }
        $this->data['title'] = "Subscribers";


        $this->load->view('administrator/layouts/header', $this->data);
        $this->load->view('administrator/subscribers', $this->data);
        $this->load->view('layouts/footer', $this->data);
    }

    public function get_all_users_by_ajax()
    {
        echo $this->panel_model->getAllUsers();
    }
}