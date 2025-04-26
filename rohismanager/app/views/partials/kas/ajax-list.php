<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("kas/add");
$can_edit = ACL::is_allowed("kas/edit");
$can_view = ACL::is_allowed("kas/view");
$can_delete = ACL::is_allowed("kas/delete");
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
$rec_id = (!empty($data['id_kas']) ? urlencode($data['id_kas']) : null);
$counter++;
?>
<tr>
    <?php if($can_delete){ ?>
    <th class=" td-checkbox">
        <label class="custom-control custom-checkbox custom-control-inline">
            <input class="optioncheck custom-control-input" name="optioncheck[]" value="<?php echo $data['id_kas'] ?>" type="checkbox" />
                <span class="custom-control-label"></span>
            </label>
        </th>
        <?php } ?>
        <th class="td-sno"><?php echo $counter; ?></th>
        <td class="td-jumlah_kas"> <span><?php echo "Rp " .number_format($data['jumlah_kas']); ?></span></td>
        <td class="td-jenis_kas">
            <span <?php if($can_edit){ ?> data-source='<?php echo json_encode_quote(Menu :: $jenis_kas); ?>' 
                data-value="<?php echo $data['jenis_kas']; ?>" 
                data-pk="<?php echo $data['id_kas'] ?>" 
                data-url="<?php print_link("kas/editfield/" . urlencode($data['id_kas'])); ?>" 
                data-name="jenis_kas" 
                data-title="Enter Jenis Kas" 
                data-placement="left" 
                data-toggle="click" 
                data-type="radiolist" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['jenis_kas']; ?> 
            </span>
        </td>
        <td class="td-deskripsi">
            <span <?php if($can_edit){ ?> data-pk="<?php echo $data['id_kas'] ?>" 
                data-url="<?php print_link("kas/editfield/" . urlencode($data['id_kas'])); ?>" 
                data-name="deskripsi" 
                data-title="Enter Deskripsi" 
                data-placement="left" 
                data-toggle="click" 
                data-type="textarea" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['deskripsi']; ?> 
            </span>
        </td>
        <td class="td-username">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['username']; ?>" 
                data-pk="<?php echo $data['id_kas'] ?>" 
                data-url="<?php print_link("kas/editfield/" . urlencode($data['id_kas'])); ?>" 
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
        <td class="td-tanggal"> <?php echo $data['tanggal']; ?></td>
        <th class="td-btn">
            <?php if($can_view){ ?>
            <a class="btn btn-sm btn-success has-tooltip page-modal" title="View Record" href="<?php print_link("kas/view/$rec_id"); ?>">
                <i class="fa fa-eye"></i> View
            </a>
            <?php } ?>
            <?php if($can_edit){ ?>
            <a class="btn btn-sm btn-info has-tooltip page-modal" title="Edit This Record" href="<?php print_link("kas/edit/$rec_id"); ?>">
                <i class="fa fa-edit"></i> Edit
            </a>
            <?php } ?>
            <?php if($can_delete){ ?>
            <a class="btn btn-sm btn-danger has-tooltip record-delete-btn" title="Delete this record" href="<?php print_link("kas/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Yakin mau dihapus?" data-display-style="modal">
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
    