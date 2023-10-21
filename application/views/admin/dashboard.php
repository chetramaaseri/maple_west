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
											<th>Application Number</th>
											<th>Status</th>
											<th class="d-none d-md-table-cell">Remarks</th>
											<th class="d-none d-md-table-cell">Added On</th>
											<th class="">Action</th>
										</tr>
									</thead>
									<tbody>
										<?php foreach($clients as $client): ?>
										<tr>
											<td class="d-none d-xl-table-cell"><?=$client['name']?></td>
											<td><?=$client['mobile']?></td>
											<td class="d-none d-xl-table-cell"><?=$client['email']?></td>
											<td><?=$client['applicationNumber']?></td>
											<?php $status = json_decode($client['applicationStatus'],true); ?>
											<td><span class="badge bg-<?=$status[count($status)-1]['status'];?>">
												<?=ucwords(str_replace("-"," ",$status[count($status)-1]['status']))?>
											</span></td>
											<?php $remarks = json_decode($client['remarks'],true); ?>
											<td>
												<?=ucwords($remarks[count($remarks)-1]['message'])?>
											</td>
											<td class="d-none d-md-table-cell"><?=$client['addedOn']?></td>
											<td>
												<span class="d-flex align-items-center gap-1 p-2">
													<a href="<?=site_url()?>admin/updateStatus?applicationNumber=<?=$client['applicationNumber']?>" class="">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3 align-middle me-2"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
													</a>
													<a href="<?=site_url()?>admin/?deleteClient&applicationNumber=<?=$client['applicationNumber']?>" class="">
														<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash-2 align-middle me-2"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path><line x1="10" y1="11" x2="10" y2="17"></line><line x1="14" y1="11" x2="14" y2="17"></line></svg>
													</a>
												</span>
											</td>
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