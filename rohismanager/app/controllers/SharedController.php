<?php 

/**
 * SharedController Controller
 * @category  Controller / Model
 */
class SharedController extends BaseController{
	
	/**
     * absensi_kegiatan_username_option_list Model Action
     * @return array
     */
	function absensi_kegiatan_username_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT username AS value,username AS label FROM user ORDER BY username";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * absensi_kegiatan_nama_kegiatan_option_list Model Action
     * @return array
     */
	function absensi_kegiatan_nama_kegiatan_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT nama_kegiatan AS value,nama_kegiatan AS label FROM kegiatan ORDER BY nama_kegiatan";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * inventaris_id_pengurus_option_list Model Action
     * @return array
     */
	function inventaris_id_pengurus_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_pengurus AS value,username AS label FROM pengurus ORDER BY id_pengurus";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * inventaris_nama_barang_value_exist Model Action
     * @return array
     */
	function inventaris_nama_barang_value_exist($val){
		$db = $this->GetModel();
		$db->where("nama_barang", $val);
		$exist = $db->has("inventaris");
		return $exist;
	}

	/**
     * kas_id_pengurus_option_list Model Action
     * @return array
     */
	function kas_id_pengurus_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_pengurus AS value,username AS label FROM pengurus ORDER BY username";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * kegiatan_id_pengurus_option_list Model Action
     * @return array
     */
	function kegiatan_id_pengurus_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT id_pengurus AS value,username AS label FROM pengurus ORDER BY id_pengurus";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * pengumuman_nama_kegiatan_option_list Model Action
     * @return array
     */
	function pengumuman_nama_kegiatan_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT nama_kegiatan AS value,nama_kegiatan AS label FROM kegiatan ORDER BY id_kegiatan";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * pengumuman_tanggal_kegiatan_option_list Model Action
     * @return array
     */
	function pengumuman_tanggal_kegiatan_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT tanggal_kegiatan AS value,tanggal_kegiatan AS label FROM kegiatan ORDER BY tanggal_kegiatan";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * pengurus_jabatan_option_list Model Action
     * @return array
     */
	function pengurus_jabatan_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT nama_jabatan AS value,nama_jabatan AS label FROM jabatan ORDER BY id_jabatan";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * user_username_value_exist Model Action
     * @return array
     */
	function user_username_value_exist($val){
		$db = $this->GetModel();
		$db->where("username", $val);
		$exist = $db->has("user");
		return $exist;
	}

	/**
     * user_email_value_exist Model Action
     * @return array
     */
	function user_email_value_exist($val){
		$db = $this->GetModel();
		$db->where("email", $val);
		$exist = $db->has("user");
		return $exist;
	}

	/**
     * dokumentasi_nama_kegiatan_option_list Model Action
     * @return array
     */
	function dokumentasi_nama_kegiatan_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT nama_kegiatan AS value,nama_kegiatan AS label FROM kegiatan ORDER BY nama_kegiatan";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * dokumentasi_nama_kegiatan_value_exist Model Action
     * @return array
     */
	function dokumentasi_nama_kegiatan_value_exist($val){
		$db = $this->GetModel();
		$db->where("nama_kegiatan", $val);
		$exist = $db->has("dokumentasi");
		return $exist;
	}

	/**
	* piechart_kas Model Action
	* @return array
	*/
	function piechart_kas(){
		
		$db = $this->GetModel();
		$chart_data = array(
			"labels"=> array(),
			"datasets"=> array(),
		);
		
		//set query result for dataset 1
		$sqltext = "SELECT  k.id_kas, k.id_pengurus, k.jumlah_kas, k.jenis_kas, k.deskripsi, k.tanggal, SUM(k.total_kas) AS sum_of_total_kas FROM kas AS k GROUP BY k.jenis_kas";
		$queryparams = null;
		$dataset1 = $db->rawQuery($sqltext, $queryparams);
		$dataset_data =  array_column($dataset1, 'jumlah_kas');
		$dataset_labels =  array_column($dataset1, 'jenis_kas');
		$chart_data["labels"] = array_unique(array_merge($chart_data["labels"], $dataset_labels));
		$chart_data["datasets"][] = $dataset_data;

		return $chart_data;
	}

	/**
	* piechart_inventaris Model Action
	* @return array
	*/
	function piechart_inventaris(){
		
		$db = $this->GetModel();
		$chart_data = array(
			"labels"=> array(),
			"datasets"=> array(),
		);
		
		//set query result for dataset 1
		$sqltext = "SELECT  i.id_barang, i.id_pengurus, i.nama_barang, SUM(i.jumlah_barang) AS sum_of_jumlah_barang, i.status_barang, i.tanggal_masuk FROM inventaris AS i GROUP BY i.nama_barang";
		$queryparams = null;
		$dataset1 = $db->rawQuery($sqltext, $queryparams);
		$dataset_data =  array_column($dataset1, 'sum_of_jumlah_barang');
		$dataset_labels =  array_column($dataset1, 'nama_barang');
		$chart_data["labels"] = array_unique(array_merge($chart_data["labels"], $dataset_labels));
		$chart_data["datasets"][] = $dataset_data;

		return $chart_data;
	}

}
