<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';
class Mailer extends CI_Model{
    public $user_tz;
	public $today;
    private $mail;
    private $fromUsername = "Maple West Immigration Services";
	public function __construct(){
		parent::__construct();
        $this->user_tz = new DateTimeZone('Asia/Kolkata');
		$this->today = new DateTime();
	}
    
    public function sendMail($recipients,$subject,$templateName,$values){
        try{
            $this->mail = new PHPMailer(true);
            $this->configure();
            $this->addRecipient($recipients);
            $this->addTemplate($templateName,$values);
            $this->mail->Subject = $subject;
            // echo '<pre>';
            // print_r($this->mail); exit;
            $this->mail->send();
        }
        catch (Exception $e) {
            return "Message could not be sent. Mailer Error: {$this->mail->ErrorInfo}";
        }
    }
    private function configure(){
        try{
            $this->mail->SMTPDebug = false;
            $this->mail->isSMTP();
            $this->mail->Host       = 'smtp.titan.email';
            $this->mail->SMTPAuth   = true;
            $this->mail->Username   = 'no-reply@maplewestimmigration.com';
            $this->mail->Password   = 'jDSQrZzV4RLq!hx';
            $this->mail->SMTPSecure = 'tls';
            $this->mail->Port = 587;
            $this->mail->setFrom('no-reply@maplewestimmigration.com', $this->fromUsername);
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
            $this->mail->Body    = $this->load->view("mailer/$templateName",$values,true);
            $this->mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
        }
        catch (Exception $e) {
            return "Message could not be sent. Mailer Error: {$this->mail->ErrorInfo}";
        }
        
    }

}
