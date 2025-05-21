<?php
$comp_model = new SharedController;
$page_element_id = "edit-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
$data = $this->view_data;
//$rec_id = $data['__tableprimarykey'];
$page_id = $this->route->page_id;
$show_header = $this->show_header;
$view_title = $this->view_title;
$redirect_to = $this->redirect_to;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="edit"  data-display-type="" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col ">
                    <h4 class="record-title">Edit Dokumentasi</h4>
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
                <div class="col-md-7 comp-grid">
                    <?php $this :: display_page_errors(); ?>
                    <div  class="bg-light p-3 animated fadeIn page-content">
                        <form novalidate  id="" role="form" enctype="multipart/form-data"  class="form page-form form-horizontal needs-validation" action="<?php print_link("dokumentasi/edit/$page_id/?csrf_token=$csrf_token"); ?>" method="post">
                            <div>
                                <div class="form-group ">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <label class="control-label" for="nama_kegiatan">Nama Kegiatan <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-sm-8">
                                            <div class="">
                                                <select required=""  id="ctrl-nama_kegiatan" name="nama_kegiatan"  placeholder="Select a value ..."    class="custom-select"  data-url="api/json/dokumentasi_nama_kegiatan_value_exist/" data-loading-msg="Checking availability ..." data-available-msg="Available" data-unavailable-msg="Not available">
                                                    <option value="">Select a value ...</option>
                                                    <?php
                                                    $rec = $data['nama_kegiatan'];
                                                    $nama_kegiatan_options = $comp_model -> dokumentasi_nama_kegiatan_option_list();
                                                    if(!empty($nama_kegiatan_options)){
                                                    foreach($nama_kegiatan_options as $option){
                                                    $value = (!empty($option['value']) ? $option['value'] : null);
                                                    $label = (!empty($option['label']) ? $option['label'] : $value);
                                                    $selected = ( $value == $rec ? 'selected' : null );
                                                    ?>
                                                    <option 
                                                        <?php echo $selected; ?> value="<?php echo $value; ?>"><?php echo $label; ?>
                                                    </option>
                                                    <?php
                                                    }
                                                    }
                                                    ?>
                                                </select>
                                                <div class="check-status"></div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <label class="control-label" for="foto">Foto <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-sm-8">
                                            <div class="">
                                                <div class="dropzone required" input="#ctrl-foto" fieldname="foto"    data-multiple="true" dropmsg="Pilih dan Upload Foto"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg,.zip,.rar,.mp4,.mov,.pdf" filesize="10240" maximum="500">
                                                    <input name="foto" id="ctrl-foto" required="" class="dropzone-input form-control" value="<?php  echo $data['foto']; ?>" type="text"  />
                                                        <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                        <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                    </div>
                                                </div>
                                                <?php Html :: uploaded_files_list($data['foto'], '#ctrl-foto', 'true'); ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <label class="control-label" for="deskripsi_dokumen">Deskripsi Dokumen </label>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="">
                                                    <textarea placeholder="Enter Deskripsi Dokumen" id="ctrl-deskripsi_dokumen"  rows="5" name="deskripsi_dokumen" class=" form-control"><?php  echo $data['deskripsi_dokumen']; ?></textarea>
                                                    <!--<div class="invalid-feedback animated bounceIn text-center">Please enter text</div>-->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <label class="control-label" for="link">Link Eksternal </label>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="input-group">
                                                    <input id="ctrl-link"  value="<?php  echo $data['link']; ?>" type="url" placeholder="Tambah Link"  name="link"  class="form-control " />
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i class="fa fa-external-link "></i></span>
                                                        </div>
                                                    </div>
                                                    <small class="form-text">Google Drive / Youtube link (opsional)</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-ajax-status"></div>
                                    <div class="form-group text-center">
                                        <button class="btn btn-primary" type="submit">
                                            Update
                                            <i class="fa fa-send"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
