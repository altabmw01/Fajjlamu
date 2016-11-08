<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * @property Frontend_model $frontend_model frontend Model
 * @property Profile_model $profile_model Directory Model
 * @property Settings_model $settings_model Settings Model
 * @property Panel_model $panel_model Panel Model
 * @property Payments_model $payments_model Payments Model
 * @property Common_model $common_model Payments Model
 *
 */
class Frontend extends MX_Controller
{
    protected $data = array();
    protected $themename;
    private $status = array("status" => 0, "msg" => NULL);
    private $where = array();
    private $id;
    private $results = array();

    public function __construct()
    {
        parent::__construct();
        $this->load->model("common_model");
        $this->load->model("profile_model");
        $this->load->model("settings_model");
        $this->load->model("panel_model");
        $this->load->model("payments_model");
        $this->load->library(array('ion_auth', 'form_validation', 'upload', 'initial'));
    }

    /**
     * Sending Data to settings page
     */
    public function index()
    {
        $this->data['settings'] = $this->get_settings();
        $this->data['blocks'] = $this->get_blocks();
        $this->data['widget0'] = $this->search($this->data['blocks'], 'WidgetPosition', 0);
        $this->data['widget1'] = $this->search($this->data['blocks'], 'WidgetPosition', 1);
        $this->data['widget2'] = $this->search($this->data['blocks'], 'WidgetPosition', 2);
        $this->data['widget3'] = $this->search($this->data['blocks'], 'WidgetPosition', 3);
        $this->data['widget4'] = $this->search($this->data['blocks'], 'WidgetPosition', 4);
        $this->data['widget5'] = $this->search($this->data['blocks'], 'WidgetPosition', 5);
        $this->data['widget6'] = $this->search($this->data['blocks'], 'WidgetPosition', 6);
        $this->data['widget7'] = $this->search($this->data['blocks'], 'WidgetPosition', 7);
        $this->data['widget8'] = $this->search($this->data['blocks'], 'WidgetPosition', 8);
        $this->data['widget9'] = $this->search($this->data['blocks'], 'WidgetPosition', 9);
        $this->data['widget10'] = $this->search($this->data['blocks'], 'WidgetPosition', 10);
        $this->data['widget11'] = $this->search($this->data['blocks'], 'WidgetPosition', 11);
        $this->data['widget12'] = $this->search($this->data['blocks'], 'WidgetPosition', 12);
        $this->data['widget13'] = $this->search($this->data['blocks'], 'WidgetPosition', 13);
        $this->data['widget14'] = $this->search($this->data['blocks'], 'WidgetPosition', 14);
        $this->data['widget15'] = $this->search($this->data['blocks'], 'WidgetPosition', 15);
        $this->data['widget16'] = $this->search($this->data['blocks'], 'WidgetPosition', 16);
        $this->data['widget17'] = $this->search($this->data['blocks'], 'WidgetPosition', 17);
        $this->data['widget18'] = $this->search($this->data['blocks'], 'WidgetPosition', 18);
        $this->data['widget19'] = $this->search($this->data['blocks'], 'WidgetPosition', 19);
        $this->data['widget20'] = $this->search($this->data['blocks'], 'WidgetPosition', 20);
        $this->data['widget21'] = $this->search($this->data['blocks'], 'WidgetPosition', 21);
        $this->data['widget22'] = $this->search($this->data['blocks'], 'WidgetPosition', 22);
        $this->data['widget23'] = $this->search($this->data['blocks'], 'WidgetPosition', 23);
        $this->data['widget24'] = $this->search($this->data['blocks'], 'WidgetPosition', 24);
        $this->data['widget25'] = $this->search($this->data['blocks'], 'WidgetPosition', 25);
        $this->data['widget26'] = $this->search($this->data['blocks'], 'WidgetPosition', 26);
        $this->data['widget27'] = $this->search($this->data['blocks'], 'WidgetPosition', 27);
        $this->data['widget28'] = $this->search($this->data['blocks'], 'WidgetPosition', 28);
        $this->data['widget29'] = $this->search($this->data['blocks'], 'WidgetPosition', 29);
        $this->data['widget30'] = $this->search($this->data['blocks'], 'WidgetPosition', 30);
        $this->data['widget31'] = $this->search($this->data['blocks'], 'WidgetPosition', 31);
        $this->data['widget32'] = $this->search($this->data['blocks'], 'WidgetPosition', 32);
        $this->data['widget33'] = $this->search($this->data['blocks'], 'WidgetPosition', 33);
        $this->data['widget34'] = $this->search($this->data['blocks'], 'WidgetPosition', 34);
        $this->data['widget35'] = $this->search($this->data['blocks'], 'WidgetPosition', 35);

        $this->data['pages'] = $this->get_webpages();
        $this->data['mainmenu'] = $this->get_menu_directly_from_db();
        $this->data['scroller'] = $this->get_all_posts_by_cat_id(176);
        $this->data['slideshows'] = $this->get_all_posts_by_cat_id(46);


        $this->data['uri1'] = $this->uri->segment(1);
        $this->data['uri2'] = $this->uri->segment(2);
        $pageid = (isset($_GET['page_id']) ? $_GET['page_id'] : '');
        $postid = (isset($_GET['post_id']) ? $_GET['post_id'] : '');

        if ($this->data['uri1'] == 'page' && $pageid) {
            $this->data['single_page'] = $this->page_single($pageid);

        } else if ($this->data['uri1'] == 'page' && $pageid) {
            $this->data['single_post'] = $this->page_single($postid);
        }
        $this->themename = loadthemenow($this->data['settings']->SelectedTheme);
        $this->load->view('layouts/' . $this->themename . '/index', $this->data);
    }

    /** Admission */
    public function online_admission()
    {
        $this->data['settings'] = $this->get_settings();
        $this->data['blocks'] = $this->get_blocks();
        $this->data['mainmenu'] = $this->get_menu_directly_from_db();
        $this->themename = loadthemenow($this->data['settings']->SelectedTheme);
        $this->data['theme'] = $this->themename;
        $this->data['pay_method'] = $this->payments_model->get_payments_methods();
        $this->data['gender'] = $this->common_model->get_settings(7);
        $this->data['religion'] = $this->common_model->get_settings(12);
        $this->data['classes'] = $this->common_model->get_settings(1);
        $this->data['sections'] = $this->common_model->get_settings(2);
        if (isset($_GET['getrandomid'])) {
            $applicants = $this->get_applicant_if_exists($_GET['getrandomid']);
            //owndebugger($applicants);
            if ($applicants == 'No Data Found') {
                $this->data['infosid'] = '';
            } else {
                $this->data['infosid'] = $applicants->UserId;
            }
        }
        $this->data['random'] = (isset($_GET['getrandomid']) ? $_GET['getrandomid'] : '');
        $this->load->view('admission/index', $this->data);
    }

    public function admission_instance()
    {
        $this->data['title'] = "Add new applicants";
        $startdate = datetoint($this->input->post('created_on'));
        $data = array(
            'id' => $this->input->post('randomcode'),
            'activation_code' => 0,
            'created_on' => $startdate
        );

        $this->results = $this->profile_model->insertAdmissionInstance($data);
//        $data1 = array(
//            'UserId' => $this->input->post('randomcode')
//        );
//        $this->results = $this->payments_model->insertPaymentEntries($data1);

        if ($this->results) {
            $this->status['status'] = 1;
            $this->status['randomcode'] = $this->input->post('randomcode');
            $this->status['msg'] = 'Well done!';
        } else {
            $this->status['status'] = 0;
            $this->status['msg'] = 'Oh snap! Change a few things up and try submitting again.';
        }
        echo jsonEncode($this->status);
    }

    public function insert_payment()
    {
        $this->data['title'] = "Insert New Payment";

        if ($this->input->post('bankname')) {
            $accountto = $this->input->post('bankname');
        } else if ($this->input->post('instituteaccount')) {
            $accountto = $this->input->post('instituteaccount');
        }

        $twp = $this->input->post('transactionwith_p');
        $twu = $this->input->post('transactionwith_u');

        if ($twp == "") {
            $transactionwith = $twu;
        } else {
            $transactionwith = $twp;
        }
        $paymentdate = datetoint($this->input->post('paymentdate'));

        $data = array(
            'LedgerNameId' => $this->input->post('ledgertypeid'),
            'Amount' => $this->input->post('amount'),
            'UserId' => $this->input->post('userid'),
            'TransactionWith' => $transactionwith,
            'PaymentDate' => $paymentdate,
            'AdditionalNote' => $this->input->post('note'),
            'PaymentMethod' => $this->input->post('payment_method'),
            'TransactionMobileNumber' => $this->input->post('sendermobileno'),
            'TransactionId' => $this->input->post('transactionid'),
            'AccountTo' => $accountto,
            'InsertedTime' => datetoint(__now()),
            'PaymentStatus' => 1
        );
        $data1 = array(
            'UserId' => $this->input->post('userid')
        );

        if ($this->input->post('infosid') == 'none') {
            $this->results = $this->payments_model->insertPaymentEntries($data);
            $this->results = $this->profile_model->insertPersonalInformation($data1);
        } else {
            $where = array('UserId' => $this->input->post('userid'));
            $this->results = $this->payments_model->updatePaymentIfExists($data, $where);
        }

        if ($this->results) {
            $this->status['status'] = 1;
            $this->status['randomcode'] = $this->input->post('userid');
            $this->status['msg'] = 'Well done!';
        } else {
            $this->status['status'] = 0;
            $this->status['msg'] = 'Oh snap! Change a few things up and try submitting again.';
        }
        echo jsonEncode($this->status);
    }

    public function admission_information()
    {
        $userid = $this->input->post('userid');
        $dateofbirth = datetoint($this->input->post('dateofbirth'));
        $config['upload_path'] = "uploads/pp";
        $config['allowed_types'] = "gif|jpg|jpeg|png";
        $config['max_size'] = "5000";
        $config['max_width'] = "1907";
        $config['max_height'] = "1280";
        //$this->load->library('upload', $config);
        $this->upload->initialize($config);
        /** Above Code for Upload File Initializer * */
        /** File If:Else Condition * */
        if (isset($userid)) {
            if (!$_FILES["userfile"]["error"] == 4) {
                $this->upload->do_upload('userfile');
                $profilephoto = $this->upload->data();
            }

            $data = array(
                'UserId' => $this->input->post('userid'),
                'Gender' => $this->input->post('gender'),
                'UniqueNumber' => $this->input->post('uniquenumber'),
//                'BloodGroup' => $this->input->post('bloodgroup'),
                'Religion' => $this->input->post('religion'),
//                'Upazila' => $this->input->post('upazila'),
//                'District' => $this->input->post('district'),
                'JoinDate' => datetoint(__now()),
                'EnrollmentStatus' => 190,
//                'Address' => $this->input->post('address'),
                'CountryId' => 22,
                'DateOfBirth' => $dateofbirth,
                'UserPhoto' => $profilephoto['file_name']
            );
            //owndebugger($data);
            $data1 = array(
                'phone' => $this->input->post('phone'),
                'full_name_bn' => $this->input->post('full_name_bn'),
                'full_name_en' => $this->input->post('full_name_en'),
                'father_name_bn' => $this->input->post('father_name_bn'),
                'father_name_en' => $this->input->post('father_name_en'),
                'mother_name_bn' => $this->input->post('mother_name_bn'),
                'mother_name_en' => $this->input->post('mother_name_en')
            );
            //owndebugger($data1);
            if ($this->input->post('infosid') == 'none') {
                $this->results = $this->profile_model->insertPersonalInformation($data1);
                $where1 = array('id' => $this->input->post('userid'));
                $this->results = $this->profile_model->updateBasicInformation($data1, $where1);
            } else {
                $where = array('UserId' => $this->input->post('userid'));
                $this->results = $this->profile_model->updatePersonalInformation($data, $where);
                $where1 = array('id' => $this->input->post('userid'));
                $this->results = $this->profile_model->updateBasicInformation($data1, $where1);
            }

            if ($this->results) {
                $this->status['status'] = 1;
                $this->status['randomcode'] = $this->input->post('userid');
                $this->status['msg'] = 'Well done!';
            } else {
                $this->status['status'] = 0;
                $this->status['msg'] = 'Oh snap! Change a few things up and try submitting again.';
            }
//            owndebugger($this->status);
            echo jsonEncode($this->status);
        } else {
            $this->status['status'] = 0;
            $this->status['msg'] = $this->upload->display_errors();
//            owndebugger($this->status);
            echo jsonEncode($this->status);
        }
    }

    /**
     * @return mixed
     */

    public function get_settings()
    {
        $row = $this->settings_model->getSystemSettings();
        return $row[0];
    }

    /**
     * @return array
     */
    public function get_blocks()
    {
        $blocks = $this->settings_model->getBlocks();
        return $blocks;
    }

    function search($array, $searchkey, $value)
    {
        if (is_array($array)) {
            foreach ($array as $key => $block) {
                $blockvar = (array)$block;
//                owndebugger($searchkey);
//                owndebugger($key);
                if ($blockvar[$searchkey]== $value)
                    return $block;
            }
        }
        return false;
    }

    //public function get_widget($blocks, widgetposition, 0)
    public function get_widget($array, $key, $value)
    {
        owndebugger($array);
        foreach ($array as $key => $block) {
            //owndebugger($block);
            if ($block[$key] == $value) {
                return $key;
            }
        }
        return false;
    }

    /**
     * @param $id
     * @return array|bool
     */
    public function get_block($id)
    {
        $block = $this->settings_model->getBlock($id);
        return $block;
    }

    /**
     * @return array
     */
    public function get_webpages()
    {
        return $this->frontend_model->getAllPagesFrontend();
    }

    public function get_sub_webpages($parent_id)
    {
        return $this->frontend_model->getAllSubPagesFrontend($parent_id);
    }

    public function get_menu_directly_from_db()
    {
        $html = '';
        $menus = $this->frontend_model->getMainMenuFromDbDirectly();
        $html .= '<li><a href="' . base_url() . '">প্রচ্ছদ</a>';
        foreach ($menus as $menu) {
            $html .= '<li><a href="' . base_url() . 'page/' . $menu->PageRoute . '?page_id=' . trim($menu->PageId) . '">' . $menu->PageTitle . '</a>';
            if (!empty($menu->Childs)) {
                $childs = explode('|', $menu->Childs);
                $html .= '<ul>';
                foreach ($childs as $child) {
                    $menu = explode(';', $child);
                    $html .= '<li><a href="' . base_url() . 'page/' . $menu[1] . '?page_id=' . trim($menu[0]) . '">' . $menu[2] . '</a></li>';
                }
                $html .= '</ul>';
            }
            $html .= '</li>';
        }
        return $html;
    }

    public function get_all_posts_by_cat_id($id)
    {
        return $this->settings_model->getAllPostsByCatId($id);
    }

    public function page_single($pageid)
    {
        $pageid = (isset($pageid) ? $pageid : $_GET['page_id']);
        $return = $this->frontend_model->getPageByRoute($pageid);
        return $return[0];
    }

    public function post_single($postid)
    {
        $postid = (isset($postid) ? $postid : $_GET['post_id']);
        $return = $this->frontend_model->getPostByRoute($postid);
        return $return[0];
    }

    public function get_applicant_if_exists($id)
    {
        return $this->profile_model->getPersonalInformation($id);
    }
}

?>
