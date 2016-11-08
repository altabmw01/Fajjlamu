<?php

/**
 * Created by PhpStorm.
 * User: Dell
 * Date: 9/29/2015
 * Time: 1:28 PM
 */
class Frontend_model extends Common_model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getAllSubPagesFrontend($parent_id)
    {
        return $this->db->select('*')
            ->from($this->_webpages)
            ->where('ParentId', $parent_id)
            ->order_by('ParentId')
            ->get()
            ->result();
    }
    public function getPageById($pageid)
    {
        return $this->db->select('*')
            ->from($this->_webpages)
            ->where('PageId', $pageid)
            ->order_by('PageId')
            ->get()
            ->result();
    }

    public function getAllPagesFrontend()
    {
        return $this->db->select('*')
            ->from($this->_webpages)
            ->where('ParentId', '0')
            ->get()
            ->result();
    }

    public function getMainMenuFromDbDirectly()
    {
//        SEPARATOR ' | '
        $this->db->select('a.PageId, a.PageTitle, a.PageRoute, a.ParentId, (SELECT GROUP_CONCAT(DISTINCT CONCAT(m.PageId, \';\', `m`.`PageRoute`, \';\', `m`.`PageTitle`) SEPARATOR \' | \') FROM webpages m WHERE m.ParentId = a.PageId) as Childs')
            ->from($this->_webpages . ' as a')
            ->join($this->_webpages . ' as b', 'a.ParentId = b.PageId', 'left')
            ->where('a.ParentId', '0');


        $sql = $this->db->get();
        if ($sql->num_rows() > 0) {
            foreach ($sql->result() as $rows) {
                $data[] = $rows;
            }
            return $data;
        }
        return $sql;
//        owndebugger($sql);


//        return $this->db->query('SELECT a.PageId, a.PageTitle, a.PageRoute, a.ParentId,
//            (SELECT GROUP_CONCAT(DISTINCT CONCAT(m.PageId,' | ',m.PageTitle,' | ',m.PageRoute) SEPARATOR ' | ') FROM webpages m WHERE m.ParentId = a.PageId) as Childs
//            FROM webpages AS a LEFT JOIN webpages AS b
//            ON a.ParentId = b.PageId WHERE ParentId = 0');

    }

    public function getPageByRoute($route)
    {
        return $this->db->select('*')
            ->from($this->_webpages)
            ->where('PageId', $route)
            ->get()
            ->result();
        ob_clean();
        echo $this->db->last_query();
    }

    public function getPostByRoute($route)
    {
        return $this->db->select('*')
            ->from($this->_posts)
            ->where('PostId', $route)
            ->get()
            ->result();
    }

}