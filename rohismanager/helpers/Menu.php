<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbarsideleft = array(
		array(
			'path' => 'home', 
			'label' => 'Home', 
			'icon' => '<i class="fa fa-home "></i>'
		),
		
		array(
			'path' => 'kas', 
			'label' => 'Kas', 
			'icon' => '<i class="fa fa-money "></i>'
		),
		
		array(
			'path' => 'inventaris', 
			'label' => 'Inventaris', 
			'icon' => '<i class="fa fa-archive "></i>'
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
		)
	);
		
			public static $navbartopleft = array(
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
		
			public static $navbartopright = array(
		array(
			'path' => 'jabatan', 
			'label' => 'Jabatan', 
			'icon' => '<i class="fa fa-user-secret "></i>'
		),
		
		array(
			'path' => 'pengurus', 
			'label' => 'Pengurus', 
			'icon' => '<i class="fa fa-user-plus "></i>'
		),
		
		array(
			'path' => 'user', 
			'label' => 'Anggota', 
			'icon' => '<i class="fa fa-users "></i>'
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
		),
		array(
			"value" => "Alpha", 
			"label" => "Alpha", 
		),
		array(
			"value" => "Dispen", 
			"label" => "Dispen", 
		),);
		
			public static $nama_barang = array(
		array(
			"value" => "Sapu", 
			"label" => "Sapu", 
		),
		array(
			"value" => "Kipas", 
			"label" => "Kipas", 
		),
		array(
			"value" => "Vacuum", 
			"label" => "Vacuum", 
		),
		array(
			"value" => "Pel  Lantai", 
			"label" => "Pel  Lantai", 
		),
		array(
			"value" => "Ember", 
			"label" => "Ember", 
		),
		array(
			"value" => "Karpet Masjid", 
			"label" => "Karpet Masjid", 
		),
		array(
			"value" => "Mimbar", 
			"label" => "Mimbar", 
		),
		array(
			"value" => "Mikrofon", 
			"label" => "Mikrofon", 
		),
		array(
			"value" => "Speaker", 
			"label" => "Speaker", 
		),
		array(
			"value" => "Lampu", 
			"label" => "Lampu", 
		),
		array(
			"value" => "Al-Quran", 
			"label" => "Al-Quran", 
		),
		array(
			"value" => "Jam Dinding", 
			"label" => "Jam Dinding", 
		),
		array(
			"value" => "Bedug", 
			"label" => "Bedug", 
		),);
		
			public static $status_barang = array(
		array(
			"value" => "Bagus", 
			"label" => "Bagus", 
		),
		array(
			"value" => "Beberapa Rusak", 
			"label" => "Beberapa Rusak", 
		),
		array(
			"value" => "Rusak", 
			"label" => "Rusak", 
		),);
		
			public static $jenis_kas = array(
		array(
			"value" => "pemasukan", 
			"label" => "Pemasukan", 
		),
		array(
			"value" => "pengeluaran", 
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
			"value" => "Sambutan", 
			"label" => "Sambutan", 
		),
		array(
			"value" => "Lomba", 
			"label" => "Lomba", 
		),);
		
}