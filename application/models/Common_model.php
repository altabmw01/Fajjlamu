<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Common_model extends CI_Model
{

    private $user_infos = array();
    private $where = array();
    public $_usersTable = 'users';
    public $_groups = 'groups';
    public $_usersRelation = 'users_relation';
    public $_usersGroups = 'users_groups';
    public $_country = 'country';
    public $_categories = 'categories';
    public $_uBasicInfoCriteria = 'u_basicinfocriteria';
    public $_posts = 'posts';
    public $_webpages = 'webpages';
    public $_initialSettings = 'initial_settings_info';
    public $_systemSettings = 'settings';
    public $_studentPromotion = 'student_promotion';
    public $_uBasicInfos = 'u_basicinfos';
    public $_uBusinesses = 'u_businesses';
    public $_uEducationHistory = 'u_educationhistory';
    public $_uOtherCriterias = 'u_othercriterias';
    public $_uSubscriptions = 'u_subscriptions';
    public $_uWorkHistory = 'u_workhistory';
    public $_studentInformation = 'u_std_information';
    public $_tchstaff_information = 'u_tchstaff_information';
    public $_online_applicants = 'online_applicants';
    public $_results = 'results';
    public $_blocks = 'blocks';


    /** Payments Modules Tables */
    public $_ledgernames = 'acc_ledgernames';
    public $_paymentsentries = 'acc_payments';
    public $_transactions = 'acc_transactions_validator';

    /**
     * @package:EasyTask
     * @Common_model::construct().
     * @Author: Idea Tweaker
     */
    function __construct()
    {
        parent::__construct();
    }

    /**
     * @Common_model::insertRecords()
     * @access:public
     * @Author: Idea Tweaker
     * @params:$table
     * @params:$records
     */
    public function insertRecords($table, $records)
    {
        $sql = $this->db->insert($table, $records);
        return ($sql) ? true : false;
    }

    /**
     * @Common_model::isUserExist()
     * @access:public
     * @Author: Idea Tweaker
     * @params:where
     * @return
     */
    public function isRecordsExists($table, $where)
    {
        return $this->getNumRows($table, $where);
    }

    /**
     * @Common_model::getNumRows()
     * @access:public
     * @Author: Idea Tweaker
     * @params:$table
     * @params:$where
     */
    public function getNumRows($table, $where = NULL)
    {
        if (!empty($where))
            $this->db->where($where);
        $this->db->from($table);
        return $this->db->count_all_results();
    }

    public function recordCount($table)
    {
        return $this->db->count_all($table);
    }

    public function recordCountwhere($table, $where)
    {
        $query = $this->db->get_where($table, $where);
        $rowcount = $query->num_rows();
        return $rowcount;
    }

    public function getRecordsLimit($table, $limit, $start)
    {
        $this->db->limit($limit, $start);
        $query = $this->db->get($table);

        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
    }

    public function getRecordsWithPager($table, $limit, $start)
    {
        $this->db->limit($limit, $start);
        $query = $this->db->get($table);

        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
    }

    public function getAllRecordsWhereWithPager($table, $limit, $start, $where)
    {
        $this->db->limit($limit, $start);
        $query = $this->db->get_where($table, $where);
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
        /* $sql = $this->db->get_where($table, $where);
          foreach ($sql->result() as $rows) {
          $data = $sql->result();
          }
          return $data; */
    }


    public function getAllRecordsJoinWhereWithPager($table, $limit, $start, $join, $where)
    {
        $this->db->limit($limit, $start);
        $query = $this->db->get_where($table, $where);
        if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
    }

    /**
     * @Common_model::updateRecords()
     * @access:public
     * @Author: Idea Tweaker
     * @params:$table
     * @params:$data
     * @params:$where
     */
    public function updateRecords($table, $data, $where)
    {
        if (!empty($where))
            $this->db->where($where);
        $sql = $this->db->update($table, $data);

        return ($sql) ? 1 : 0;
    }

    /**
     * @param $table
     * @param $where
     * @param $option
     * @return array|bool
     */
    public function getRecords($table, $where, $option)
    {
        if (!empty($where))
            $sql = $this->db->get_where($table, $where);
        else
            $sql = $this->db->get($table);
        if ($sql->num_rows() > 0) {
            if ($option == "all") {
                foreach ($sql->result() as $rows) {
                    $data[] = $rows;
                }
            } else {
                $data = $sql->row_array();
            }
            return $data;
        } else
            return false;
    }

    /**
     * @Common_model::getAllRecords()  All data fetch korar jonno........ Where and Join sara
     * @Author: Samrat Khan
     * @access:public
     * @params:$table
     * @params:$where
     * @params:$option
     * @return
     */
    public function getAllRecords($table)
    {

        $sql = $this->db->get($table);
        if ($sql->num_rows() > 0) {
            foreach ($sql->result() as $rows) {
                $data[] = $rows;
            }
            return $data;
        }
    }

    /**
     * @Common_model::deleteRecords()
     * @access:public
     * @params:$table
     * @params:$where
     * @Author: Idea Tweaker
     */
    public function deleteRecords($table, $where = '')
    {
        if (empty($where))
            $del = $this->db->empty_table($table);
        else
            $del = $this->db->delete($table, $where);
        return ($del) ? 1 : 0;
    }

    /**
     * @Common_model::getLastInserted()
     * @access:public
     * @Author: Idea Tweaker
     */
    public function getLastInserted()
    {
        return $this->db->insert_id();
    }

    /**
     * @Common_model:: getAllRecordsWhere($table, $where);
     * @param type $table
     * @param type $where
     * @return type
     */
    public function getAllRecordsWhere($table, $where)
    {
        $sql = $this->db->get_where($table, $where);
        foreach ($sql->result() as $rows) {
            $data = $sql->result();
        }
        return $data;
    }

    /**
     * @
     * @param type $table
     * @param type $records
     * @return type
     */
    public function insertBatch($table, $records)
    {
        $sql = $this->db->insert_batch($table, $records);
        return ($sql) ? true : false;
    }

    /**
     *
     * @param type $table
     * @param type $records
     * @return type
     */
    public function updateBatch($table, $records)
    {
        $sql = $this->db->update_batch($table, $records, 'resultid');
        return ($sql) ? true : false;
    }

    public function getFewCols($table, $cols = array(), $id = null)
    {
        $this->db->select($cols);
        $this->db->from($table);

        if (!is_null($id))
            $this->db->where('id', $id);
        return $this->db->get()->result();
    }

    function get_countries()
    {
        $this->db->from('country');
        $this->db->order_by('Name');
        $result = $this->db->get();
        $return = array();
        if ($result->num_rows() > 0) {
            foreach ($result->result_array() as $row) {
                $return[$row['CountryId']] = $row['Name'];
            }
        }

        return $return;

    }

    function get_pages()
    {
        $this->db->from($this->_webpages);
        $this->db->order_by('PageTitle');
        $result = $this->db->get();
        $return = array();
        if ($result->num_rows() > 0) {
            $return[0] = "Select a Page";
            foreach ($result->result_array() as $row) {
                $return[$row['PageId']] = $row['PageTitle'];
            }
        }

        return $return;

    }

    function get_pages_by_id($id)
    {
        $where = array('PageId' => $id);
        $rows = $this->getRecords($this->_webpages, $where, 'all');

        if ($this->isRecordsExists($this->_webpages, $where)) {
            foreach ($rows as $row):
                $elements = $row;
            endforeach;
            return $elements;
        } else {
            $nodata = 'No Data Found';
            return $nodata;
        }

    }

    function get_initial_settings_by_id($id)
    {
        $where = array('SettingsId' => $id);
        $rows = $this->getRecords($this->_initialSettings, $where, 'all');

        if ($this->isRecordsExists($this->_initialSettings, $where)) {
            foreach ($rows as $row):
                $elements = $row;
            endforeach;
            return $elements;
        } else {
            $nodata = 'No Data Found';
            return $nodata;
        }

    }

    function get_categories_by_module_id($id)
    {
        $this->db->from($this->_categories);
        $this->db->where('ModuleId', $id);
        $this->db->order_by('CategoryName');
        $result = $this->db->get();
        $return = array();
        if ($result->num_rows() > 0) {
            foreach ($result->result_array() as $row) {
                $return[$row['CategoryId']] = $row['CategoryName'];
            }
        }
        return $return;
    }

    function get_settings($id)
    {
        $this->db->from($this->_initialSettings)
            ->where('SettingsCategory', $id)
            ->order_by('SettingsId');
        $result = $this->db->get();
        $return = array();
        if ($result->num_rows() > 0) {
            $return[0] = "Select one";
            foreach ($result->result_array() as $row) {
                $return[$row['SettingsId']] = $row['SettingsName'] . (isset($row['SettingsDescription']) ? " (" . $row['SettingsDescription'] . ")" : "");
            }
        }
        return $return;
    }

    function get_directory_categories($id)
    {
        $this->db->select('*, (SELECT COUNT(*) FROM u_businesses WHERE CateogryId = categories.CategoryId) AS TotalBusinesses')->from('categories')
            ->where('ModuleId', $id)
            ->order_by('CategoryName');
        $result = $this->db->get();
        $rows = $result->result_array();
        return $rows;
    }

    function get_count($table)
    {
        $this->db->select('COUNT(*) AS Total')
            ->from($table);
        $result = $this->db->get();

        if ($result->num_rows() > 0) {
            foreach ($result->result_array() as $row) {
                return $row['Total'];
            }
        }
    }
}