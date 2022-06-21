@extends('products.layout')
@section('product')


<div>
  <section class="container py-4">
    <h2 style="font-family: Yanone Kaffeesatz, sans-serif">
      <small>
        <i class="fas fa-car"></i>
      </small> {{ $products->car_name }}
    </h2>
    <div class="row">
      <div class="col-sm-12 col-md-7">
        <div class="card border-0 bg-dark text-white">
          <img
            src="{{ $products['image_url'] }}"
            class="img-fluid"
            alt="..."
          />
          <div class="card-img-overlay p-0">
            <div>
              <div class="d-flex justify-content-between">
                <p></p>
                <h5
                  class="p-1 my-2"
                  style=" backgroundColor: #465c57"
                >
                {{ $products->price }}
                </h5>
              </div>
              <div class="footer">
                <p class="my-0 mx-3 p-2">
                  ({{ $products->review }} Reviews)
                  <br />
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
     <div class="col-md-5">
        <h6 class="text-secondary fw-bold">PRICE</h6>
        <h4 class="border-danger border-bottom d-inline-block mb-4 ">
          
          {{ $products->price }}
        </h4>
        <h6 class="text-secondary fw-bold">TYPE</h6>
        <h5 class="border-danger border-bottom d-inline-block mb-4">
          {{ $products->type }}
        </h5>
        <h6 class="text-secondary fw-bold">INTERIOR</h6>
        <h5 class="border-danger border-bottom d-inline-block mb-4">
          {{ $products->interior }}
        </h5>
        <h6 class="text-secondary fw-bold">ENGINE</h6>
        <h5 class="border-danger border-bottom d-inline-block mb-4">
          {{ $products->engin }}
        </h5><br>
        <a href="{{ url('/product/' . $products->id . '/edit') }}" title="Edit Student"><button class="btn btn-primary btn-sm">Edit</button></a>
        <form method="POST" action="{{ url('/product' . '/' . $products->id) }}" accept-charset="UTF-8" style="display:inline">
            {{ method_field('DELETE') }}
            {{ csrf_field() }}
            <button type="submit" class="btn btn-danger btn-sm" title="Delete Contact" onclick="return confirm(&quot;Confirm delete?&quot;)">Delete</button>
        </form>
      </div>
    </div>
    <h6 class="pt-4 fw-bold text-secondary">
      <span class="text-dark fs-5">Car Detail:</span>
      <br />
      {{ $products->detail }}
    </h6>
  </section>
  <div class="container my-5">
    <div class="row">
      <div class="col-sm-12 col-md-6">
        <div class="card shadow ">
          <div class="card-body">
            <h1 class="card-title">Contact Us</h1>
            <hr class="w-50 text-danger p-1 rounded-pill" />
            <br />
            <h5 class="card-text">Phone : +(143) 1846-367</h5>
            <br />
            <h5 class="card-text">Office : +(423) 4805-567</h5>
            <br />
            <h5 class="card-text">E-mail : onsAuto@yahoo.com</h5>
            <br />
            <h5>
              Social :
              <i
                class="fa-brands fa-facebook-f mx-2 text-primary"
                aria-hidden="true"
              ></i>
              <i
                class="fa-brands fa-twitter mx-2 text-info"
                aria-hidden="true"
              ></i>
              <i
                class="fa-brands fa-instagram mx-2 text-danger"
                aria-hidden="true"
              ></i>
              <i class="fa fa-envelope mx-2" aria-hidden="true"></i>
            </h5>
            <br />
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="bg-secondary">
      <div class="container py-5 slogan">
        <h2 class="text-light">BROWSE BY TYPES</h2>
        <div>
          <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4 ">
            <div class="col">
              <img
                src="https://i.ibb.co/q0Ljd0M/c2104693771f4550a157f74b2cbe09b9.jpg"
                class="card-img img-fluid"
                alt="..."
              />
              <div>
                <h5 class="m-0 fs-3">CONVERTIBLE</h5>
                <p class="text-light">2 Cars</p>
              </div>
            </div>
            <div class="col">
              <img
                src="https://i.ibb.co/nz4t25Q/1fc9307c0e104e80bbf8957b7d244e0c.jpg"
                class="img-fluid"
                alt="..."
              />
              <div>
                <h5 class="m-0 fs-3">COUPLE</h5>
                <p class="text-light">5 Cars</p>
              </div>
            </div>
            <div class="col">
              <img
                src="https://i.ibb.co/DMz8Dwy/01a1594f561344bfb2b0224083c46759.jpg"
                class="card-img img-fluid"
                alt="..."
              />
              <div>
                <h5 class="m-0 fs-3">CARCOAL</h5>
                <p class="text-light">6 Cars</p>
              </div>
            </div>
            <div class="col">
              <img
                src="https://i.ibb.co/WtnZHfF/bcf42c1dbc734902b4c656a12ea82097.jpg"
                class="card-img img-fluid"
                alt="..."
              />
              <div>
                <h5 class="m-0 fs-3">ZEEP</h5>
                <p class="text-light">5 Cars</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div>
      <div class="container pt-5 slogan"
        id="Contact"
      >
        <div class="text-center">
          <h1>
            We’d Love to Hear <span class="text-color-update-2">From You</span>
          </h1>
          <p class="text-color-update">
            Whether you’re curious about <span class="logo"><span class="text-danger">o</span><span class="text-warning">n</span><span class="text-info">s</span><span class="text-success">Auto</span></span>, a free treatment, or even press—we’re ready to answer any and all
            questions.
          </p>
        </div>
        <div class="row my-5 pb-5">
          <div class="col-md-4 col-12">
            <div>
              <h1 class="text-color-update">Vancouver</h1>
              <p>
                400-401 West Georgia <br />
                St.Vancouver, BC, <br />
                Canada, V6B 5A1
              </p>
            </div>
            <div>
              <h1 class="text-color-update">Berlin</h1>
              <p>
                Unbounce Germany <br />
                GmbH (Apartment 1) <br />
                c/o Factory Works <br />
                GmbH Rheinsberger <br />
                Str. 76/77 10115 Berlin
              </p>
            </div>
          </div>
          <div class="col-md-8 col-12">
            <div class="row">
              <div class="col-md-6 col-12">
                <div>
                  <h1 class="text-color-update">Worldwide</h1>
                  <p>+1 604 484 1354</p>
                </div>
                <div>
                  <h1 class="text-color-update">United Kingdom</h1>
                  <p>+44 808 178 0202</p>
                </div>
                <div>
                  <h1 class="text-color-update">Bangladesh</h1>
                  <p>+880 195 497 7023</p>
                </div>
              </div>
              <div class="col-md-6 col-12">
                <div>
                  <h1 class="text-color-update">
                    North America (Toll Free)
                  </h1>
                  <p>+1 888 515 9161</p>
                </div>
                <div>
                  <h1 class="text-color-update">Australia</h1>
                  <p>+61 1800 861 218</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@stop