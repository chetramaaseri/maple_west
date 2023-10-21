<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Adminmodel extends CI_Model{
	public $user_tz;
	public $today;
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model(array('mailer'));
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

    public function validateLogin($credentials){
        $this->db->select('*');
        $this->db->from('users');
        $this->db->where($credentials);
        $query=  $this->db->get();
        if($query->num_rows()>0){
            return $query->row_array();
        }
        return [];

    }
	public function generateApplicationNumber(){
        $isUnique = false;
        $applicationNumber = "";
        $this->db->select('applicationNumber');
        $this->db->from('clients');
        $query = $this->db->get();
        $applicationNumbers = $query->result_array();

        while($isUnique == false){
            $min_digit = 0;  // Minimum digit
            $max_digit = 9;  // Maximum digit
            $number_length = 10;  // Desired number length

            $applicationNumber = '';

            for ($i = 0; $i < $number_length; $i++) {
                $random_digit = rand($min_digit, $max_digit);
                $applicationNumber .= $random_digit;
            }

            $matched_array = array_filter($applicationNumbers, function($innerArray) use ($applicationNumber) {
                return $innerArray['applicationNumber'] === $applicationNumber;
            });

            if(empty($matched_array)){
                $isUnique = true;
            }
        }

        return  $applicationNumber;
	}

	public function addClient($client){
        $this->db->select('*');
        $this->db->from('clients');
        $this->db->where("mobile",$client['mobile']);
        $query = $this->db->get();
        if($query->num_rows()>0){
            $response = [
                "status" => false,
                "message" => "Mobile Number Already Registered",
                "client" => $query->row_array()
            ];
            return $response;
        }
        $this->db->select('*');
        $this->db->from('clients');
        $this->db->where("email",$client['email']);
        $query = $this->db->get();
        if($query->num_rows()>0){
            $response = [
                "status" => false,
                "message" => "Email Already Registered",
                "client" => $query->row_array()
            ];
            return $response;
        }
        $newClient = $client;
        $newClient['applicationNumber'] = $this->generateApplicationNumber();
        unset($newClient['otherstatus']);
        if(isset($client['otherstatus'])){
            $newClient['applicationStatus'] = json_encode([
                [
                    "status" => str_replace(" ","-",$client['otherstatus']),
                    "time" => time()
                ]
            ]);
        }else{
            $newClient['applicationStatus'] = json_encode([
                [
                    "status" => $client['applicationStatus'],
                    "time" => time()
                ]
            ]);
        }
        $newClient['remarks'] = json_encode([
            [
                "message" => $client['remarks'],
                "time" => time()
            ]
        ]);
        $this->db->insert('clients',$newClient);
        // Auto Email =================================================
        $this->mailer->sendMail([
            [
                "mail" => $client['email'],
                "name" => $client['name']
            ]
        ],"Welcome To Maple West Immigration Services","welcome",[
            "name" => $client['name'],
            "applicationNumber" => $newClient['applicationNumber'],
            "currentStatus" => json_decode($newClient['applicationStatus'],true)[0]['status'],
            "statusCheckLink" => site_url()."application-status?applicationNumber=".$newClient['applicationNumber']
        ]);
        // =============================================================
        $response = [
            "status" => true,
            "message" => "Client Registered Successfully",
            "client" => $newClient
        ];
        return $response;
	}
	public function fetchLeads(){
        $this->db->select('*');
        $this->db->from('leads');
        $query = $this->db->get();
        if($query->num_rows()>0){
            return $query->result_array();
        }
        return [];
	}
	public function fetchClients($applicationNumber = false){
        $this->db->select('*');
        $this->db->from('clients');
        $this->db->where('isDeleted',0);
        if($applicationNumber != false){
            $this->db->where('applicationNumber',$applicationNumber);
        }
        $query = $this->db->get();
        if($query->num_rows()>0){
            return $query->result_array();
        }
        return [];
	}
	public function deleteClient($applicationNumber){
        $this->db->where('applicationNumber',$applicationNumber);
        $this->db->update('clients',[
            "isDeleted" => 1
        ]);
        return true;
	}
	public function updateStatus($client){
        $this->db->select('*');
        $this->db->from('clients');
        $this->db->where('applicationNumber',$client['applicationNumber']);
        $query = $this->db->get();
        if($query->num_rows()>0){
            $result = $query->row_array();
            $applicationStatus = json_decode($result['applicationStatus'],true);
            array_push($applicationStatus,[
                "status" => $client['applicationStatus'],
                "time" => time()
            ]);
            $result['applicationStatus'] = json_encode($applicationStatus);
            
            $remarks = json_decode($result['remarks'],true);
            array_push($remarks,[
                "message" => $client['remarks'],
                "time" => time()
            ]);
            $result['remarks'] = json_encode($remarks);
            $this->db->where('applicationNumber',$client['applicationNumber']);
            $this->db->update('clients',$result);
            // Auto Email =================================================
            $this->mailer->sendMail([
                [
                    "mail" => $result['email'],
                    "name" => $result['name']
                ]
            ],"Welcome To Maple West Immigration Services","welcome",[
                "name" => $result['name'],
                "applicationNumber" => $result['applicationNumber'],
                "currentStatus" => $client['applicationStatus'],
                "statusCheckLink" => site_url()."application-status?applicationNumber=".$result['applicationNumber']
            ]);
            // =============================================================
            $response = [
                "status" => true,
                "message" => "Status Updated Successfully",
                "client" => $result
            ];

            return $response;
        }
        $response = [
            "status" => false,
            "message" => "Client Not Found",
            "client" => $client
        ];
        return $response;
	}	
}
