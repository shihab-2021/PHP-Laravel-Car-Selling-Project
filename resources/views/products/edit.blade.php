@extends('products.layout')
@section('product')
<div class="container py-5">
  <form action="{{ url('product/' .$products->id) }}" method="post">
        {!! csrf_field() !!}
        @method("PATCH")
        <input type="hidden" name="id" id="id" value="{{$products->id}}" id="id" />
        <label class="fw-bold">Car Name</label></br>
        <input type="text" name="car_name" id="car_name" class="form-control" value="{{$products->car_name}}"></br>
        <label class="fw-bold">Price</label></br>
        <input type="text" name="price" id="price" class="form-control" value="{{$products->price}}"></br>
        <label class="fw-bold">Interior</label></br>
        <input type="text" name="interior" id="interior" class="form-control" value="{{$products->interior}}"></br>
        <label class="fw-bold">Type</label></br>
        <input type="text" name="type" id="type" class="form-control" value="{{$products->type}}"></br>
        <label class="fw-bold">Rating</label></br>
        <input type="text" name="rating" id="rating" class="form-control" value="{{$products->rating}}"></br>
        <label class="fw-bold">Review</label></br>
        <input type="text" name="review" id="review" class="form-control" value="{{$products->review}}"></br>
        <label class="fw-bold">Engin</label></br>
        <input type="text" name="engin" id="engin" class="form-control" value="{{$products->engin}}"></br>
        <label class="fw-bold">Image URL</label></br>
        <input type="text" name="image_url" id="image_url" class="form-control" value="{{$products->image_url}}"></br>
        <label class="fw-bold">Detail</label></br>
        <textarea type="text" name="detail" id="detail" class="form-control" value="{{$products->detail}}">{{$products->detail}}</textarea></br>
        <input type="submit" value="Update" class="btn btn-success"></br>
    </form>
</div>
@stop