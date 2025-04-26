<?php 

/**
 * SharedController Controller
 * @category  Controller / Model
 */
class SharedController extends BaseController{
	
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
     * inventaris_nama_barang_option_list Model Action
     * @return array
     */
	function inventaris_nama_barang_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT nama_barang AS value,nama_barang AS label FROM barang ORDER BY id_barang";
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
     * user_jabatan_option_list Model Action
     * @return array
     */
	function user_jabatan_option_list(){
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
	* barchart_ Model Action
	* @return array
	*/
	function barchart_(){
		
		$db = $this->GetModel();
		$chart_data = array(
			"labels"=> array(),
			"datasets"=> array(),
		);
		
		//set query result for dataset 1
		$sqltext = "SELECT  i.nama_barang, i.jumlah_barang FROM inventaris AS i";
		$queryparams = null;
		$dataset1 = $db->rawQuery($sqltext, $queryparams);
		$dataset_data =  array_column($dataset1, 'jumlah_barang');
		$dataset_labels =  array_column($dataset1, 'nama_barang');
		$chart_data["labels"] = array_unique(array_merge($chart_data["labels"], $dataset_labels));
		$chart_data["datasets"][] = $dataset_data;

		return $chart_data;
	}

	/**
	* piechart_ Model Action
	* @return array
	*/
	function piechart_(){
		
		$db = $this->GetModel();
		$chart_data = array(
			"labels"=> array(),
			"datasets"=> array(),
		);
		
		//set query result for dataset 1
		$sqltext = "SELECT  COUNT(i.nama_barang) AS count_of_nama_barang, i.status_barang FROM inventaris AS i GROUP BY i.status_barang";
		$queryparams = null;
		$dataset1 = $db->rawQuery($sqltext, $queryparams);
		$dataset_data =  array_column($dataset1, 'count_of_nama_barang');
		$dataset_labels =  array_column($dataset1, 'status_barang');
		$chart_data["labels"] = array_unique(array_merge($chart_data["labels"], $dataset_labels));
		$chart_data["datasets"][] = $dataset_data;

		return $chart_data;
	}

}
