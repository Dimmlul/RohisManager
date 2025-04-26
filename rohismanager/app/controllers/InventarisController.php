<?php 
/**
 * Inventaris Page Controller
 * @category  Controller
 */
class InventarisController extends SecureController{
	function __construct(){
		parent::__construct();
		$this->tablename = "inventaris";
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
		$fields = array("id_barang", 
			"nama_barang", 
			"jumlah_barang", 
			"status_barang", 
			"username", 
			"tanggal_masuk");
		$pagination = $this->get_pagination(MAX_RECORD_COUNT); // get current pagination e.g array(page_number, page_limit)
		//search table record
		if(!empty($request->search)){
			$text = trim($request->search); 
			$search_condition = "(
				inventaris.id_barang LIKE ? OR 
				inventaris.nama_barang LIKE ? OR 
				inventaris.jumlah_barang LIKE ? OR 
				inventaris.status_barang LIKE ? OR 
				inventaris.username LIKE ? OR 
				inventaris.tanggal_masuk LIKE ?
			)";
			$search_params = array(
				"%$text%","%$text%","%$text%","%$text%","%$text%","%$text%"
			);
			//setting search conditions
			$db->where($search_condition, $search_params);
			 //template to use when ajax search
			$this->view->search_template = "inventaris/search.php";
		}
		if(!empty($request->orderby)){
			$orderby = $request->orderby;
			$ordertype = (!empty($request->ordertype) ? $request->ordertype : ORDER_TYPE);
			$db->orderBy($orderby, $ordertype);
		}
		else{
			$db->orderBy("inventaris.id_barang", ORDER_TYPE);
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
		$page_title = $this->view->page_title = "Inventaris";
		$this->view->report_filename = date('Y-m-d') . '-' . $page_title;
		$this->view->report_title = $page_title;
		$this->view->report_layout = "report_layout.php";
		$this->view->report_paper_size = "A4";
		$this->view->report_orientation = "portrait";
		$view_name = (is_ajax() ? "inventaris/ajax-list.php" : "inventaris/list.php");
		$this->render_view($view_name, $data);
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
			$config = array('uploadDir' => UPLOAD_FILE_DIR, 'title' => '{{file_name}}{{date}}', 'required' => true, 'extensions' => array('csv','json'), 'filenameprefix' => 'inventaris_');
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
		$this->redirect("inventaris");
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
		$fields = array("id_barang", 
			"nama_barang", 
			"jumlah_barang", 
			"status_barang", 
			"tanggal_masuk", 
			"username");
		if($value){
			$db->where($rec_id, urldecode($value)); //select record based on field name
		}
		else{
			$db->where("inventaris.id_barang", $rec_id);; //select record based on primary key
		}
		$record = $db->getOne($tablename, $fields );
		if($record){
			$this->write_to_log("view", "true");
			$page_title = $this->view->page_title = "View  Inventaris";
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
		return $this->render_view("inventaris/view.php", $record);
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
			$fields = $this->fields = array("nama_barang","jumlah_barang","status_barang","username","tanggal_masuk");
			$postdata = $this->format_request_data($formdata);
			$this->rules_array = array(
				'nama_barang' => 'required',
				'jumlah_barang' => 'required|numeric|min_numeric,0',
				'status_barang' => 'required',
				'username' => 'required',
				'tanggal_masuk' => 'required',
			);
			$this->sanitize_array = array(
				'nama_barang' => 'sanitize_string',
				'jumlah_barang' => 'sanitize_string',
				'status_barang' => 'sanitize_string',
				'username' => 'sanitize_string',
				'tanggal_masuk' => 'sanitize_string',
			);
			$this->filter_vals = true; //set whether to remove empty fields
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			//Check if Duplicate Record Already Exit In The Database
			$db->where("nama_barang", $modeldata['nama_barang']);
			if($db->has($tablename)){
				$this->view->page_error[] = $modeldata['nama_barang']." Already exist!";
			} 
			if($this->validated()){
				$rec_id = $this->rec_id = $db->insert($tablename, $modeldata);
				if($rec_id){
					$this->write_to_log("add", "true");
					$this->set_flash_msg("Berhasil ditambahkan ✅", "success");
					return	$this->redirect("inventaris");
				}
				else{
					$this->set_page_error();
				}
			}
		}
		$page_title = $this->view->page_title = "Add New Inventaris";
		$this->render_view("inventaris/add.php");
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
		$fields = $this->fields = array("id_barang","nama_barang","jumlah_barang","status_barang","username","tanggal_masuk");
		if($formdata){
			$postdata = $this->format_request_data($formdata);
			$this->rules_array = array(
				'nama_barang' => 'required',
				'jumlah_barang' => 'required|numeric|min_numeric,0',
				'status_barang' => 'required',
				'username' => 'required',
				'tanggal_masuk' => 'required',
			);
			$this->sanitize_array = array(
				'nama_barang' => 'sanitize_string',
				'jumlah_barang' => 'sanitize_string',
				'status_barang' => 'sanitize_string',
				'username' => 'sanitize_string',
				'tanggal_masuk' => 'sanitize_string',
			);
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			//Check if Duplicate Record Already Exit In The Database
			if(isset($modeldata['nama_barang'])){
				$db->where("nama_barang", $modeldata['nama_barang'])->where("id_barang", $rec_id, "!=");
				if($db->has($tablename)){
					$this->view->page_error[] = $modeldata['nama_barang']." Already exist!";
				}
			} 
			if($this->validated()){
				$db->where("inventaris.id_barang", $rec_id);;
				$bool = $db->update($tablename, $modeldata);
				$numRows = $db->getRowCount(); //number of affected rows. 0 = no record field updated
				if($bool && $numRows){
					$this->write_to_log("edit", "true");
					$this->set_flash_msg("Record updated successfully", "success");
					return $this->redirect("inventaris");
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
						return	$this->redirect("inventaris");
					}
				}
			}
		}
		$db->where("inventaris.id_barang", $rec_id);;
		$data = $db->getOne($tablename, $fields);
		$page_title = $this->view->page_title = "Edit  Inventaris";
		if(!$data){
			$this->set_page_error();
		}
		return $this->render_view("inventaris/edit.php", $data);
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
		$fields = $this->fields = array("id_barang","nama_barang","jumlah_barang","status_barang","username","tanggal_masuk");
		$page_error = null;
		if($formdata){
			$postdata = array();
			$fieldname = $formdata['name'];
			$fieldvalue = $formdata['value'];
			$postdata[$fieldname] = $fieldvalue;
			$postdata = $this->format_request_data($postdata);
			$this->rules_array = array(
				'nama_barang' => 'required',
				'jumlah_barang' => 'required|numeric|min_numeric,0',
				'status_barang' => 'required',
				'username' => 'required',
				'tanggal_masuk' => 'required',
			);
			$this->sanitize_array = array(
				'nama_barang' => 'sanitize_string',
				'jumlah_barang' => 'sanitize_string',
				'status_barang' => 'sanitize_string',
				'username' => 'sanitize_string',
				'tanggal_masuk' => 'sanitize_string',
			);
			$this->filter_rules = true; //filter validation rules by excluding fields not in the formdata
			$modeldata = $this->modeldata = $this->validate_form($postdata);
			//Check if Duplicate Record Already Exit In The Database
			if(isset($modeldata['nama_barang'])){
				$db->where("nama_barang", $modeldata['nama_barang'])->where("id_barang", $rec_id, "!=");
				if($db->has($tablename)){
					$this->view->page_error[] = $modeldata['nama_barang']." Already exist!";
				}
			} 
			if($this->validated()){
				$db->where("inventaris.id_barang", $rec_id);;
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
		$db->where("inventaris.id_barang", $arr_rec_id, "in");
		$bool = $db->delete($tablename);
		if($bool){
			$this->write_to_log("delete", "true");
			$this->set_flash_msg("Berhasil dihapus ✅  ", "success");
		}
		elseif($db->getLastError()){
			$page_error = $db->getLastError();
			$this->set_flash_msg($page_error, "danger");
		}
		return	$this->redirect("inventaris");
	}
}
