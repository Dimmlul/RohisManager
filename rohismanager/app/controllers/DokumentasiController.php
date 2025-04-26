<?php 
/**
 * Dokumentasi Page Controller
 * @category  Controller
 */
class DokumentasiController extends SecureController{
	function __construct(){
		parent::__construct();
		$this->tablename = "dokumentasi";
	}
	/**
     * List page records
     * @param $fieldname (filter record by a field) 
     * @param $fieldvalue (filter field value)
     * @return BaseView
     */
	function index($fieldname = null , $fieldvalue = null){
		$request = $this->request;
		$db = $this->GetModel();
		$tablename = $this->tablename;
		$fields = array("id_dokumentasi", 
			"nama_kegiatan", 
			"foto", 
			"deskripsi_dokumen", 
			"link", 
			"username", 
			"waktu_upload");
		$pagination = $this->get_pagination(MAX_RECORD_COUNT); // get current pagination e.g array(page_number, page_limit)
		//search table record
		if(!empty($request->search)){
			$text = trim($request->search); 
			$search_condition = "(
				dokumentasi.id_dokumentasi LIKE ? OR 
				dokumentasi.nama_kegiatan LIKE ? OR 
				dokumentasi.foto LIKE ? OR 
				dokumentasi.deskripsi_dokumen LIKE ? OR 
				dokumentasi.link LIKE ? OR 
				dokumentasi.username LIKE ? OR 
				dokumentasi.waktu_upload LIKE ?
			)";
			$search_params = array(
				"%$text%","%$text%","%$text%","%$text%","%$text%","%$text%","%$text%"
			);
			//setting search conditions
			$db->where($search_condition, $search_params);
			 //template to use when ajax search
			$this->view->search_template = "dokumentasi/search.php";
		}
		if(!empty($request->orderby)){
			$orderby = $request->orderby;
			$ordertype = (!empty($request->ordertype) ? $request->ordertype : ORDER_TYPE);
			$db->orderBy($orderby, $ordertype);
		}
		else{
			$db->orderBy("dokumentasi.id_dokumentasi", ORDER_TYPE);
		}
		if($fieldname){
			$db->where($fieldname , $fieldvalue); //filter by a single field name
		}
		$tc = $db->withTotalCount();
		$records = $db->get($tablename, $pagination, $fields);
		$records_count = count($records);
		$total_records = intval($tc->totalCount);
		$page_limit = $pagination[1];
		$total_pages = ceil($total_records / $page_limit);
		$data = new stdClass;
		$data->records = $records;
		$data->record_count = $records_count;
		$data->total_records = $total_records;
		$data->total_page = $total_pages;
		if($db->getLastError()){
			$this->set_page_error();
		}
		$page_title = $this->view->page_title = "Dokumentasi";
		$this->view->report_filename = date('Y-m-d') . '-' . $page_title;
		$this->view->report_title = $page_title;
		$this->view->report_layout = "report_layout.php";
		$this->view->report_paper_size = "A4";
		$this->view->report_orientation = "portrait";
		$this->render_view("dokumentasi/list.php", $data); //render the full page
	}
	/**
     * Load csv|json data
     * @return data
     */
	function import_data(){
		if(!empty($_FILES['file'])){
			$finfo = pathinfo($_FILES['file']['name']);
			$ext = strtolower($finfo['extension']);
			if(!in_array($ext , array('csv','json'))){
				$this->set_flash_msg("File format not supported", "danger");
			}
			else{
			$file_path = null;
			$uploader=new Uploader;
			$config = array('uploadDir' => UPLOAD_FILE_DIR, 'title' => '{{file_name}}{{date}}', 'required' => true, 'extensions' => array('csv','json'), 'filenameprefix' => 'dokumentasi_');
			$upload_data=$uploader->upload($_FILES['file'], $config);
			if($upload_data['isComplete']){
				$files = $upload_data['data'];
				$file_path = $upload_data['data']['files'][0];
			}
			if($upload_data['hasErrors']){
				$this->set_flash_msg($upload_data['errors'], "danger");
			}
				if(!empty($file_path)){
					$request = $this->request;
					$db = $this->GetModel();
					$tablename = $this->tablename;
					if($ext == "csv"){
						$options = array('table' => $tablename, 'fields' => '', 'delimiter' => ',', 'quote' => '"');
						$data = $db->loadCsvData($file_path , $options , true);
					}
					else{
						$data = $db->loadJsonData($file_path, $tablename , true);
					}
					if($db->getLastError()){
						$this->set_flash_msg($db->getLastError(), "danger");
					}
					else{
						$this->set_flash_msg("Data imported successfully", "success");
					}
				}
				else{
					$this->set_flash_msg("Error uploading file", "success");
				}
			}
		}
		else{
			$this->set_flash_msg("No file selected for upload", "warning");
		}
		$this->redirect("dokumentasi");
	}
	/**
     * View record detail 
	 * @param $rec_id (select record by table primary key) 
     * @param $value value (select record by value of field name(rec_id))
     * @return BaseView
     */
	function view($rec_id = null, $value = null){
		$request = $this->request;
		$db = $this->GetModel();
		$rec_id = $this->rec_id = urldecode($rec_id);
		$tablename = $this->tablename;
		$fields = array("id_dokumentasi", 
			"nama_kegiatan", 
			"foto", 
			"deskripsi_dokumen", 
			"link", 
			"username", 
			"waktu_upload");
		if($value){
			$db->where($rec_id, urldecode($value)); //select record based on field name
		}
		else{
			$db->where("dokumentasi.id_dokumentasi", $rec_id);; //select record based on primary key
		}
		$record = $db->getOne($tablename, $fields );
		if($record){
			$this->write_to_log("view", "true");
			$page_title = $this->view->page_title = "View  Dokumentasi";
		$this->view->report_filename = date('Y-m-d') . '-' . $page_title;
		$this->view->report_title = $page_title;
		$this->view->report_layout = "report_layout.php";
		$this->view->report_paper_size = "A4";
		$this->view->report_orientation = "portrait";
		}
		else{
			if($db->getLastError()){
				$this->set_page_error();
			}
			else{
				$this->set_page_error("No record found");
			}
		}
		return $this->render_view("dokumentasi/view.php", $record);
	}
	/**
     * Insert new record to the database table
	 * @param $formdata array() from $_POST
     * @return BaseView
     */
	function add($formdata = null){
		if($formdata){
			$db = $this->GetModel();
			$tablename = $this->tablename;
			$request = $this->request;
			//fillable fields
			$fields = $this->fields = array("nama_kegiatan","foto","deskripsi_dokumen","link","username","waktu_upload");
			$postdata = $this->format_request_data($formdata);
			$this->rules_array = array(
				'nama_kegiatan' => 'required',
				'foto' => 'required',
				'link' => 'valid_url',
				'username' => 'required',
				'waktu_upload' => 'required',
			);
			$this->sanitize_array = array(
				'nama_kegiatan' => 'sanitize_string',
				'foto' => 'sanitize_string',
				'deskripsi_dokumen' => 'sanitize_string',
				'link' => 'sanitize_string',
				'username' => 'sanitize_string',
				'waktu_upload' => 'sanitize_string',
			);
			$this->filter_vals = true; //set whether to remove empty fields
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			//Check if Duplicate Record Already Exit In The Database
			$db->where("nama_kegiatan", $modeldata['nama_kegiatan']);
			if($db->has($tablename)){
				$this->view->page_error[] = $modeldata['nama_kegiatan']." Already exist!";
			} 
			if($this->validated()){
				$rec_id = $this->rec_id = $db->insert($tablename, $modeldata);
				if($rec_id){
					$this->write_to_log("add", "true");
					$this->set_flash_msg("Berhasil ditambahkan ✅", "success");
					return	$this->redirect("dokumentasi");
				}
				else{
					$this->set_page_error();
				}
			}
		}
		$page_title = $this->view->page_title = "Add New Dokumentasi";
		$this->render_view("dokumentasi/add.php");
	}
	/**
     * Update table record with formdata
	 * @param $rec_id (select record by table primary key)
	 * @param $formdata array() from $_POST
     * @return array
     */
	function edit($rec_id = null, $formdata = null){
		$request = $this->request;
		$db = $this->GetModel();
		$this->rec_id = $rec_id;
		$tablename = $this->tablename;
		 //editable fields
		$fields = $this->fields = array("id_dokumentasi","nama_kegiatan","foto","deskripsi_dokumen","link");
		if($formdata){
			$postdata = $this->format_request_data($formdata);
			$this->rules_array = array(
				'nama_kegiatan' => 'required',
				'foto' => 'required',
				'link' => 'valid_url',
			);
			$this->sanitize_array = array(
				'nama_kegiatan' => 'sanitize_string',
				'foto' => 'sanitize_string',
				'deskripsi_dokumen' => 'sanitize_string',
				'link' => 'sanitize_string',
			);
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			//Check if Duplicate Record Already Exit In The Database
			if(isset($modeldata['nama_kegiatan'])){
				$db->where("nama_kegiatan", $modeldata['nama_kegiatan'])->where("id_dokumentasi", $rec_id, "!=");
				if($db->has($tablename)){
					$this->view->page_error[] = $modeldata['nama_kegiatan']." Already exist!";
				}
			} 
			if($this->validated()){
				//get files link to be deleted before updating records
				$file_fields = array('foto'); //list of file fields
				$db->where("dokumentasi.id_dokumentasi", $rec_id);;
				$fields_file_paths = $db->getOne($tablename, $file_fields);
				$db->where("dokumentasi.id_dokumentasi", $rec_id);;
				$bool = $db->update($tablename, $modeldata);
				$numRows = $db->getRowCount(); //number of affected rows. 0 = no record field updated
				if($bool && $numRows){
					$this->write_to_log("edit", "true");
					if(!empty($fields_file_paths)){
						foreach($file_fields as $field){
							$files = explode(',', $fields_file_paths[$field]); // for list of files separated by comma
							foreach($files as $file){
								//delete files which are not among the submited post data
								if(stripos($modeldata[$field], $file) === false ){
									$file_dir_path = str_ireplace( SITE_ADDR , "" , $file ) ;
									@unlink($file_dir_path);
								}
							}
						}
					}
					$this->set_flash_msg("Record updated successfully", "success");
					return $this->redirect("dokumentasi");
				}
				else{
					if($db->getLastError()){
						$this->set_page_error();
					}
					elseif(!$numRows){
						//not an error, but no record was updated
						$page_error = "No record updated";
						$this->set_page_error($page_error);
						$this->set_flash_msg($page_error, "warning");
						return	$this->redirect("dokumentasi");
					}
				}
			}
		}
		$db->where("dokumentasi.id_dokumentasi", $rec_id);;
		$data = $db->getOne($tablename, $fields);
		$page_title = $this->view->page_title = "Edit  Dokumentasi";
		if(!$data){
			$this->set_page_error();
		}
		return $this->render_view("dokumentasi/edit.php", $data);
	}
	/**
     * Update single field
	 * @param $rec_id (select record by table primary key)
	 * @param $formdata array() from $_POST
     * @return array
     */
	function editfield($rec_id = null, $formdata = null){
		$db = $this->GetModel();
		$this->rec_id = $rec_id;
		$tablename = $this->tablename;
		//editable fields
		$fields = $this->fields = array("id_dokumentasi","nama_kegiatan","foto","deskripsi_dokumen","link");
		$page_error = null;
		if($formdata){
			$postdata = array();
			$fieldname = $formdata['name'];
			$fieldvalue = $formdata['value'];
			$postdata[$fieldname] = $fieldvalue;
			$postdata = $this->format_request_data($postdata);
			$this->rules_array = array(
				'nama_kegiatan' => 'required',
				'foto' => 'required',
				'link' => 'valid_url',
			);
			$this->sanitize_array = array(
				'nama_kegiatan' => 'sanitize_string',
				'foto' => 'sanitize_string',
				'deskripsi_dokumen' => 'sanitize_string',
				'link' => 'sanitize_string',
			);
			$this->filter_rules = true; //filter validation rules by excluding fields not in the formdata
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			//Check if Duplicate Record Already Exit In The Database
			if(isset($modeldata['nama_kegiatan'])){
				$db->where("nama_kegiatan", $modeldata['nama_kegiatan'])->where("id_dokumentasi", $rec_id, "!=");
				if($db->has($tablename)){
					$this->view->page_error[] = $modeldata['nama_kegiatan']." Already exist!";
				}
			} 
			if($this->validated()){
				$db->where("dokumentasi.id_dokumentasi", $rec_id);;
				$bool = $db->update($tablename, $modeldata);
				$numRows = $db->getRowCount();
				if($bool && $numRows){
					$this->write_to_log("edit", "true");
					return render_json(
						array(
							'num_rows' =>$numRows,
							'rec_id' =>$rec_id,
						)
					);
				}
				else{
					if($db->getLastError()){
						$page_error = $db->getLastError();
					}
					elseif(!$numRows){
						$page_error = "No record updated";
					}
					render_error($page_error);
				}
			}
			else{
				render_error($this->view->page_error);
			}
		}
		return null;
	}
	/**
     * Delete record from the database
	 * Support multi delete by separating record id by comma.
     * @return BaseView
     */
	function delete($rec_id = null){
		Csrf::cross_check();
		$request = $this->request;
		$db = $this->GetModel();
		$tablename = $this->tablename;
		$this->rec_id = $rec_id;
		//form multiple delete, split record id separated by comma into array
		$arr_rec_id = array_map('trim', explode(",", $rec_id));
		//list of file fields
		$file_fields = array('foto'); 
		foreach( $arr_id as $rec_id ){
			$db->where("dokumentasi.id_dokumentasi", $arr_rec_id, "in");;
		}
		//get files link to be deleted before deleting records
		$files = $db->get($tablename, null , $file_fields); 
		$db->where("dokumentasi.id_dokumentasi", $arr_rec_id, "in");
		$bool = $db->delete($tablename);
		if($bool){
			$this->write_to_log("delete", "true");
			//delete files after record has been deleted
			foreach($file_fields as $field){
				$this->delete_record_files($files, $field);
			}
			$this->set_flash_msg("Berhasil dihapus ✅  ", "success");
		}
		elseif($db->getLastError()){
			$page_error = $db->getLastError();
			$this->set_flash_msg($page_error, "danger");
		}
		return	$this->redirect("dokumentasi");
	}
}
