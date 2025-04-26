<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("app_logs/add");
$can_edit = ACL::is_allowed("app_logs/edit");
$can_view = ACL::is_allowed("app_logs/view");
$can_delete = ACL::is_allowed("app_logs/delete");
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
$rec_id = (!empty($data['log_id']) ? urlencode($data['log_id']) : null);
$counter++;
?>
<tr>
    <?php if($can_delete){ ?>
    <th class=" td-checkbox">
        <label class="custom-control custom-checkbox custom-control-inline">
            <input class="optioncheck custom-control-input" name="optioncheck[]" value="<?php echo $data['log_id'] ?>" type="checkbox" />
                <span class="custom-control-label"></span>
            </label>
        </th>
        <?php } ?>
        <th class="td-sno"><?php echo $counter; ?></th>
        <td class="td-log_id"><a href="<?php print_link("app_logs/view/$data[log_id]") ?>"><?php echo $data['log_id']; ?></a></td>
        <td class="td-Timestamp">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['Timestamp']; ?>" 
                data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="Timestamp" 
                data-title="Enter Timestamp" 
                data-placement="left" 
                data-toggle="click" 
                data-type="time" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['Timestamp']; ?> 
            </span>
        </td>
        <td class="td-Action">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['Action']; ?>" 
                data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="Action" 
                data-title="Enter Action" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['Action']; ?> 
            </span>
        </td>
        <td class="td-TableName">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['TableName']; ?>" 
                data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="TableName" 
                data-title="Enter Tablename" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['TableName']; ?> 
            </span>
        </td>
        <td class="td-RecordID">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['RecordID']; ?>" 
                data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="RecordID" 
                data-title="Enter Recordid" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['RecordID']; ?> 
            </span>
        </td>
        <td class="td-SqlQuery">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['SqlQuery']; ?>" 
                data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="SqlQuery" 
                data-title="Enter Sqlquery" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['SqlQuery']; ?> 
            </span>
        </td>
        <td class="td-UserID">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['UserID']; ?>" 
                data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="UserID" 
                data-title="Enter Userid" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['UserID']; ?> 
            </span>
        </td>
        <td class="td-ServerIP">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['ServerIP']; ?>" 
                data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="ServerIP" 
                data-title="Enter Serverip" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['ServerIP']; ?> 
            </span>
        </td>
        <td class="td-RequestUrl">
            <span <?php if($can_edit){ ?> data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="RequestUrl" 
                data-title="Enter Requesturl" 
                data-placement="left" 
                data-toggle="click" 
                data-type="textarea" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['RequestUrl']; ?> 
            </span>
        </td>
        <td class="td-RequestData">
            <span <?php if($can_edit){ ?> data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="RequestData" 
                data-title="Enter Requestdata" 
                data-placement="left" 
                data-toggle="click" 
                data-type="textarea" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['RequestData']; ?> 
            </span>
        </td>
        <td class="td-RequestCompleted">
            <span <?php if($can_edit){ ?> data-value="<?php echo $data['RequestCompleted']; ?>" 
                data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="RequestCompleted" 
                data-title="Enter Requestcompleted" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['RequestCompleted']; ?> 
            </span>
        </td>
        <td class="td-RequestMsg">
            <span <?php if($can_edit){ ?> data-pk="<?php echo $data['log_id'] ?>" 
                data-url="<?php print_link("app_logs/editfield/" . urlencode($data['log_id'])); ?>" 
                data-name="RequestMsg" 
                data-title="Enter Requestmsg" 
                data-placement="left" 
                data-toggle="click" 
                data-type="textarea" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" <?php } ?>>
                <?php echo $data['RequestMsg']; ?> 
            </span>
        </td>
        <th class="td-btn">
            <?php if($can_view){ ?>
            <a class="btn btn-sm btn-success has-tooltip page-modal" title="View Record" href="<?php print_link("app_logs/view/$rec_id"); ?>">
                <i class="fa fa-eye"></i> View
            </a>
            <?php } ?>
            <?php if($can_edit){ ?>
            <a class="btn btn-sm btn-info has-tooltip page-modal" title="Edit This Record" href="<?php print_link("app_logs/edit/$rec_id"); ?>">
                <i class="fa fa-edit"></i> Edit
            </a>
            <?php } ?>
            <?php if($can_delete){ ?>
            <a class="btn btn-sm btn-danger has-tooltip record-delete-btn" title="Delete this record" href="<?php print_link("app_logs/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Yakin mau dihapus?" data-display-style="modal">
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
    