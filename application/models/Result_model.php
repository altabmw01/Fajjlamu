<?php

/**
 * Class Profile_model
 *
 * @property Common_model $common_model Common model navigator
 */
class Result_model extends Common_model
{

    public function __construct()
    {
        parent::__construct();
    }

    public function generateResults($eid, $cid, $sid, $subid, $sgid)
    {
        $this->db->query('INSERT INTO ' . $this->_results . ' (Exams, Classes, Subjects, Sections, StudyGroups, StudentId, AddedDate, AddedYear, isActive) SELECT ' . $eid . ', si.Class, ' . $subid . ', si.Section, IF(' . $sgid . ', ' . $sgid . ', 0), p.user_id, NOW(), YEAR(NOW()), 1
        FROM ' . $this->_usersGroups . ' AS p
        LEFT JOIN ' . $this->_studentInformation . ' AS si
        ON p.user_id = si.UserId
        WHERE p.group_id = 4 AND si.Class = ' . $cid . ' AND si.Section = ' . $sid . '');
        return $this->db->affected_rows();

//        $this->db->query('INSERT INTO results (Exams, Classes, Subjects, Sections, StudyGroups, StudentId, AddedDate, AddedYear, isActive) SELECT 162, si.Class, 51, si.Section, 0, p.user_id, NOW(), YEAR(NOW()), 1
//            FROM users_groups AS p
//            LEFT JOIN u_std_information AS si
//            ON p.user_id = si.UserId
//            WHERE p.group_id = 4 AND si.Class = 1 AND si.Section = 1');
        return $this->db->affected_rows();
    }

    public function ifExists($eid, $cid, $sid, $subid, $sgid)
    {
        $sql = 'SELECT COUNT(*) AS Total FROM ' . $this->_results . ' WHERE (Exams = ' . $eid . ' AND Classes = ' . $cid . ' AND Sections = ' . $sid . ' AND Subjects = ' . $subid . '  AND StudyGroups = ' . $sgid . ')';
        $query = $this->db->query($sql);
        $record = $query->row();
        return $record;

//        $this->db->select('*')
//            ->from($this->_results)
//            ->where('Exams', ($eid !== 0) ? $eid : 0)
//            ->where('Classes', ($cid !== 0) ? $cid : 0)
//            ->where('Sections', ($sid !== 0) ? $sid : 0)
//            ->where('Subjects', ($subid !== 0) ? $subid : 0)
//            ->where('StudyGroups', ($sgid !== 0) ? $sgid : 0);
//
//        $query = $this->db->get();
//        return $query;
    }

    public function getResultsOfAClassExamSubjectGroupSection($eid, $cid, $sid, $subid, $sgid)
    {
        $result = $this->db->select('*')->from($this->_results)
            ->where('Exams', $eid)
            ->where('Classes', $cid)
            ->where('Sections', $sid)
            ->where('Subjects', $subid)
            ->where('StudyGroups', $sgid)
            ->group_by('Exams', 'Classes', 'Sections', 'Subjects', 'StudyGroups', 'StudentId');

        $rows = $this->db->get();
        //owndebugger($rows);
        return $rows;
    }

    public function getAllResults()
    {
        $this->datatables
            ->select('ResultId,
                (SELECT full_name_bn FROM users WHERE id = results.StudentId LIMIT 0,1) AS StudentName,
                (SELECT SettingsName FROM initial_settings_info WHERE SettingsId = results.Classes LIMIT 0,1) AS ClassName,
                (SELECT SettingsName FROM initial_settings_info WHERE SettingsId = results.Sections LIMIT 0,1) AS SectionName,
                (SELECT SettingsName FROM initial_settings_info WHERE SettingsId = results.StudyGroups LIMIT 0,1) AS GroupName,
                (SELECT SettingsName FROM initial_settings_info WHERE SettingsId = results.Exams LIMIT 0,1) AS ExamName,
                (SELECT SettingsName FROM initial_settings_info WHERE SettingsId = results.Subjects LIMIT 0,1) AS SubjectName,
                Written, MCQ, Practical, Speaking, Reading, Listening, AddedDate, AddedYear')
            ->from($this->_results)
            ->add_column('Edit', '<a href="' . base_url() . 'editresult/$1" target="_blank"><i class="fa fa-pencil fa-fw"></i></a>', 'ResultId');
            //->add_column('Delete', '<a onclick="ajaxRemoveFn($1,\'deletepage/$1\')" href="javascript:void(0)"><i class="fa fa-trash-o fa-fw"></i></a>', 'ResultId');

        $q = $this->datatables->generate();
        return $q;
    }
//
//SELECT
//ResultId,
//(SELECT SettingsName FROM initial_settings_info WHERE SettingsId = results.Exams LIMIT 0,1) AS ExamName,
//(SELECT SettingsName FROM initial_settings_info WHERE SettingsId = results.Classes LIMIT 0,1) AS ClassName,
//(SELECT SettingsName FROM initial_settings_info WHERE SettingsId = results.Sections LIMIT 0,1) AS SectionName,
//(SELECT SettingsName FROM initial_settings_info WHERE SettingsId = results.StudyGroups LIMIT 0,1) AS GroupName,
//(SELECT full_name_bn FROM users WHERE id = results.StudentId LIMIT 0,1) AS StudentName,
//Written,
//MCQ,
//Practical,
//Speaking,
//Reading,
//Listening
//FROM results
}

?>