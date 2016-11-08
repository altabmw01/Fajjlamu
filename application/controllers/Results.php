<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * @property Uploader $uploader Uploader Class Library
 * @property Common_model $common_model Uploader Class Library
 * @property Profile_model $profile_model Profile Class Library
 * @property ion_auth_model $ion_auth_model ion_auth_model Library
 * @property result_model $result_model ion_auth_model Library
 */
class Results extends CI_Controller
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
        $this->load->model("profile_model");
        $this->load->model("result_model");
        $this->load->library(array('ion_auth', 'form_validation', 'upload', 'initial'));

        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
    }

    public function index()
    {
        if ($this->ion_auth->logged_in()) {
            $this->data['userInformation'] = $this->ion_auth->user()->row();
        }
        $this->data['userid'] = $this->data['userInformation']->id;
        $this->data['title'] = "Results Generator";


        $this->data['eid'] = (isset($_GET['examm']) ? $_GET['examm'] : '0');
        $this->data['cid'] = (isset($_GET['classs']) ? $_GET['classs'] : '0');
        $this->data['sid'] = (isset($_GET['section']) ? $_GET['section'] : '0');
        $this->data['subid'] = (isset($_GET['subject']) ? $_GET['subject'] : '0');
        $this->data['sgid'] = (isset($_GET['groupp']) ? $_GET['groupp'] : '0');

        if (isset($this->data['eid']) == 0) {
            $this->data['status'] = 0;
            $this->data['msg'] = 'Select options to get results';
        } else if (isset($this->data['eid']) >= 0) {
            $thanks = $this->if_result_exists($this->data['eid'], $this->data['cid'], $this->data['sid'], $this->data['subid'], $this->data['sgid']);
            //owndebugger($thanks);
            if ($thanks->Total >= 1) {
                $this->status['status'] = 1;
                $this->status['msg'] = 'Results Created. Modify results instead.';
                $this->data['status'] = 1;
                $this->data['msg'] = $this->status['msg'];
            } else {
                $this->status['status'] = 0;
                $this->status['msg'] = 'Sorry. Students are not available based on your criteria.';
                $this->data['status'] = 0;
                $this->data['msg'] = $this->status['msg'];
            }
        }

        $this->data['classes'] = $this->common_model->get_settings(1);
        $this->data['sections'] = $this->common_model->get_settings(2);
        $this->data['subjects'] = $this->common_model->get_settings(4);
        $this->data['exams'] = $this->common_model->get_settings(5);
        $this->data['groups'] = $this->common_model->get_settings(6);

        $this->load->view('layouts/header', $this->data);
        $this->load->view('result/resultgenerator', $this->data);
        $this->load->view('layouts/footer', $this->data);
    }

    public function generate_results()
    {
        //?examm='+examm+'&classs='+classs+'&section='+section+'&subject='+subject+'&groupp='+groupp

        $this->data['eid'] = (isset($_GET['examm']) ? $_GET['examm'] : '0');
        $this->data['cid'] = (isset($_GET['classs']) ? $_GET['classs'] : '0');
        $this->data['sid'] = (isset($_GET['section']) ? $_GET['section'] : '0');
        $this->data['subid'] = (isset($_GET['subject']) ? $_GET['subject'] : '0');
        $this->data['sgid'] = (isset($_GET['groupp']) ? $_GET['groupp'] : '0');

        $thanks = $this->if_result_exists($this->data['eid'], $this->data['cid'], $this->data['sid'], $this->data['subid'], $this->data['sgid']);

        if ($thanks->Total >= 1) {
            $this->status['status'] = 1;
            $this->status['msg'] = 'Results Exists. Modify results instead.';
            echo jsonEncode($this->status);
        } else {
            //$this->results = $this->result_model->generateResults(162, 1, 1, 51, 0);
            $this->results = $this->result_model->generateResults($this->data['eid'], $this->data['cid'], $this->data['sid'], $this->data['subid'], $this->data['sgid']);
            if ($this->results) {
                $this->status['status'] = 1;
                $this->status['msg'] = 'Well done!';
            } else {
                $this->status['status'] = 0;
                $this->status['msg'] = 'Sorry. We did not found any student based on your criteria.';
            }
            echo jsonEncode($this->status);
        }
    }

    public function if_result_exists($eid, $cid, $sid, $subid, $sgid)
    {
        $thanks = $this->result_model->ifExists($eid, $cid, $sid, $subid, $sgid);
        return $thanks;
    }

    public function results_data_grid()
    {
        if ($this->ion_auth->logged_in()) {
            $this->data['userInformation'] = $this->ion_auth->user()->row();
        }
        $this->data['userid'] = $this->data['userInformation']->id;
        $this->data['title'] = "All Results";

        $this->load->view('layouts/header', $this->data);
        $this->load->view('result/resultdatagrid', $this->data);
        $this->load->view('layouts/footer', $this->data);
    }

    public function get_all_results_by_ajax()
    {
        echo $this->result_model->getAllResults();
    }
}

?>