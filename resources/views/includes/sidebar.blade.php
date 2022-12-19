<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <div class="text-center sidebar-brand-wrapper d-flex align-items-center">
        <a class="sidebar-brand brand-logo" href="/"><img src="{{ asset('images/logo.png') }}" alt="logo" /></a>
    </div>
    <ul class="nav">
        <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
                <div class="nav-profile-image">
                    <img src="{{ asset('images/user.png') }}" alt="profile" />
                    <span class="login-status online"></span>
                    <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column pr-3">
                    <span class="font-weight-medium mb-2">{{ Auth::user()->name }}</span>
                    <span class="font-weight-normal">ADMIN</span>
                </div>
                <span class="badge badge-danger text-white ml-3 rounded">{{ Auth::user()->id }}</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/">
                <i class="mdi mdi-home menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/suhu">
                <i class="mdi mdi-home menu-icon"></i>
                <span class="menu-title">Suhu & Kelembapan</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <i class="mdi mdi mdi-database menu-icon"></i>
                <span class="menu-title">Downtime</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item">
                        <a class="nav-link" href="/pelapor">Pelapor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pelapor-selesai">Selesai</a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <i class="mdi mdi mdi-database menu-icon"></i>
                <span class="menu-title">Master Data</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item">
                        <a class="nav-link" href="/user">User</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/unit">Unit</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/kategori">Kategori</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/barang">Barang</a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/pencarian">
                <i class="mdi mdi-magnify menu-icon"></i>
                <span class="menu-title">Pencarian</span>
            </a>
        </li><br>
        <li class="nav-item">
            <span class="nav-link" href="#">
                <span class="menu-title">Laporan</span>
            </span>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/laporan-inventaris">
                <i class="mdi mdi-file-document-box menu-icon"></i>
                <span class="menu-title">Laporan Inventaris Alat</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/laporan-inventaris">
                <i class="mdi mdi-file-document-box menu-icon"></i>
                <span class="menu-title">Laporan Suhu</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/laporan-inventaris">
                <i class="mdi mdi-file-document-box menu-icon"></i>
                <span class="menu-title">Laporan Kelembapan</span>
            </a>
        </li>
    </ul>
</nav>
