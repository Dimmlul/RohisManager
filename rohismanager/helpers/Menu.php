<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbartopleft = array(
		array(
			'path' => 'home', 
			'label' => 'Home', 
			'icon' => '<i class="fa fa-home "></i>'
		),
		
		array(
			'path' => 'pengumuman', 
			'label' => 'Pengumuman', 
			'icon' => '<i class="fa fa-map-signs "></i>'
		),
		
		array(
			'path' => 'kegiatan', 
			'label' => 'Kegiatan', 
			'icon' => '<i class="fa fa-map "></i>'
		),
		
		array(
			'path' => 'dokumentasi', 
			'label' => 'Dokumentasi', 
			'icon' => '<i class="fa fa-camera-retro "></i>'
		),
		
		array(
			'path' => 'absensi_kegiatan', 
			'label' => 'Absensi Kegiatan', 
			'icon' => '<i class="fa fa-check-square-o "></i>'
		),
		
		array(
			'path' => 'kas', 
			'label' => 'Kas', 
			'icon' => '<i class="fa fa-money "></i>'
		),
		
		array(
			'path' => 'inventaris', 
			'label' => 'Inventaris', 
			'icon' => '<i class="fa fa-archive "></i>','submenu' => array(
		array(
			'path' => 'inventaris', 
			'label' => 'Inventaris', 
			'icon' => '<i class="fa fa-archive "></i>'
		),
		
		array(
			'path' => 'barang', 
			'label' => 'Barang', 
			'icon' => '<i class="fa fa-sitemap "></i>'
		)
	)
		)
	);
		
			public static $navbartopright = array(
		array(
			'path' => 'user', 
			'label' => 'Anggota', 
			'icon' => '<i class="fa fa-user "></i>'
		),
		
		array(
			'path' => 'app_logs', 
			'label' => 'App Logs', 
			'icon' => '<i class="fa fa-align-justify "></i>'
		),
		
		array(
			'path' => 'role_permissions', 
			'label' => 'Role Permissions', 
			'icon' => '<i class="fa fa-align-justify "></i>'
		),
		
		array(
			'path' => 'roles', 
			'label' => 'Roles', 
			'icon' => '<i class="fa fa-align-justify "></i>'
		)
	);
		
	
	
			public static $status = array(
		array(
			"value" => "Hadir", 
			"label" => "Hadir", 
		),
		array(
			"value" => "Izin", 
			"label" => "Izin", 
		),
		array(
			"value" => "Sakit", 
			"label" => "Sakit", 
		),);
		
			public static $status_barang = array(
		array(
			"value" => "Baik", 
			"label" => "Baik", 
		),
		array(
			"value" => "Rusak Ringan", 
			"label" => "Rusak Ringan", 
		),
		array(
			"value" => "Rusak Berat", 
			"label" => "Rusak Berat", 
		),);
		
			public static $jenis_kas = array(
		array(
			"value" => "Pemasukan", 
			"label" => "Pemasukan", 
		),
		array(
			"value" => "Pengeluaran", 
			"label" => "Pengeluaran", 
		),);
		
			public static $kategori_kegiatan = array(
		array(
			"value" => "Latihan", 
			"label" => "Latihan", 
		),
		array(
			"value" => "Meeting", 
			"label" => "Meeting", 
		),
		array(
			"value" => "Acara", 
			"label" => "Acara", 
		),
		array(
			"value" => "Lomba", 
			"label" => "Lomba", 
		),
		array(
			"value" => "Kajian", 
			"label" => "Kajian", 
		),
		array(
			"value" => "Bakti Sosial", 
			"label" => "Bakti Sosial", 
		),
		array(
			"value" => "Pengajian Umum", 
			"label" => "Pengajian Umum", 
		),);
		
			public static $role = array(
		array(
			"value" => "Pengurus", 
			"label" => "Pengurus", 
		),
		array(
			"value" => "User", 
			"label" => "User", 
		),);
		
			public static $account_status = array(
		array(
			"value" => "Active", 
			"label" => "Active", 
		),
		array(
			"value" => "Pending", 
			"label" => "Pending", 
		),
		array(
			"value" => "Blocked", 
			"label" => "Blocked", 
		),);
		
			public static $role2 = array(
		array(
			"value" => "Administrator", 
			"label" => "Administrator", 
		),
		array(
			"value" => "Pengurus", 
			"label" => "Pengurus", 
		),
		array(
			"value" => "User", 
			"label" => "User", 
		),);
		
}