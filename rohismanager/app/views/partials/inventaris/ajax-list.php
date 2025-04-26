<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("inventaris/add");
$can_edit = ACL::is_allowed("inventaris/edit");
$can_view = ACL::is_allowed("inventaris/view");
$can_delete = ACL::is_allowed("inventaris/delete");
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
$rec_id = (!empty($data['id_barang']) ? urlencode($data['id_barang']) : null);
$counter++;
?>
<tr>
    <?php if($can_delete){ ?>
    <th class=" td-checkbox">
        <label class="custom-control custom-checkbox custom-control-inline">
            <input class="optioncheck custom-control-input" name="optioncheck[]" value="<?php echo $data['id_barang'] ?>" type="checkbox" />
                <span class="custom-control-label"></span>
            </label>
        </th>
        <?php } ?>
        <th class="td-sno"><?php echo $counter; ?></th>
        <td class="td-nama_barang">
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
        <td class="td-jumlah_barang">
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
        <td class="td-status_barang">
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
        <td class="td-username">
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
        <td class="td-tanggal_masuk">
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
        <th class="td-btn">
            <?php if($can_view){ ?>
            <a class="btn btn-sm btn-success has-tooltip page-modal" title="View Record" href="<?php print_link("inventaris/view/$rec_id"); ?>">
                <i class="fa fa-eye"></i> View
            </a>
            <?php } ?>
            <?php if($can_edit){ ?>
            <a class="btn btn-sm btn-info has-tooltip page-modal" title="Edit This Record" href="<?php print_link("inventaris/edit/$rec_id"); ?>">
                <i class="fa fa-edit"></i> Edit
            </a>
            <?php } ?>
            <?php if($can_delete){ ?>
            <a class="btn btn-sm btn-danger has-tooltip record-delete-btn" title="Delete this record" href="<?php print_link("inventaris/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Yakin mau dihapus?" data-display-style="modal">
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
    