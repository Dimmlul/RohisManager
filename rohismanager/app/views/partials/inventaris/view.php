<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("inventaris/add");
$can_edit = ACL::is_allowed("inventaris/edit");
$can_view = ACL::is_allowed("inventaris/view");
$can_delete = ACL::is_allowed("inventaris/delete");
?>
<?php
$comp_model = new SharedController;
$page_element_id = "view-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
//Page Data Information from Controller
$data = $this->view_data;
//$rec_id = $data['__tableprimarykey'];
$page_id = $this->route->page_id; //Page id from url
$view_title = $this->view_title;
$show_header = $this->show_header;
$show_edit_btn = $this->show_edit_btn;
$show_delete_btn = $this->show_delete_btn;
$show_export_btn = $this->show_export_btn;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="view"  data-display-type="table" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col ">
                    <h4 class="record-title">Inventaris Detail</h4>
                </div>
            </div>
        </div>
    </div>
    <?php
    }
    ?>
    <div  class="">
        <div class="container">
            <div class="row ">
                <div class="col-md-12 comp-grid">
                    <?php $this :: display_page_errors(); ?>
                    <div  class="card animated fadeIn page-content">
                        <?php
                        $counter = 0;
                        if(!empty($data)){
                        $rec_id = (!empty($data['id_barang']) ? urlencode($data['id_barang']) : null);
                        $counter++;
                        ?>
                        <div id="page-report-body" class="">
                            <table class="table table-hover table-borderless table-striped">
                                <!-- Table Body Start -->
                                <tbody class="page-data" id="page-data-<?php echo $page_element_id; ?>">
                                    <tr  class="td-nama_barang">
                                        <th class="title"> Nama Barang: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-source='<?php print_link('api/json/inventaris_nama_barang_option_list'); ?>' 
                                                data-value="<?php echo $data['nama_barang']; ?>" 
                                                data-pk="<?php echo $data['id_barang'] ?>" 
                                                data-url="<?php print_link("inventaris/editfield/" . urlencode($data['id_barang'])); ?>" 
                                                data-name="nama_barang" 
                                                data-title="Select a value ..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="select" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['nama_barang']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-jumlah_barang">
                                        <th class="title"> Jumlah Barang: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-min="0" 
                                                data-value="<?php echo $data['jumlah_barang']; ?>" 
                                                data-pk="<?php echo $data['id_barang'] ?>" 
                                                data-url="<?php print_link("inventaris/editfield/" . urlencode($data['id_barang'])); ?>" 
                                                data-name="jumlah_barang" 
                                                data-title="Enter Jumlah Barang" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="number" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['jumlah_barang']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-status_barang">
                                        <th class="title"> Status Barang: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-source='<?php echo json_encode_quote(Menu :: $status_barang); ?>' 
                                                data-value="<?php echo $data['status_barang']; ?>" 
                                                data-pk="<?php echo $data['id_barang'] ?>" 
                                                data-url="<?php print_link("inventaris/editfield/" . urlencode($data['id_barang'])); ?>" 
                                                data-name="status_barang" 
                                                data-title="Select a value ..." 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="select" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['status_barang']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-tanggal_masuk">
                                        <th class="title"> Tanggal Ditambahkan: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-flatpickr="{altFormat: 'Y-m-d H:i:s', minDate: '', maxDate: ''}" 
                                                data-value="<?php echo $data['tanggal_masuk']; ?>" 
                                                data-pk="<?php echo $data['id_barang'] ?>" 
                                                data-url="<?php print_link("inventaris/editfield/" . urlencode($data['id_barang'])); ?>" 
                                                data-name="tanggal_masuk" 
                                                data-title="Tanggal Ditambahkan" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="flatdatetimepicker" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['tanggal_masuk']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-username">
                                        <th class="title"> Ditambahkan oleh: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['username']; ?>" 
                                                data-pk="<?php echo $data['id_barang'] ?>" 
                                                data-url="<?php print_link("inventaris/editfield/" . urlencode($data['id_barang'])); ?>" 
                                                data-name="username" 
                                                data-title="--USER_NAME--" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['username']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                                <!-- Table Body End -->
                            </table>
                        </div>
                        <div class="p-3 d-flex">
                            <div class="dropup export-btn-holder mx-1">
                                <button class="btn btn-sm btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-save"></i> Export
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <?php $export_print_link = $this->set_current_page_link(array('format' => 'print')); ?>
                                    <a class="dropdown-item export-link-btn" data-format="print" href="<?php print_link($export_print_link); ?>" target="_blank">
                                        <img src="<?php print_link('assets/images/print.png') ?>" class="mr-2" /> PRINT
                                        </a>
                                        <?php $export_pdf_link = $this->set_current_page_link(array('format' => 'pdf')); ?>
                                        <a class="dropdown-item export-link-btn" data-format="pdf" href="<?php print_link($export_pdf_link); ?>" target="_blank">
                                            <img src="<?php print_link('assets/images/pdf.png') ?>" class="mr-2" /> PDF
                                            </a>
                                            <?php $export_word_link = $this->set_current_page_link(array('format' => 'word')); ?>
                                            <a class="dropdown-item export-link-btn" data-format="word" href="<?php print_link($export_word_link); ?>" target="_blank">
                                                <img src="<?php print_link('assets/images/doc.png') ?>" class="mr-2" /> WORD
                                                </a>
                                                <?php $export_csv_link = $this->set_current_page_link(array('format' => 'csv')); ?>
                                                <a class="dropdown-item export-link-btn" data-format="csv" href="<?php print_link($export_csv_link); ?>" target="_blank">
                                                    <img src="<?php print_link('assets/images/csv.png') ?>" class="mr-2" /> CSV
                                                    </a>
                                                    <?php $export_excel_link = $this->set_current_page_link(array('format' => 'excel')); ?>
                                                    <a class="dropdown-item export-link-btn" data-format="excel" href="<?php print_link($export_excel_link); ?>" target="_blank">
                                                        <img src="<?php print_link('assets/images/xsl.png') ?>" class="mr-2" /> EXCEL
                                                        </a>
                                                    </div>
                                                </div>
                                                <?php if($can_edit){ ?>
                                                <a class="btn btn-sm btn-info"  href="<?php print_link("inventaris/edit/$rec_id"); ?>">
                                                    <i class="fa fa-edit"></i> Edit
                                                </a>
                                                <?php } ?>
                                                <?php if($can_delete){ ?>
                                                <a class="btn btn-sm btn-danger record-delete-btn mx-1"  href="<?php print_link("inventaris/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Yakin mau dihapus?" data-display-style="modal">
                                                    <i class="fa fa-times"></i> Delete
                                                </a>
                                                <?php } ?>
                                            </div>
                                            <?php
                                            }
                                            else{
                                            ?>
                                            <!-- Empty Record Message -->
                                            <div class="text-muted p-3">
                                                <i class="fa fa-ban"></i> No Record Found
                                            </div>
                                            <?php
                                            }
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
