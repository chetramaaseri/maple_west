<nav id="sidebar" class="sidebar js-sidebar">
    <div class="sidebar-content js-simplebar">
        <a class="sidebar-brand" href="<?=site_url()?>admin">
            <span class="align-middle fs-4">Maple West Immigration</span>
        </a>

        <ul class="sidebar-nav">
            <li class="sidebar-header">
                Interface
            </li>

            <?php $actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>

            <li class="sidebar-item <?=($actual_link == site_url()."admin") ? "active" : ""?>">
                <a class="sidebar-link" href="<?=site_url()?>admin">
                    <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                </a>
            </li>

            <li class="sidebar-item <?=($actual_link == site_url()."admin/addClient") ? "active" : ""?>">
                <a class="sidebar-link" href="<?=site_url()?>admin/addClient">
                    <i class="align-middle" data-feather="user"></i> <span class="align-middle">Add Client</span>
                </a>
            </li>
            <li class="sidebar-item <?=($actual_link == site_url()."admin/leads") ? "active" : ""?>">
                <a class="sidebar-link" href="<?=site_url()?>admin/leads">
                    <i class="align-middle" data-feather="user"></i> <span class="align-middle">Leads</span>
                </a>
            </li>
            <li class="sidebar-item <?=($actual_link == site_url()."admin/appointments") ? "active" : ""?>">
                <a class="sidebar-link" href="<?=site_url()?>admin/appointments">
                    <i class="align-middle" data-feather="user"></i> <span class="align-middle">Appointments</span>
                </a>
            </li>
            <li class="sidebar-item <?=($actual_link == site_url()."admin/seo") ? "active" : ""?>">
                <a class="sidebar-link" href="<?=site_url()?>admin/seo" target="_blank">
                    <i class="align-middle" data-feather="user"></i> <span class="align-middle">Blog Post</span>
                </a>
            </li>

            <!-- <li class="sidebar-item">
                <a class="sidebar-link" href="pages-sign-in.html">
                    <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Sign In</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="pages-sign-up.html">
                    <i class="align-middle" data-feather="user-plus"></i> <span class="align-middle">Sign Up</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="pages-blank.html">
                    <i class="align-middle" data-feather="book"></i> <span class="align-middle">Blank</span>
                </a>
            </li>

            <li class="sidebar-header">
                Tools & Components
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="ui-buttons.html">
                    <i class="align-middle" data-feather="square"></i> <span class="align-middle">Buttons</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="ui-forms.html">
                    <i class="align-middle" data-feather="check-square"></i> <span class="align-middle">Forms</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="ui-cards.html">
                    <i class="align-middle" data-feather="grid"></i> <span class="align-middle">Cards</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="ui-typography.html">
                    <i class="align-middle" data-feather="align-left"></i> <span class="align-middle">Typography</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="icons-feather.html">
                    <i class="align-middle" data-feather="coffee"></i> <span class="align-middle">Icons</span>
                </a>
            </li>

            <li class="sidebar-header">
                Plugins & Addons
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="charts-chartjs.html">
                    <i class="align-middle" data-feather="bar-chart-2"></i> <span class="align-middle">Charts</span>
                </a>
            </li>

            <li class="sidebar-item">
                <a class="sidebar-link" href="maps-google.html">
                    <i class="align-middle" data-feather="map"></i> <span class="align-middle">Maps</span>
                </a>
            </li> -->
        </ul>

        <!-- <div class="sidebar-cta">
            <div class="sidebar-cta-content">
                <strong class="d-inline-block mb-2">Report Bug</strong>
                <div class="mb-3 text-sm">
                    Facing Any Issue While Using? Please Report It
                </div>
                <div class="d-grid">
                    <a href="upgrade-to-pro.html" class="btn btn-primary">Report</a>
                </div>
            </div>
        </div> -->
    </div>
</nav>