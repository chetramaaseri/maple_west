<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Seo extends CI_Model{
	public $user_tz;
	public $today;
    public $api = "http://localhost/maple/seo/wp-json/wp/v2/";
    public $wpUrl = "http://localhost/maple/seo/";
	public function __construct(){
		parent::__construct();
		$this->load->database();
        $this->user_tz = new DateTimeZone('Asia/Kolkata');
		$this->today = new DateTime();
	}

    // util functions
	public function setMessage($message){
		$this->session->set_userdata('userMessage',$message);
	}

	public function getMessage(){
        $displayMessage = $this->session->userDisplayMessage;
        $this->session->unset_userdata('userMessage');
        return $displayMessage;
	}

	public function fetchHead($pageId){
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL,$this->api."pages/".$pageId);
        curl_setopt($curl, CURLOPT_HTTPHEADER, [
            'Content-Type: application/json',
        ]);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        $server_output = curl_exec($curl);
		// echo '<pre>';
		// print_r($server_output);
		// exit;
        curl_close ($curl);
        $output = str_replace($this->wpUrl,base_url(),json_decode($server_output)->yoast_head);
        return $output;
	}
	public function fetchPosts($postSlug=""){
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL,$this->api."posts/?slug=".$postSlug);
        curl_setopt($curl, CURLOPT_HTTPHEADER, [
            'Content-Type: application/json',
        ]);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        $server_output = curl_exec($curl);
		// echo '<pre>';
		// print_r(json_decode($server_output));
		// exit;
        curl_close ($curl);
		$output = json_decode($server_output,true);
        // $output = str_replace($this->wpUrl,base_url(),json_decode($server_output)->yoast_head);
        return $output;
	}
	public function fetchCategory($catId){
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL,$this->api."categories/".$catId);
        curl_setopt($curl, CURLOPT_HTTPHEADER, [
            'Content-Type: application/json',
        ]);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        $server_output = curl_exec($curl);
		// echo '<pre>';
		// print_r(json_decode($server_output));
		// exit;
        curl_close ($curl);
		$output = json_decode($server_output,true);
        // $output = str_replace($this->wpUrl,base_url(),json_decode($server_output)->yoast_head);
        return $output['name'];
	}
	public function getApplicationStatus($applicationNumber){
        $this->db->select('*');
        $this->db->from('clients');
        $this->db->where('applicationNumber',$applicationNumber);
        $query = $this->db->get();
        if($query->num_rows()){
            return $query->row_array();
        }
        return [];
	}

	public function addLead($lead){
        $this->db->insert('leads',$lead);
        return true;
	}
	public function addAppointment($lead){
        $this->db->insert('appointments',$lead);
        return true;
	}
	public function fetchServices($rid = false){
        $this->db->select('*');
        $this->db->from('services');
        if($rid != false){
            $this->db->where('rid',$rid);
        }
        $query = $this->db->get();
        if($query->num_rows()){
            return $query->result_array();
        }
        return [];
	}

}
