<div class="sticky-top">
  <div class="navbar bg-light navbar-expand-lg shadow" >
    <div class="container">
        <a class="navbar-brand tw-bold logo" href="/">
            <h2><span class="text-danger p-0 m-0">o</span><span class="text-warning p-0 m-0">n</span><span class="text-info p-0 m-0">s</span><span class="text-success p-0 m-0">Auto</span></h2>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link fs-6 fw-semibold" aria-current="page" href="/">Home</a>
            </li>
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link fs-6 fw-semibold" href="/dashboard">Dashboard</a>
            </li>
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link fs-6 fw-semibold" href="/product">Collections</a>
            </li>
            @if (Session::has('loginId'))
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link active text-warning mx-2 border border-warning rounded-pill px-2 py-1 fs-6 fw-semibold">{{$data->name}}</a>
            </li>
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link fs-6 fw-semibold" href="logout"><button class="btn btn-outline-danger m-0 px-2 py-1">
              Sign Out
            </button></a>
            </li>
            @endif
            @if (!Session::has('loginId'))
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link" href="login"><button class="btn btn-outline-warning px-2 py-1">
              Sign In
            </button></a>
            </li>
            <li class="nav-item d-flex align-items-center">
            <a class="nav-link" href="registration"><button class="btn btn-outline-info px-2 py-1">
              Sign Up
            </button></a>
            </li>
            @endif
        </ul>
        </div>
    </div>
  </div>
</div>