<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('admin/layout/head') ?>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div class="wrapper">
        <?php $this->load->view('admin/layout/sidenav'); ?>
        <div class="main">
            <?php $this->load->view('admin/layout/topnav') ?>

            <main class="content">
                <div class="container-fluid p-0">
                    <h1 class="h3 mb-3"><strong>Dashboard</strong> / Update Status</h1>

                    <div class="row">
                        <div class="col-12 ">

                            <div class="widget">
                                <h3 class="message fw-bold my-3 text-primary">Application Number : <?=$_GET['applicationNumber']?></h3>
                                <?php if(isset($process)): ?>
                                    <div class="process my-3">
                                        <h3 class="message fw-bold <?=($process['status'] == true) ? "text-success":  "text-danger"?> "><?=$process['message']?></h3>
                                        <span>Application Number : </span>
                                        <span class="applicationNumber fs-2 ms-2"><?=$process['client']['applicationNumber']?></span>
                                    </div>
                                <?php endif; ?>
                                <form action="" method="post">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5 class="card-title mb-0">Current Status</h5>
                                                </div>
                                                <div class="card-body">
                                                    <?php $status = json_decode($client['applicationStatus'],true); $currentStatus = $status[count($status)-1]['status']?>
                                                    <select name="applicationStatus" class="form-select mb-3">
                                                        <option <?=($currentStatus == "submited") ? "selected" : "" ?>  value="submited">Application Submitted</option>
                                                        <option <?=($currentStatus == "in-process") ? "selected" : "" ?>  value="in-process">In Process</option>
                                                        <option <?=($currentStatus == "approved") ? "selected" : "" ?>  value="approved">Approved</option>
                                                        <option <?=($currentStatus == "denied") ? "selected" : "" ?>  value="denied">Denied</option>
                                                        <!-- <option value="others">Others</option> -->
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- <div id="others" class="col-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5 class="card-title mb-0">Please Specify</h5>
                                                </div>
                                                <div class="card-body">
                                                    <input name="otherstatus" type="text" class="form-control"
                                                    placeholder="Specify Applcation Status">
                                                </div>
                                            </div>
                                        </div> -->
                                        <div class="col-12">
                                            <div class="card">
                                                <?php $remarks = json_decode($client['remarks'],true); $currentRemarks = $remarks[count($remarks)-1]['message']?>
                                                <div class="card-header">
                                                    <h5 class="card-title mb-0">Remarks</h5>
                                                </div>
                                                <div class="card-body">
                                                    <input name="remarks" type="text" value="<?=$currentRemarks?>" class="form-control"
                                                        placeholder="Any Message">
                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary">Update Status</button>
                                    </div>

                                </form>

                            </div>

                        </div>
                    </div>

                </div>
            </main>

            <?php $this->load->view('admin/layout/footer') ?>

        </div>
    </div>

    <?php $this->load->view('admin/layout/script'); ?>
</body>

</html>