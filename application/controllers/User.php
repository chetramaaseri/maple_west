<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public $user_tz;
	public $today;
	public function __construct(){
		parent::__construct();
		$this->load->database();
        $this->user_tz = new DateTimeZone('Asia/Kolkata');
		$this->today = new DateTime();
		$this->load->model('seo');
	}
	public function index()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(8);
		if(isset($_POST['name'])){
			$this->seo->addLead($_POST);
			$data['formSubmitted'] = true;
		}
		// API URL
		$url = "https://api.io.canada.ca/io-server/gc/news/en/v2?dept=departmentofcitizenshipandimmigration&sort=publishedDate&orderBy=desc&publishedDate%3E=2021-07-23&pick=50&format=atom&atomtitle=Immigration,%20Refugees%20and%20Citizenship%20Canada";
		// Fetch the XML data
		$xmlData = file_get_contents($url);
		// Create a SimpleXMLElement from the XML data
		$data['news'] = new SimpleXMLElement($xmlData);
		$this->load->view('static/home',$data);
	}
	public function about()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(10);
		if(isset($_POST['name'])){
			$this->seo->addLead($_POST);
			$data['formSubmitted'] = true;
		}
		// API URL
		$url = "https://api.io.canada.ca/io-server/gc/news/en/v2?dept=departmentofcitizenshipandimmigration&sort=publishedDate&orderBy=desc&publishedDate%3E=2021-07-23&pick=50&format=atom&atomtitle=Immigration,%20Refugees%20and%20Citizenship%20Canada";
		// Fetch the XML data
		$xmlData = file_get_contents($url);
		// Create a SimpleXMLElement from the XML data
		$data['news'] = new SimpleXMLElement($xmlData);
		$this->load->view('static/about',$data);
	}
	public function clientportal()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(12);
		if(isset($_GET['applicationNumber'])){
			$data['status'] = $this->seo->getApplicationStatus($_GET['applicationNumber']);
		}
		$this->load->view('static/applicationstatus',$data);
	}
	public function bookconsultation()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(18);
		$data['services'] = $this->seo->fetchServices();
		if(isset($_GET['service'])){
			$service = $this->seo->fetchServices($_GET['service']);
			if(empty($service)){
				redirect(base_url()."book-consultation");
			}
			$data['service'] = $service[0];
			if($_SERVER['REQUEST_METHOD'] == "POST"){
				$this->seo->addAppointment($_POST);
				$data['formSubmitted'] = true;
			}
		}
		
		$this->load->view('static/bookConsultation',$data);
	}
	public function businessvisitor()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(20);
		
		$this->load->view('static/businessvisitor',$data);
	}
	public function corporateimmigration()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(22);
		
		$this->load->view('static/corporateimmigration',$data);
	}
	public function permanenetresidency()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(24);
		
		$this->load->view('static/permanenetresidency',$data);
	}
	public function latestnews()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(14);
		// $data['posts'] = $this->seo->fetchPosts();
		if(isset($_POST['name'])){
			$this->seo->addLead($_POST);
			$data['formSubmitted'] = true;
		}
		// API URL
		$url = "https://api.io.canada.ca/io-server/gc/news/en/v2?dept=departmentofcitizenshipandimmigration&sort=publishedDate&orderBy=desc&publishedDate%3E=2021-07-23&pick=50&format=atom&atomtitle=Immigration,%20Refugees%20and%20Citizenship%20Canada";
		// Fetch the XML data
		$xmlData = file_get_contents($url);
		// Create a SimpleXMLElement from the XML data
		$data['news'] = new SimpleXMLElement($xmlData);
		$this->load->view('blog/blogPosts',$data);
	}
	public function singlePost($postSlug)
	{
		$data = array();
		if(isset($_POST['name'])){
			$this->seo->addLead($_POST);
			$data['formSubmitted'] = true;
		}
		$post = $this->seo->fetchPosts($postSlug);
		if(empty($post)){
			// print_r($post); exit;
			return $this->errorPage();
		}
		$data['post'] = $post[0];
		// echo '<pre>';
		// unset($data['post'][0]['content']);
		// print_r($data['post']);
		$data['head'] = $data['post']['yoast_head'];
		$this->load->view('blog/singlePost',$data);
	}
	public function contactus()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(16);
		$this->load->view('static/contactus',$data);
	}
	public function errorPage()
	{
		$data = array();
		$data['head'] = $this->seo->fetchHead(26);
		$this->load->view('static/error',$data);
	}
}
