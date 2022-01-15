<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] 		= 'Home';
$route['404_override'] 				= 'Pages/error_404';

// Admin system router
$route['Gopanel'] 					= 'gopanel/Dashboard';
$route['gopanel'] 					= 'gopanel/Dashboard';
$route['gopanel/login'] 			= 'gopanel/auth/login';


//Static pages
$route['404']						= 'Pages/error_404';
$route['haqqimizda']				= 'Pages/about';
$route['elaqe']				    	= 'Pages/contact';
$route['gallery']					= 'Pages/gallery';


// $route['services/(:any)']			= 'Pages/services/$1';
$route['layiheler']			        = 'Pages/projects';
$route['layiheler/(:any)']	        = 'Pages/project_single/$1';


// $route['services/(:any)']			= 'Pages/services/$1';
$route['xidmetler']			        = 'Pages/services';
$route['xidmetler/(:any)']	        = 'Pages/service_single/$1';

// Other pages
// Blog
$route['bloq']						= 'Blog/index';
$route['bloq/page/(:any)']			= 'Blog/page/$1';
$route['bloq/(:any)']				= 'Blog/index/$1';


//Products
$route['mehsullar']						= 'Products/index';
$route['mehsullar/(:any)']				= 'Products/index/$1';
$route['mehsullar/(:any)/(:any)']		= 'Products/index/$1';



// Ajax route
$route['order']						= 'Process/order';
$route['newsletter']				= 'Process/newsletter';
$route['contactFrom']				= 'Process/contactfrom';
$route['test']						= 'Process/test';




// System rotue
$route['404']						= 'Pages/error_404';
$route['lang/(:any)']				= 'Process/langChange/$1';

$route['translate_uri_dashes'] 		= FALSE;