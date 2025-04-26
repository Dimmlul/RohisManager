<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("jabatan/add");
$can_edit = ACL::is_allowed("jabatan/edit");
$can_view = ACL::is_allowed("jabatan/view");
$can_delete = ACL::is_allowed("jabatan/delete");
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
$rec_id = (!empty($data['id_jabatan']) ? urlencode($data['id_jabatan']) : null);
$counter++;
?>
<tr>
    <?php if($can_delete){ ?>
    <th class=" td-checkbox">
        <label class="custom-control custom-checkbox custom-control-inline">
            <input class="optioncheck custom-control-input" name="optioncheck[]" value="<?php echo $data['id_jabatan'] ?>" type="checkbox" />
                <span class="custom-control-label"></span>
            </label>
        </th>
        <?php } ?>
        <th class="td-sno"><?php echo $counter; ?></th>
        <td class="td-nama_jabatan">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['nama_jabatan']; ?>" 
                data-pk="<?php echo $data['id_jabatan'] ?>" 
                data-url="<?php print_link("jabatan/editfield/" . urlencode($data['id_jabatan'])); ?>" 
                data-name="nama_jabatan" 
                data-title="Enter Nama Jabatan" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['nama_jabatan']; ?> 
            </span>
        </td>
        <th class="td-btn">
            <?php if($can_view){ ?>
            <a class="btn btn-sm btn-success has-tooltip page-modal" title="View Record" href="<?php print_link("jabatan/view/$rec_id"); ?>">
                <i class="fa fa-eye"></i> View
            </a>
            <?php } ?>
            <?php if($can_edit){ ?>
            <a class="btn btn-sm btn-info has-tooltip page-modal" title="Edit This Record" href="<?php print_link("jabatan/edit/$rec_id"); ?>">
                <i class="fa fa-edit"></i> Edit
            </a>
            <?php } ?>
            <?php if($can_delete){ ?>
            <a class="btn btn-sm btn-danger has-tooltip record-delete-btn" title="Delete this record" href="<?php print_link("jabatan/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Yakin mau dihapus?" data-display-style="modal">
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
    