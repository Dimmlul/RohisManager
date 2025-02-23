<?php 
$page_id = null;
$comp_model = new SharedController;
$current_page = $this->set_current_page_link();
?>
<div>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col-md-12 comp-grid">
                    <button data-toggle="modal" data-target="#Modal-1-Page1" class="btn btn-primary">  Open Modal</button>
                    <div data-backdrop="true" class="modal fade" id="Modal-1-Page1" tabindex="-1" role="dialog" aria-labelledby="Modal1" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">  Modal Contents</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body p-0 reset-grids">
                                </div>
                            </div>
                        </div>
                    </div>
                    <h4 >The Dashboard</h4>
                </div>
            </div>
        </div>
    </div>
</div>
