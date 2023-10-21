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
					<h1 class="h3 mb-3"><strong>Dashboard</strong> / Clients Board</h1>

					<div class="row">
						<div class="col-12 ">
							<div class="widget table-responsive">
								<table id="example" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th class="d-none d-xl-table-cell">Name</th>
											<th>Mobile</th>
											<th class="d-none d-xl-table-cell">Email</th>
											<th class="d-none d-xl-table-cell">Country</th>
											<th>Message</th>
											<th class="d-none d-md-table-cell">Added On</th>
										</tr>
									</thead>
									<tbody>
										<?php foreach($leads as $lead): ?>
										<tr>
											<td class="d-none d-xl-table-cell"><?=$lead['name']?></td>
											<td><?=$lead['mobile']?></td>
											<td class="d-none d-xl-table-cell"><?=$lead['email']?></td>
											<td class="d-none d-xl-table-cell"><?=$lead['country']?></td>
											<td><?=$lead['message']?></td>
											<td class="d-none d-md-table-cell"><?=$lead['addedOn']?></td>
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