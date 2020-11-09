<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['404_override'] = 'home/page_not_found';
$route['certificate/(:any)']		= "addons/certificate/generate_certificate/$1";
$route['translate_uri_dashes'] = FALSE;

$route['academy/terms/instructor']= 'home/terms_instructor';
$route['/academy/terms/student']= 'home/terms_student';