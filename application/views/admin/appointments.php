<!DOCTYPE html>
<html lang="en">

<head>
	<?php $this->load->view('admin/layout/head') ?>
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" type="text/css">
	<style>
		.badge{
			background-color: var(--bs-info);
		}
		.bg-in-process{
			background-color: var(--bs-primary);
		}
		.bg-approved{
			background-color: var(--bs-success);
		}
		.bg-denied{
			background-color: var(--bs-danger);
		}
		
	</style>
</head>

<body>
	<div class="wrapper">
		<?php $this->load->view('admin/layout/sidenav'); ?>
		<div class="main">
			<?php $this->load->view('admin/layout/topnav') ?>

			<main class="content">
				<div class="container-fluid p-0">
					<h1 class="h3 mb-3"><strong>Dashboard</strong> / Appointments Board</h1>

					<div class="row">
						<div class="col-12 ">
							<div class="widget table-responsive">
								<table id="example" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th class="d-none d-xl-table-cell">Service</th>
											<th class="d-none d-xl-table-cell">Name</th>
											<th>Mobile</th>
											<th class="d-none d-xl-table-cell">Email</th>
											<th class="d-none d-xl-table-cell">Refer Source</th>
											<th>Message</th>
											<th class="d-none d-xl-table-cell">Status In Canada</th>
											<th class="d-none d-xl-table-cell">Discussion About</th>
											<th class="d-none d-md-table-cell">Added On</th>
										</tr>
									</thead>
									<tbody>
										<?php foreach($appointments as $appointment): ?>
										<tr>
											<td class="d-none d-xl-table-cell"><?=$appointment['serviceId']?></td>
											<td class="d-none d-xl-table-cell"><?=$appointment['name']?></td>
											<td><?=$appointment['mobile']?></td>
											<td class="d-none d-xl-table-cell"><?=$appointment['email']?></td>
											<td class="d-none d-xl-table-cell"><?=$appointment['source']?></td>
											<td><?=$appointment['message']?></td>
											<td class="d-none d-xl-table-cell"><?=$appointment['statusInCanada']?></td>
											<td class="d-none d-xl-table-cell"><?=$appointment['discussionAbout']?></td>
											<td class="d-none d-md-table-cell"><?=$appointment['addedOn']?></td>
										</tr>
										<?php endforeach; ?>
									</tbody>
								</table>
							</div>
							
						</div>
					</div>

				</div>
			</main>

			<?php $this->load->view('admin/layout/footer') ?>

			
		</div>
	</div>

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