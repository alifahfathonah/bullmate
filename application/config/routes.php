<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['404_override'] = 'home/page_not_found';
$route['certificate/(:any)']		= "addons/certificate/generate_certificate/$1";

//course bundles
$route['course_bundles/(:any)']								= "addons/course_bundles/index/$1";
$route['course_bundles']									= "addons/course_bundles";
$route['course_bundles/search/(:any)']						= "addons/course_bundles/search/$1";
$route['course_bundles/search/(:any)/(:any)']				= "addons/course_bundles/search/$1/$1";
$route['bundle_details/(:any)/(:any)']  					= "addons/course_bundles/bundle_details/$1";
$route['bundle_details/(:any)']  							= "addons/course_bundles/bundle_details/$1/$1";
$route['course_bundles/buy/(:any)']  						= "addons/course_bundles/buy/$1";
$route['home/my_bundles']  									= "addons/course_bundles/my_bundles";
$route['home/bundle_invoice/(:any)']  						= "addons/course_bundles/invoice/$1";
//end course bundles

$route['translate_uri_dashes'] = FALSE;