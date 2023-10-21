<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('admin/layout/head') ?>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" type="text/css">
    <style>
        .badge {
            background-color: var(--bs-info);
        }

        .bg-in-process {
            background-color: var(--bs-primary);
        }

        .bg-approved {
            background-color: var(--bs-success);
        }

        .bg-denied {
            background-color: var(--bs-danger);
        }
    </style>
</head>

<body>
    <main class="d-flex w-100">
        <div class="container d-flex flex-column">
            <div class="row vh-100">
                <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                    <div class="d-table-cell align-top mt-5 pt-5">

                        <div class="text-center mt-4">
                            <h1 class="h2"><?=(isset($error) ? $error : "Welcome back, Admin")?></h1>
                            <p class="lead">
                                Sign in to your account to continue
                            </p>
                        </div>

                        <div class="card">
                            <div class="card-body">
                                <div class="m-sm-4">
                                    <form method="POST">
                                        <div class="mb-3">
                                            <label class="form-label">Email</label>
                                            <input class="form-control form-control-lg" type="email" name="email"
                                                placeholder="Enter your email" />
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Password</label>
                                            <input class="form-control form-control-lg" type="password" name="password"
                                                placeholder="Enter your password" />
                                            <small>
                                                <a href="index.html">Forgot password?</a>
                                            </small>
                                        </div>
                                        <div class="text-center mt-3">
                                            <button class="btn btn-primary">Login</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </main>


    <?php $this->load->view('admin/layout/script'); ?>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" type="text/javascript"></script>
    <script>
        const dataTable = new simpleDatatables.DataTable("#example", {
            searchable: true,
            fixedHeight: true,
        });
    </script>
</body>

</html>