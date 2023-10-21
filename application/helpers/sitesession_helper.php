<?php

defined('BASEPATH') OR exit('No direct script access allowed');

if(!function_exists('check_session'))
{
	function check_session()
	{
		$CI =& get_instance();
		if($CI->session->has_userdata('uid'))
		{
			return true;
		}
		else
		{
			redirect('/login');
			exit;
		}
	}
}

