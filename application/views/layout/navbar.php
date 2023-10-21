<?php 
$actual_link = $_SERVER['REQUEST_SCHEME']."://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
?>
<style>
    nav{
        max-height: 120px;
    }
    .navbar-brand{
        width: 150px;
        height: auto;
    }
    @media (max-width:992px) {
        .navbar-collapse{
            text-align: center;
            z-index: 9999;
            background-color: var( --theme-color);
            padding: 30px 0;
        }
        .navbar-collapse .btn{
            margin-top: 30px;
        }
        .navbar-nav{
            gap: 15px;
        }
    }
</style>
<?php if(isset($formSubmitted)): ?>
    <div class="banner w-100 bg-dark py-4">
        <h4 class="text-center text-light py-2 fw-bold">Form Submitted! Our Team Will Get Back To You Soon</h4>
    </div>
<?php endif; ?>
<nav class="bg-transparent navbar navbar-expand-lg navbar-dark py-lg-1 shadow-sm " style="z-index: 99999;">
    <div class="container">
        <a class="navbar-brand" href="<?= site_url('/') ?>" target="_pg_blank">
            <img class="h-100 w-100" src="<?=base_url()?>assets/images/logo.png" alt="mapplewestimmigration" srcset="">
        </a>
        <button class="border-0 navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown-3" aria-controls="navbarNavDropdown-3" aria-expanded="false" aria-label="Toggle navigation">
            <span class="fs-6 navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNavDropdown-3">
            <ul class="ms-auto navbar-nav">
                <li class="nav-item">
                    <a class="nav-link px-lg-3 py-lg-4 <?=(site_url() === $actual_link)? "active" : ""?>" aria-current="page" href="<?= site_url('/') ?>">Home</a></li>
                <li class="nav-item">
                    <a class="nav-link px-lg-3 py-lg-4 <?=(site_url('/about') === $actual_link)? "active" : ""?>" href="<?=site_url('/')?>about">About</a> 
                </li>
                <li class="nav-item">
                    <a class="nav-link px-lg-3 py-lg-4 <?=(site_url('/client-portal') === $actual_link)? "active" : ""?>" href="<?=site_url('/')?>client-portal">Client Portal</a> 
                </li>
                <li class="nav-item">
                    <a class="nav-link px-lg-3 py-lg-4 <?=(site_url('/latest-news') === $actual_link)? "active" : ""?>" href="<?=site_url('/')?>latest-news">Latest News</a> 
                </li>
                <li class="nav-item">
                    <a class="nav-link px-lg-3 py-lg-4 <?=(site_url('/contact-us') === $actual_link)? "active" : ""?>" href="<?=site_url('/')?>contact-us">Contact Us</a> 
                </li>
            </ul>
            <a class="btn btn-theme2 ms-lg-3 rounded-0" href="<?=site_url('/')?>book-consultation">Book Consultation</a>
        </div>
    </div>
</nav>