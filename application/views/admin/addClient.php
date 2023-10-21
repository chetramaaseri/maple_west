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
                    <h1 class="h3 mb-3"><strong>Dashboard</strong> / Add Client</h1>

                    <div class="row">
                        <div class="col-12 ">

                            <div class="widget">
                                <?php if(isset($process)): ?>
                                    <div class="process my-3">
                                        <h3 class="message fw-bold <?=($process['status'] == true) ? "text-success":  "text-danger"?> "><?=$process['message']?></h3>
                                        <span>Application Number : </span>
                                        <span class="applicationNumber fs-2 ms-2"><?=$process['client']['applicationNumber']?></span>
                                    </div>
                                <?php endif; ?>
                                <form action="" method="post">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5 class="card-title mb-0">Client Name</h5>
                                                </div>
                                                <div class="card-body">
                                                    <input name="name" type="text" class="form-control"
                                                        placeholder="Enter Client Name">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5 class="card-title mb-0">Mobile Number</h5>
                                                </div>
                                                <div class="card-body">
                                                    <input name="mobile" type="tel" class="form-control"
                                                        placeholder="Enter Client Mobile">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5 class="card-title mb-0">Email Address</h5>
                                                </div>
                                                <div class="card-body">
                                                    <input name="email" type="email" class="form-control"
                                                        placeholder="Enter Client Email">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5 class="card-title mb-0">Current Status</h5>
                                                </div>
                                                <div class="card-body">
                                                    <select name="applicationStatus" class="form-select mb-3">
                                                        <option value="submited">Application Submitted</option>
                                                        <option selected value="in-process">In Process</option>
                                                        <option value="approved">Approved</option>
                                                        <option value="denied">Denied</option>
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
                                                <div class="card-header">
                                                    <h5 class="card-title mb-0">Remarks</h5>
                                                </div>
                                                <div class="card-body">
                                                    <input name="remarks" type="text" class="form-control"
                                                        placeholder="Any Message">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary">Add Client</button>
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