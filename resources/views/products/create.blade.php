@extends('products.layout')
@section('product')
<div class="container py-5">
  <div class="card">
  <div class="card-header">Please give car information</div>
  <div class="card-body">
      
      <form action="{{ url('product') }}" method="post">
        {!! csrf_field() !!}
        <label class="fw-bold">Car Name</label></br>
        <input type="text" name="car_name" id="car_name" class="form-control"></br>
        <label class="fw-bold">Price</label></br>
        <input type="text" name="price" id="price" class="form-control"></br>
        <label class="fw-bold">Interior</label></br>
        <input type="text" name="interior" id="interior" class="form-control"></br>
        <label class="fw-bold">Type</label></br>
        <input type="text" name="type" id="type" class="form-control"></br>
        <label class="fw-bold">Rating</label></br>
        <input type="text" name="rating" id="rating" class="form-control"></br>
        <label class="fw-bold">Review</label></br>
        <input type="text" name="review" id="review" class="form-control"></br>
        <label class="fw-bold">Engin</label></br>
        <input type="text" name="engin" id="engin" class="form-control"></br>
        <label class="fw-bold">Image URL</label></br>
        <input type="text" name="image_url" id="image_url" class="form-control"></br>
        <label class="fw-bold">Detail</label></br>
        <textarea type="text" name="detail" id="detail" class="form-control"></textarea></br>
        <input type="submit" value="Save" class="btn btn-success"></br>
    </form>
   
  </div>
</div>
</div>
@stop