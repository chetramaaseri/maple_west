<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public $user_tz;
	public $today;
	public function __construct(){
		parent::__construct();
		if(!session_id()){
			session_start();
		}
		$this->load->model(array('adminmodel','mailer'));
		$this->user_tz = new DateTimeZone('Asia/Kolkata');
		$this->today = new DateTime();
	}
	public function index()
	{
		check_session();
		$this->dashboard();
	}
	public function login()
	{
		if($this->session->uid){
			redirect("admin/dashboard");
		}
		$data = array();
		$data['pageTitle'] = "Login | Admin Panel";
		if(isset($_POST['email'])){
			$admin = $this->adminmodel->validateLogin($_POST);
			if(!empty($admin)){
				// print_r($admin);
				$this->session->set_userdata($admin);
				// print_r($_SESSION); exit;
				redirect("admin/dashboard");
			}else{
				$data['error'] = "Invalid Credentials";
			}
		}
		$this->load->view('admin/login',$data);
	}
	public function seo()
	{
		redirect(base_url()."seo/wp-admin");
	}
	public function dashboard()
	{
		check_session();
		$data = array();
		$data['pageTitle'] = "Dashboard | Admin Panel";
		if(isset($_GET['deleteClient']) && isset($_GET['applicationNumber'])){
			$this->adminmodel->deleteClient($_GET['applicationNumber']);
		}
		$data['clients'] = $this->adminmodel->fetchClients();
		$this->load->view('admin/dashboard',$data);
	}
	public function addClient()
	{
		check_session();
		$data = array();
		$data['pageTitle'] = "Add Client | Admin Panel";
		if(isset($_POST['mobile'])){
			$data['process'] = $this->adminmodel->addClient($_POST);
		}
		$this->load->view('admin/addClient',$data);
	}
	public function updateStatus()
	{
		check_session();
		$data = array();
		$data['pageTitle'] = "Update Status | Admin Panel";
		if(isset($_GET['applicationNumber']) && isset($_POST['applicationStatus'])){
			$payload = $_POST;
			$payload['applicationNumber'] = $_GET['applicationNumber'];
			$data['process'] = $this->adminmodel->updateStatus($payload);
		}
		if(isset($_GET['applicationNumber'])){
			$client = $this->adminmodel->fetchClients($_GET['applicationNumber']);
			if(empty($client)){
				redirect('admin/dashboard');
			}
			$data['client'] = $client[0];
		}else{
			redirect('admin/dashboard');
		}
		$this->load->view('admin/updateStatus',$data);
	}
	public function leads()
	{
		check_session();
		$data = array();
		$data['pageTitle'] = "Lead | Admin Panel";
		$data['leads'] = $this->adminmodel->fetchLeads();
		$this->load->view('admin/leads',$data);
	}
	public function logout(){
		$session_id = session_id();
        $this->session->unset_userdata('userData');
        $this->session->sess_destroy();
		unlink(config_item('sess_save_path') . '/ci_session_' . $session_id);
        redirect('/');
	}
}
