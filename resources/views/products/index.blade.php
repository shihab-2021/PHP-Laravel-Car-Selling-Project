@extends('products.layout')
@section('product')
<div class="container">
    <h1 class="heading text-success text-center pt-5">
      OUR CAR COLLECTION
    </h1>
    <div class="container">
      <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-5 py-5">
        @foreach($products as $item)
          <div class="col">
            <div class="card shadow" style=" min-height: 450px ">
              <div class="card bg-dark text-white">
                <img
                  src="{{ $item['image_url'] }}"
                  class="card-img img-fluid"
                  alt="..."
                />
                <div class="card-img-overlay p-0">
                  <div>
                    <div class="d-flex justify-content-between">
                      <p></p>
                      <h5
                        class="p-1 my-2"
                        style="background-color: #465c57"
                      >
                        <span class="text-light">{{ $item->price }}</span>
                      </h5>
                    </div>
                    <div class="footer">
                      <p class="my-0 mx-3 p-2">
                        ({{ $item->review }} Reviews)
                        <br />
                      </p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <h5 class="card-title slogan">{{ $item->car_name }}</h5>
                <div class="d-flex justify-content-between slogan">
                    <small>Price: {{ $item->price }}</small>
                    <small class="text-success">{{ $item->interior }}</small>
                </div>
              </div>
              <div
                class="d-flex"
                style= "background-color: #dbe3e3"
              >
                <a
                  href="{{ url('/product/' . $item->id) }}"
                  class="w-50 text-center my-2"
                >
                  <button class="btn btn-outline-success">
                    Detail <i class="fa-solid fa-arrow-right"></i>
                  </button>
                </a>
                <button
                  type="button"
                  class="align-self-center btn btn-outline-danger mx-auto"
                >
                  BUY NOW <i class="fas fa-money-check-alt"></i>
                </button>
              </div>
            </div>
          </div>
        @endforeach
      </div>
    </div>
</div>
@stop