<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("dokumentasi/add");
$can_edit = ACL::is_allowed("dokumentasi/edit");
$can_view = ACL::is_allowed("dokumentasi/view");
$can_delete = ACL::is_allowed("dokumentasi/delete");
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
$rec_id = (!empty($data['id_dokumentasi']) ? urlencode($data['id_dokumentasi']) : null);
$counter++;
?>
<tr>
    <?php if($can_delete){ ?>
    <th class=" td-checkbox">
        <label class="custom-control custom-checkbox custom-control-inline">
            <input class="optioncheck custom-control-input" name="optioncheck[]" value="<?php echo $data['id_dokumentasi'] ?>" type="checkbox" />
                <span class="custom-control-label"></span>
            </label>
        </th>
        <?php } ?>
        <th class="td-sno"><?php echo $counter; ?></th>
        <td class="td-nama_kegiatan">
            <span <?php if($can_edit){ ?> data-source='<?php print_link('api/json/dokumentasi_nama_kegiatan_option_list'); ?>' 
                data-value="<?php echo $data['nama_kegiatan']; ?>" 
                data-pk="<?php echo $data['id_dokumentasi'] ?>" 
                data-url="<?php print_link("dokumentasi/editfield/" . urlencode($data['id_dokumentasi'])); ?>" 
                data-name="nama_kegiatan" 
                data-title="Select a value ..." 
                data-placement="left" 
                data-toggle="click" 
                data-type="select" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['nama_kegiatan']; ?> 
            </span>
        </td>
        <td class="td-foto"><?php Html :: page_img($data['foto'],100,100,100); ?></td>
        <td class="td-deskripsi_dokumen">
            <span <?php if($can_edit){ ?> data-pk="<?php echo $data['id_dokumentasi'] ?>" 
                data-url="<?php print_link("dokumentasi/editfield/" . urlencode($data['id_dokumentasi'])); ?>" 
                data-name="deskripsi_dokumen" 
                data-title="Enter Deskripsi Dokumen" 
                data-placement="left" 
                data-toggle="click" 
                data-type="textarea" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['deskripsi_dokumen']; ?> 
            </span>
        </td>
        <td class="td-link">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['link']; ?>" 
                data-pk="<?php echo $data['id_dokumentasi'] ?>" 
                data-url="<?php print_link("dokumentasi/editfield/" . urlencode($data['id_dokumentasi'])); ?>" 
                data-name="link" 
                data-title="Tambah Link" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['link']; ?> 
            </span>
        </td>
        <td class="td-username">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['username']; ?>" 
                data-pk="<?php echo $data['id_dokumentasi'] ?>" 
                data-url="<?php print_link("dokumentasi/editfield/" . urlencode($data['id_dokumentasi'])); ?>" 
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
        <td class="td-waktu_upload">
            <span <?php if($can_edit){ ?> data-flatpickr="{altFormat: 'F j, Y - H:i', minDate: '', maxDate: ''}" 
                data-value="<?php echo $data['waktu_upload']; ?>" 
                data-pk="<?php echo $data['id_dokumentasi'] ?>" 
                data-url="<?php print_link("dokumentasi/editfield/" . urlencode($data['id_dokumentasi'])); ?>" 
                data-name="waktu_upload" 
                data-title="Enter Waktu Upload" 
                data-placement="left" 
                data-toggle="click" 
                data-type="flatdatetimepicker" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['waktu_upload']; ?> 
            </span>
        </td>
        <th class="td-btn">
            <?php if($can_view){ ?>
            <a class="btn btn-sm btn-success has-tooltip page-modal" title="View Record" href="<?php print_link("dokumentasi/view/$rec_id"); ?>">
                <i class="fa fa-eye"></i> View
            </a>
            <?php } ?>
            <?php if($can_edit){ ?>
            <a class="btn btn-sm btn-info has-tooltip page-modal" title="Edit This Record" href="<?php print_link("dokumentasi/edit/$rec_id"); ?>">
                <i class="fa fa-edit"></i> Edit
            </a>
            <?php } ?>
            <?php if($can_delete){ ?>
            <a class="btn btn-sm btn-danger has-tooltip record-delete-btn" title="Delete this record" href="<?php print_link("dokumentasi/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Yakin mau dihapus?" data-display-style="modal">
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
    