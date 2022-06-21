@extends('frontend.layouts.master')

@section('title','Home')

@section('main-content')
@include('frontend.Home.HeroSection')
@include('frontend.Home.Users')
@include('frontend.Home.ComfortZone')
@include('frontend.Home.Products')
@include('frontend.Home.BrowseByType')
@include('frontend.Home.Contact')

@endsection