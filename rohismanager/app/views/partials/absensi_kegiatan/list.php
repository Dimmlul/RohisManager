<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("absensi_kegiatan/add");
$can_edit = ACL::is_allowed("absensi_kegiatan/edit");
$can_view = ACL::is_allowed("absensi_kegiatan/view");
$can_delete = ACL::is_allowed("absensi_kegiatan/delete");
?>
<?php
$comp_model = new SharedController;
$page_element_id = "list-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
//Page Data From Controller
$view_data = $this->view_data;
$records = $view_data->records;
$record_count = $view_data->record_count;
$total_records = $view_data->total_records;
$field_name = $this->route->field_name;
$field_value = $this->route->field_value;
$view_title = $this->view_title;
$show_header = $this->show_header;
$show_footer = $this->show_footer;
$show_pagination = $this->show_pagination;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="list"  data-display-type="table" data-page-url="<?php print_link($current_page); ?>">
    <div  class="">
        <div class="container-fluid">
            <div class="row ">
                <div class="col-sm-12 ">
                    <div class=""><?php
                        require_once 'config.php'; // <<< WAJIB pakai require_once
                        try {
                        $pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME, DB_USERNAME, DB_PASSWORD);
                        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        } catch (PDOException $e) {
                        die('Database connection failed: ' . $e->getMessage());
                        }
                        // Konfigurasi
                        $items_per_page = 5;
                        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
                        $offset = ($page - 1) * $items_per_page;
                        // Hitung total kegiatan
                        $query_total_kegiatan = "SELECT COUNT(*) AS total FROM kegiatan";
                        $stmt_total_kegiatan = $pdo->query($query_total_kegiatan);
                        $total_kegiatan = $stmt_total_kegiatan->fetch(PDO::FETCH_ASSOC)['total'];
                        // Ambil data kegiatan
                        $query_kegiatan = "
                        SELECT 
                        k.id_kegiatan, 
                        k.nama_kegiatan, 
                        DATE_FORMAT(k.tanggal_kegiatan, '%d-%m-%y') AS tanggal_kegiatan,
                        SUM(CASE WHEN a.status = 'Hadir' THEN 1 ELSE 0 END) AS hadir,
                        SUM(CASE WHEN a.status = 'Sakit' THEN 1 ELSE 0 END) AS sakit,
                        SUM(CASE WHEN a.status = 'Izin' THEN 1 ELSE 0 END) AS izin
                        FROM 
                        kegiatan k
                        LEFT JOIN 
                        absensi_kegiatan a ON k.nama_kegiatan = a.nama_kegiatan
                        GROUP BY 
                        k.id_kegiatan, k.nama_kegiatan, k.tanggal_kegiatan
                        ORDER BY 
                        k.tanggal_kegiatan DESC
                        LIMIT :limit OFFSET :offset
                        ";
                        $stmt_kegiatan = $pdo->prepare($query_kegiatan);
                        $stmt_kegiatan->bindParam(':limit', $items_per_page, PDO::PARAM_INT);
                        $stmt_kegiatan->bindParam(':offset', $offset, PDO::PARAM_INT);
                        $stmt_kegiatan->execute();
                        $total_pages = ceil($total_kegiatan / $items_per_page);
                        // Tampilkan tabel
                        echo '<section style="padding: 50px 0; margin-bottom: 20px; background-color: #ffffff;">';
                            echo '  <div style="text-align: center; margin-bottom: 30px;">';
                                echo '    <h1 style="font-size: 2.5em; margin-bottom: 20px; font-family: Arial, sans-serif; color: #072247;">Data Absensi Kegiatan</h1>';
                            echo '  </div>';
                            echo '  <div style="display: flex; justify-content: center; gap: 20px; flex-wrap: wrap;">';
                                echo '    <div style="flex: 1 1 800px; background-color: #ffffff; padding: 20px; border-radius: 10px; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">';
                                    echo '      <table style="width: 100%; border-collapse: collapse; font-family: Arial, sans-serif; background-color: #fff;">';
                                        echo '        <thead>';
                                            echo '          <tr>';
                                                echo '            <th style="padding: 12px; text-align: left; border-bottom: 2px solid #072247; color: #072247;">Nama Kegiatan</th>';
                                                echo '            <th style="padding: 12px; text-align: left; border-bottom: 2px solid #072247; color: #072247;">Tanggal Kegiatan</th>';
                                                echo '            <th style="padding: 12px; text-align: left; border-bottom: 2px solid #072247; color: #072247;">Hadir</th>';
                                                echo '            <th style="padding: 12px; text-align: left; border-bottom: 2px solid #072247; color: #072247;">Sakit</th>';
                                                echo '            <th style="padding: 12px; text-align: left; border-bottom: 2px solid #072247; color: #072247;">Izin</th>';
                                            echo '          </tr>';
                                        echo '        </thead>';
                                        echo '        <tbody>';
                                            while ($row = $stmt_kegiatan->fetch(PDO::FETCH_ASSOC)) {
                                            echo '          <tr>';
                                                echo '            <td style="padding: 12px; border-bottom: 1px solid #ddd; color: #333;">' . htmlspecialchars($row['nama_kegiatan']) . '</td>';
                                                echo '            <td style="padding: 12px; border-bottom: 1px solid #ddd; color: #333;">' . htmlspecialchars($row['tanggal_kegiatan']) . '</td>';
                                                echo '            <td style="padding: 12px; border-bottom: 1px solid #ddd; color: #333;">' . $row['hadir'] . '</td>';
                                                echo '            <td style="padding: 12px; border-bottom: 1px solid #ddd; color: #333;">' . $row['sakit'] . '</td>';
                                                echo '            <td style="padding: 12px; border-bottom: 1px solid #ddd; color: #333;">' . $row['izin'] . '</td>';
                                            echo '          </tr>';
                                            }
                                        echo '        </tbody>';
                                    echo '      </table>';
                                echo '    </div>';
                            echo '  </div>';
                            echo '  <div style="text-align: center; margin-top: 20px;">';
                                // Tombol navigasi
                                if ($page > 1) {
                                echo '<a href="?page=' . ($page - 1) . '" style="padding: 10px 20px; background-color: #072247; color: white; text-decoration: none; border-radius: 5px;">&lt; Previous</a>';
                                }
                                echo '    <span style="padding: 10px 20px;">Page ' . $page . ' of ' . $total_pages . '</span>';
                                if ($page < $total_pages) {
                                echo '<a href="?page=' . ($page + 1) . '" style="padding: 10px 20px; background-color: #072247; color: white; text-decoration: none; border-radius: 5px;">Next &gt;</a>';
                                }
                            echo '  </div>';
                        echo '</section>';
                    ?></div>
                </div>
            </div>
        </div>
    </div>
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-light p-4 mb-4">
        <div class="container-fluid">
            <div class="row ">
                <div class="col ">
                    <h2 class="record-title">Riwayat Absensi</h2>
                </div>
                <div class="col-sm-4 ">
                    <?php if($can_add){ ?>
                    <?php $modal_id = "modal-" . random_str(); ?>
                    <button data-toggle="modal" data-target="#<?php  echo $modal_id ?>"  class="btn btn btn-primary my-1">
                        <i class="fa fa-plus"></i>                                  
                        Absen 
                    </button>
                    <div data-backdrop="true" id="<?php  echo $modal_id ?>" class="modal fade"  role="dialog" aria-labelledby="<?php  echo $modal_id ?>" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-body p-0 reset-grids">
                                    <div class=" ">
                                        <?php  
                                        $this->render_page("absensi_kegiatan/add"); 
                                        ?>
                                    </div>
                                </div>
                                <div style="top: 5px; right:5px; z-index: 999;" class="position-absolute">
                                    <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">&times;</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
                <div class="col-sm-4 ">
                    <form  class="search" action="<?php print_link('absensi_kegiatan'); ?>" method="get">
                        <div class="input-group">
                            <input value="<?php echo get_value('search'); ?>" class="form-control" type="text" name="search"  placeholder="Cari" />
                                <div class="input-group-append">
                                    <button class="btn btn-primary"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-sm-4 comp-grid">
                        <div class="">
                            <!-- Page bread crumbs components-->
                            <?php
                            if(!empty($field_name) || !empty($_GET['search'])){
                            ?>
                            <hr class="sm d-block d-sm-none" />
                            <nav class="page-header-breadcrumbs mt-2" aria-label="breadcrumb">
                                <ul class="breadcrumb m-0 p-1">
                                    <?php
                                    if(!empty($field_name)){
                                    ?>
                                    <li class="breadcrumb-item">
                                        <a class="text-decoration-none" href="<?php print_link('absensi_kegiatan'); ?>">
                                            <i class="fa fa-angle-left"></i>
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item">
                                        <?php echo (get_value("tag") ? get_value("tag")  :  make_readable($field_name)); ?>
                                    </li>
                                    <li  class="breadcrumb-item active text-capitalize font-weight-bold">
                                        <?php echo (get_value("label") ? get_value("label")  :  make_readable(urldecode($field_value))); ?>
                                    </li>
                                    <?php 
                                    }   
                                    ?>
                                    <?php
                                    if(get_value("search")){
                                    ?>
                                    <li class="breadcrumb-item">
                                        <a class="text-decoration-none" href="<?php print_link('absensi_kegiatan'); ?>">
                                            <i class="fa fa-angle-left"></i>
                                        </a>
                                    </li>
                                    <li class="breadcrumb-item text-capitalize">
                                        Search
                                    </li>
                                    <li  class="breadcrumb-item active text-capitalize font-weight-bold"><?php echo get_value("search"); ?></li>
                                    <?php
                                    }
                                    ?>
                                </ul>
                            </nav>
                            <!--End of Page bread crumbs components-->
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
        }
        ?>
        <div  class="my-4">
            <div class="container-fluid">
                <div class="row ">
                    <div class="col-sm-12 comp-grid">
                        <?php $this :: display_page_errors(); ?>
                        <div  class=" animated fadeIn page-content">
                            <div id="absensi_kegiatan-list-records">
                                <div id="page-report-body" class="table-responsive">
                                    <table class="table  table-striped table-sm text-left">
                                        <thead class="table-header bg-light">
                                            <tr>
                                                <?php if($can_delete){ ?>
                                                <th class="td-checkbox">
                                                    <label class="custom-control custom-checkbox custom-control-inline">
                                                        <input class="toggle-check-all custom-control-input" type="checkbox" />
                                                        <span class="custom-control-label"></span>
                                                    </label>
                                                </th>
                                                <?php } ?>
                                                <th class="td-sno">#</th>
                                                <th  class="td-username"> Nama</th>
                                                <th  class="td-nama_kegiatan"> Nama Kegiatan</th>
                                                <th  class="td-status"> Status</th>
                                                <th  class="td-deskripsi"> Deskripsi</th>
                                                <th  class="td-waktu_absen"> Waktu Absen</th>
                                                <th class="td-btn"></th>
                                            </tr>
                                        </thead>
                                        <?php
                                        if(!empty($records)){
                                        ?>
                                        <tbody class="page-data" id="page-data-<?php echo $page_element_id; ?>">
                                            <!--record-->
                                            <?php
                                            $counter = 0;
                                            foreach($records as $data){
                                            $rec_id = (!empty($data['id_absensi']) ? urlencode($data['id_absensi']) : null);
                                            $counter++;
                                            ?>
                                            <tr>
                                                <?php if($can_delete){ ?>
                                                <th class=" td-checkbox">
                                                    <label class="custom-control custom-checkbox custom-control-inline">
                                                        <input class="optioncheck custom-control-input" name="optioncheck[]" value="<?php echo $data['id_absensi'] ?>" type="checkbox" />
                                                            <span class="custom-control-label"></span>
                                                        </label>
                                                    </th>
                                                    <?php } ?>
                                                    <th class="td-sno"><?php echo $counter; ?></th>
                                                    <td class="td-username">
                                                        <span <?php if($can_edit){ ?> data-value="<?php echo $data['username']; ?>" 
                                                            data-pk="<?php echo $data['id_absensi'] ?>" 
                                                            data-url="<?php print_link("absensi_kegiatan/editfield/" . urlencode($data['id_absensi'])); ?>" 
                                                            data-name="username" 
                                                            data-title="Enter Username" 
                                                            data-placement="left" 
                                                            data-toggle="click" 
                                                            data-type="text" 
                                                            data-mode="popover" 
                                                            data-showbuttons="bottom" 
                                                            class="is-editable" <?php } ?>>
                                                            <?php echo $data['username']; ?> 
                                                        </span>
                                                    </td>
                                                    <td class="td-nama_kegiatan">
                                                        <span <?php if($can_edit){ ?> data-source='<?php print_link('api/json/absensi_kegiatan_nama_kegiatan_option_list'); ?>' 
                                                            data-value="<?php echo $data['nama_kegiatan']; ?>" 
                                                            data-pk="<?php echo $data['id_absensi'] ?>" 
                                                            data-url="<?php print_link("absensi_kegiatan/editfield/" . urlencode($data['id_absensi'])); ?>" 
                                                            data-name="nama_kegiatan" 
                                                            data-title="Select a value ..." 
                                                            data-placement="left" 
                                                            data-toggle="click" 
                                                            data-type="select" 
                                                            data-mode="popover" 
                                                            data-showbuttons="bottom" 
                                                            class="is-editable" <?php } ?>>
                                                            <?php echo $data['nama_kegiatan']; ?> 
                                                        </span>
                                                    </td>
                                                    <td class="td-status">
                                                        <span <?php if($can_edit){ ?> data-source='<?php echo json_encode_quote(Menu :: $status); ?>' 
                                                            data-value="<?php echo $data['status']; ?>" 
                                                            data-pk="<?php echo $data['id_absensi'] ?>" 
                                                            data-url="<?php print_link("absensi_kegiatan/editfield/" . urlencode($data['id_absensi'])); ?>" 
                                                            data-name="status" 
                                                            data-title="Enter Status" 
                                                            data-placement="left" 
                                                            data-toggle="click" 
                                                            data-type="radiolist" 
                                                            data-mode="popover" 
                                                            data-showbuttons="bottom" 
                                                            class="is-editable" <?php } ?>>
                                                            <?php echo $data['status']; ?> 
                                                        </span>
                                                    </td>
                                                    <td class="td-deskripsi">
                                                        <span <?php if($can_edit){ ?> data-pk="<?php echo $data['id_absensi'] ?>" 
                                                            data-url="<?php print_link("absensi_kegiatan/editfield/" . urlencode($data['id_absensi'])); ?>" 
                                                            data-name="deskripsi" 
                                                            data-title="Enter Deskripsi" 
                                                            data-placement="left" 
                                                            data-toggle="click" 
                                                            data-type="textarea" 
                                                            data-mode="popover" 
                                                            data-showbuttons="bottom" 
                                                            class="is-editable" <?php } ?>>
                                                            <?php echo $data['deskripsi']; ?> 
                                                        </span>
                                                    </td>
                                                    <td class="td-waktu_absen"> <?php echo $data['waktu_absen']; ?></td>
                                                    <th class="td-btn">
                                                        <?php if($can_view){ ?>
                                                        <a class="btn btn-sm btn-success has-tooltip page-modal" title="View Record" href="<?php print_link("absensi_kegiatan/view/$rec_id"); ?>">
                                                            <i class="fa fa-eye"></i> View
                                                        </a>
                                                        <?php } ?>
                                                        <?php if($can_edit){ ?>
                                                        <a class="btn btn-sm btn-info has-tooltip page-modal" title="Edit This Record" href="<?php print_link("absensi_kegiatan/edit/$rec_id"); ?>">
                                                            <i class="fa fa-edit"></i> Edit
                                                        </a>
                                                        <?php } ?>
                                                        <?php if($can_delete){ ?>
                                                        <a class="btn btn-sm btn-danger has-tooltip record-delete-btn" title="Delete this record" href="<?php print_link("absensi_kegiatan/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Yakin mau dihapus?" data-display-style="modal">
                                                            <i class="fa fa-times"></i>
                                                            Delete
                                                        </a>
                                                        <?php } ?>
                                                    </th>
                                                </tr>
                                                <?php 
                                                }
                                                ?>
                                                <!--endrecord-->
                                            </tbody>
                                            <tbody class="search-data" id="search-data-<?php echo $page_element_id; ?>"></tbody>
                                            <?php
                                            }
                                            ?>
                                        </table>
                                        <?php 
                                        if(empty($records)){
                                        ?>
                                        <h4 class="bg-light text-center border-top text-muted animated bounce  p-3">
                                            <i class="fa fa-ban"></i> No record found
                                        </h4>
                                        <?php
                                        }
                                        ?>
                                    </div>
                                    <?php
                                    if( $show_footer && !empty($records)){
                                    ?>
                                    <div class=" border-top mt-2">
                                        <div class="row justify-content-center">    
                                            <div class="col-md-auto justify-content-center">    
                                                <div class="p-3 d-flex justify-content-between">    
                                                    <?php if($can_delete){ ?>
                                                    <button data-prompt-msg="Are you sure you want to delete these records?" data-display-style="modal" data-url="<?php print_link("absensi_kegiatan/delete/{sel_ids}/?csrf_token=$csrf_token&redirect=$current_page"); ?>" class="btn btn-sm btn-danger btn-delete-selected d-none">
                                                        <i class="fa fa-times"></i> Delete Selected
                                                    </button>
                                                    <?php } ?>
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
                                                                        <?php Html :: import_form('absensi_kegiatan/import_data' , "Import Data", 'CSV , JSON'); ?>
                                                                    </div>
                                                                </div>
                                                                <div class="col">   
                                                                    <?php
                                                                    if($show_pagination == true){
                                                                    $pager = new Pagination($total_records, $record_count);
                                                                    $pager->route = $this->route;
                                                                    $pager->show_page_count = true;
                                                                    $pager->show_record_count = true;
                                                                    $pager->show_page_limit =true;
                                                                    $pager->limit_count = $this->limit_count;
                                                                    $pager->show_page_number_list = true;
                                                                    $pager->pager_link_range=5;
                                                                    $pager->render();
                                                                    }
                                                                    ?>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <?php
                                                        }
                                                        ?>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
