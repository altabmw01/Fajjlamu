<?php

/**
 * Created by PhpStorm.
 * User: Dell
 * Date: 9/29/2015
 * Time: 1:28 PM
 */
class Panel_model extends Common_model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getAllUsers()
    {
        $this->datatables
            ->select('first_name, last_name, FROM_UNIXTIME(created_on, "%m/%d/%Y") created_on, email, company, phone, id')
            ->from($this->_usersTable);
        $q = $this->datatables->generate();
        return $q;
    }

    public function getAllPages()
    {
        //        (SELECT ModuleName FROM ' . $this->_modules . ' WHERE ModuleId = ' . $this->_categories . '.ModuleId) AS ModuleName,
        $this->datatables
            ->select('PageId, PageTitle, PageRoute, (SELECT PageTitle FROM ' . $this->_webpages . ' c WHERE c.PageId = ' . $this->_webpages . '.ParentId LIMIT 0,1) AS ParentPageName, PublishDate, isActive')
            ->from($this->_webpages)
            ->add_column('Edit', '<a href="' . base_url() . 'addnewpage/$1" target="_blank"><i class="fa fa-pencil fa-fw"></i></a>', 'PageId')
            ->add_column('Delete', '<a onclick="ajaxRemoveFn($1,\'deletepage/$1\')" href="javascript:void(0)"><i class="fa fa-trash-o fa-fw"></i></a>', 'PageId');

        $q = $this->datatables->generate();
        return $q;
    }
    
    public function getAllApplicants()
    {
        //        (SELECT ModuleName FROM ' . $this->_modules . ' WHERE ModuleId = ' . $this->_categories . '.ModuleId) AS ModuleName,
        $this->datatables
            ->select('UserID,
                (SELECT Gender FROM u_basicinfos WHERE UserId = acc_payments.UserId) AS Gender,
                (SELECT EnrollmentStatus FROM u_basicinfos WHERE UserId = acc_payments.UserId) AS EnrollmentStatus,
                (SELECT FROM_UNIXTIME(DateOfBirth, "%m/%d/%Y") FROM u_basicinfos WHERE UserId = acc_payments.UserId) AS DateOfBirth,
                (SELECT full_name_bn FROM users WHERE id = acc_payments.UserId) AS Fn_bn,
                (SELECT full_name_en FROM users WHERE id = acc_payments.UserId) AS Fn_en,
                (SELECT father_name_bn FROM users WHERE id = acc_payments.UserId) AS Ffn_bn,
                (SELECT father_name_en FROM users WHERE id = acc_payments.UserId) AS Ffn_en,
                (SELECT mother_name_bn FROM users WHERE id = acc_payments.UserId) AS Mfn_bn,
                (SELECT mother_name_en FROM users WHERE id = acc_payments.UserId) AS Mfn_en,
                PaymentId,
                LedgerNameId,
                Amount,
                PaymentDate,
                TransactionId')
            ->from($this->_paymentsentries)
            ->add_column('View', '<a class="btn btn-success btn-sm" href="' . base_url() . 'singleapplicants/$1" target="_blank"><i class="fa fa-eye"></i></a>', 'UserID')
            ->add_column('Delete', '<a class="btn btn-danger btn-sm" onclick="ajaxRemoveFn($1,\'deleteapplicants/$1\')" href="javascript:void(0)"><i class="fa fa-trash-o fa-fw"></i></a>', 'UserID');

        $q = $this->datatables->generate();
        return $q;
    }

    public function getInitialSettingsByCategory($cat)
    {
        $this->datatables
            ->select(
                'SettingsId,
    	    SettingsCategory,
    	    SettingsName,
    	    SettingsDescription,
    	    isActive'
            )
            ->where("SettingsCategory", $cat)
            ->from($this->_initialSettings)
            ->add_column('Edit', '<a href="' . base_url() . 'addnewclass/$1" target="_blank"><i class="fa fa-pencil fa-fw"></i></a>', 'SettingsId')
            ->add_column('Delete', '<a onclick="return confirm(\'Are you sure want to delete?\')" href="' . base_url() . 'addnewclass/$1"><i class="fa fa-trash-o fa-fw"></i></a>', 'SettingsId');

        $q = $this->datatables->generate();
        return $q;
    }
}