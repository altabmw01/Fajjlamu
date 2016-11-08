<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * @property Profile_model $profile_model Profile Model
 * @property Common_model $common_model Common Model
 * @property Settings_model $settings_model Settings Model
 * @property Ion_auth $ion_auth ion_auth
 */


class Dashboard extends CI_Controller
{

    protected $data;

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     *        http://example.com/home.php/welcome
     *    - or -
     *        http://example.com/home.php/welcome/index
     *    - or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /home.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model("common_model");
        $this->load->model("settings_model");
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
    }

    public function index()
    {
        if ($this->ion_auth->logged_in()) {
            $this->data['userInformation'] = $this->ion_auth->user()->row();
            //owndebugger($this->data['userInformation']);
        }
        $this->data['title'] = "Smart Campus Dashboard";
        $this->data['userid'] = $this->data['userInformation']->id;
        $this->data['personalinformation'] = $this->settings_model->getPersonalInformation($this->data['userid']);
        $this->data['totals'] = $this->settings_model->getTotalBusinessesCount();

        $this->load->view('layouts/header', $this->data);
        $this->load->view('profile/dashboard', $this->data);
        $this->load->view('layouts/footer', $this->data);
    }
}
