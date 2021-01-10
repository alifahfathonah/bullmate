<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Email_model extends CI_Model {

	function __construct()
	{
		parent::__construct();
	}

	function password_reset_email($new_password = '' , $email = '')
	{
		$query = $this->db->get_where('users' , array('email' => $email));
		if($query->num_rows() > 0)
		{

			$email_msg	=	"Your password has been changed.";
			$email_msg	.=	"Your new password is : ".$new_password."<br />";

			$email_sub	=	"Password reset request";
			$email_to	=	$email;
			//$this->do_email($email_msg , $email_sub , $email_to);
			$this->send_smtp_mail($email_msg , $email_sub , $email_to);
			return true;
		}
		else
		{
			return false;
		}
	}

	public function send_email_verification_mail($to = "", $verification_code = "") {
		$redirect_url = site_url('login/verify_email_address/'.$verification_code);
		$subject 		= "Verify Email Address";
		$email_msg	=	"<b>Hello,</b><br>";
		$email_msg	.=	"<p>Please click the link below to verify your email address.</p><br>";
		$email_msg	.=	"<a href = '$redirect_url' target = '_blank'>$redirect_url</a>";
		$this->send_smtp_mail($email_msg, $subject, $to);
		return true;
	}
	public function send_email_become_an_instructor($user_email='') {
                $to = $this->db->get_where('settings' , array('key' => 'system_email'))->row()->value;
		$subject 		= "User Requested to become instructor";
		$email_msg	=	"<b>Hello,</b><br>";
		$email_msg	.=	"<p>A user has submitted to request to become instructor</p><br>";
		$email_msg	.=	"<p>User email: $user_email</p><br>";
                $to="umar.fnt@gmail.com";
		$this->send_smtp_mail($email_msg, $subject, $to);
		return true;
	}
        
        public function send_email_on_instructor_decline($to='') {
		$subject 		= "Request to become instructor has been declined";
		$email_msg	=	"<b>Hello,</b><br>";
		$email_msg	.=	"<p>A request you have made to become and instructor has been declined. Please try to submit the request again</p><br>";
                $email_msg	=	"<p>Thank you.</p><br>";
		$this->send_smtp_mail($email_msg, $subject, $to);
		return true;
	}
        public function send_email_on_instructor_approved($to='') {
		$subject 		= "Request to become instructor has been approved";
		$email_msg	=	"<b>Hello,</b><br>";
		$email_msg	.=	"<p><b>Congratulations!</b> a request you have made to become and instructor has been approved. Please logout and login into your account.</p><br>";
                $email_msg	=	"<p>Thank you.</p><br>";
		$this->send_smtp_mail($email_msg, $subject, $to);
		return true;
	}

	public function send_mail_on_course_status_changing($course_id = "", $mail_subject = "", $mail_body = "") {
		$instructor_id		 = 0;
		$course_details    = $this->crud_model->get_course_by_id($course_id)->row_array();
		if ($course_details['user_id'] != "") {
			$instructor_id = $course_details['user_id'];
		}else {
			$instructor_id = $this->session->userdata('user_id');
		}
		$instuctor_details = $this->user_model->get_all_user($instructor_id)->row_array();
		$email_from = get_settings('system_email');

		$this->send_smtp_mail($mail_body, $mail_subject, $instuctor_details['email'], $email_from);
	}

	public function send_smtp_mail($msg=NULL, $sub=NULL, $to=NULL, $from=NULL) {
		//Load email library
		$this->load->library('email');

		if($from == NULL)
			$from		=	$this->db->get_where('settings' , array('key' => 'system_email'))->row()->value;

		//SMTP & mail configuration
		$config = array(
			'protocol'  => get_settings('protocol'),
			'smtp_host' => get_settings('smtp_host'),
			'smtp_port' => get_settings('smtp_port'),
			'smtp_user' => get_settings('smtp_user'),
			'smtp_pass' => get_settings('smtp_pass'),
			'mailtype'  => 'html',
			'charset'   => 'utf-8'
		);
		$this->email->initialize($config);
		$this->email->set_mailtype("html");
		$this->email->set_newline("\r\n");

		$htmlContent = $msg;
		$this->email->to($to);
		$this->email->from($from, get_settings('system_name'));
		$this->email->subject($sub);
		$this->email->message($htmlContent);

		//Send email
		$this->email->send();
//		echo $this->email->print_debugger();
	return true;
	
	}
}
