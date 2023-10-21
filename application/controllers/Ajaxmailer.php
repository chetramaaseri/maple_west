<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';
class Ajaxmailer extends CI_Controller {
    
    public $user_tz;
	public $today;
    private $mail;
    private $fromUsername = "Maple West Immigration Service";
	public function __construct(){
		parent::__construct();
        $this->user_tz = new DateTimeZone('Asia/Kolkata');
		$this->today = new DateTime();
        $this->mail = new PHPMailer(true);
        $this->configure();
	}
    
    public function index($recipients,$subject,$templateName,$values){
        try{
            $this->addRecipient($recipients);
            $this->addTemplate($templateName,$values);
            $this->mail->Subject = $subject;
            $this->mail->send();
        }
        catch (Exception $e) {
            return "Message could not be sent. Mailer Error: {$this->mail->ErrorInfo}";
        }
    }
    private function configure(){
        try{
            $this->mail->SMTPDebug = SMTP::DEBUG_SERVER;
            $this->mail->isSMTP();
            $this->mail->Host       = 'smtp.gmail.com';
            $this->mail->SMTPAuth   = true;
            $this->mail->Username   = 'noreply.restful@gmail.com';
            $this->mail->Password   = 'hkyfoflrkgvkbgdc';
            $this->mail->SMTPSecure = 'tls';
            $this->mail->setFrom('noreply.restful@gmail.com', $this->fromUsername);
        }
        catch (Exception $e) {
            return "Message could not be sent. Mailer Error: {$this->mail->ErrorInfo}";
        }
    }
    private function addRecipient($recipients){
        try{
            foreach($recipients as $recipient){
                $this->mail->addAddress($recipient['mail'], $recipient['name']);
            }
        }
        catch (Exception $e) {
            return "Message could not be sent. Mailer Error: {$this->mail->ErrorInfo}";
        }
    }
    private function addTemplate($templateName,$values){
        try{
            $this->mail->isHTML(true);
            $this->mail->Body    = $this->load->view("mailer/$templateName",$values);
            $this->mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
        }
        catch (Exception $e) {
            return "Message could not be sent. Mailer Error: {$this->mail->ErrorInfo}";
        }
        
    }
	
}
