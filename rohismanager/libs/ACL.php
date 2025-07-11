<?php
/**
 * Page Access Control
 * @category  RBAC Helper
 */
defined('ROOT') or exit('No direct script access allowed');
class ACL
{
	

	/**
	 * Array of user roles and page access 
	 * Use "*" to grant all access right to particular user role
	 * @var array
	 */
	public static $role_pages = array(
			'administrator' =>
						array(
							'absensi_kegiatan' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'app_logs' => array('list'),
							'inventaris' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'jabatan' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'kas' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'kegiatan' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'pengumuman' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'user' => array('list','view','add','edit', 'editfield','delete','import_data','userregister','accountedit','accountview'),
							'dokumentasi' => array('list','view','add','edit', 'editfield','delete','import_data','list','view','add','edit', 'editfield','delete'),
							'barang' => array('list','view','add','edit', 'editfield','delete','list','view','add','edit', 'editfield','delete')
						),
		
			'pengurus' =>
						array(
							'absensi_kegiatan' => array('list','add','edit', 'editfield','delete'),
							'inventaris' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'jabatan' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'kas' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'kegiatan' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'pengumuman' => array('list','view','add','edit', 'editfield','delete','import_data'),
							'user' => array('list','accountedit'),
							'dokumentasi' => array('list','view','add','edit', 'editfield','delete','import_data','list','view','add','edit', 'editfield','delete'),
							'barang' => array('list','view','add','edit', 'editfield','delete','list','view','add','edit', 'editfield','delete')
						),
		
			'user' =>
						array(
							'absensi_kegiatan' => array('list','add'),
							'inventaris' => array('list'),
							'kas' => array('list'),
							'kegiatan' => array('list'),
							'pengumuman' => array('list'),
							'user' => array('list','accountedit'),
							'dokumentasi' => array('list','view','list'),
							'barang' => array('list','list')
						)
		);

	/**
	 * Current user role name
	 * @var string
	 */
	public static $user_role = null;

	/**
	 * pages to Exclude From Access Validation Check
	 * @var array
	 */
	public static $exclude_page_check = array("", "index", "home", "account", "info", "masterdetail");

	/**
	 * Init page properties
	 */
	public function __construct()
	{	
		if(!empty(USER_ROLE)){
			self::$user_role = USER_ROLE;
		}
	}

	/**
	 * Check page path against user role permissions
	 * if user has access return AUTHORIZED
	 * if user has NO access return UNAUTHORIZED
	 * if user has NO role return NO_ROLE
	 * @return string
	 */
	public static function GetPageAccess($path)
	{
		$rp = self::$role_pages;
		if ($rp == "*") {
			return AUTHORIZED; // Grant access to any user
		} else {
			$path = strtolower(trim($path, '/'));

			$arr_path = explode("/", $path);
			$page = strtolower($arr_path[0]);

			//If user is accessing excluded access contrl pages
			if (in_array($page, self::$exclude_page_check)) {
				return AUTHORIZED;
			}

			$user_role = strtolower(USER_ROLE); // Get user defined role from session value
			if (array_key_exists($user_role, $rp)) {
				$action = (!empty($arr_path[1]) ? $arr_path[1] : "list");
				if ($action == "index") {
					$action = "list";
				}
				//Check if user have access to all pages or user have access to all page actions
				if ($rp[$user_role] == "*" || (!empty($rp[$user_role][$page]) && $rp[$user_role][$page] == "*")) {
					return AUTHORIZED;
				} else {
					if (!empty($rp[$user_role][$page]) && in_array($action, $rp[$user_role][$page])) {
						return AUTHORIZED;
					}
				}
				return FORBIDDEN;
			} else {
				//User does not have any role.
				return NOROLE;
			}
		}
	}

	/**
	 * Check if user role has access to a page
	 * @return Bool
	 */
	public static function is_allowed($path)
	{
		return (self::GetPageAccess($path) == AUTHORIZED);
	}

}
