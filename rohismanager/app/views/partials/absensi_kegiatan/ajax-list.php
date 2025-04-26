<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("absensi_kegiatan/add");
$can_edit = ACL::is_allowed("absensi_kegiatan/edit");
$can_view = ACL::is_allowed("absensi_kegiatan/view");
$can_delete = ACL::is_allowed("absensi_kegiatan/delete");
?>
<?php
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
$field_name = $this->route->field_name;
$field_value = $this->route->field_value;
$view_data = $this->view_data;
$records = $view_data->records;
$record_count = $view_data->record_count;
$total_records = $view_data->total_records;
if (!empty($records)) {
?>
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
    <?php
    } else {
    ?>
    <td class="no-record-found col-12" colspan="100">
        <h4 class="text-muted text-center ">
            No Record Found
        </h4>
    </td>
    <?php
    }
    ?>
    