@extends('layouts.app')

@section('content')

<div class="jumbotron" >
    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center">
      <h1 class="display-3 font-weight-normal">{{$title}} </h1>
      <p class="lead font-weight-normal">Your #1 source for race tracking</p>
      <p><a class = "btn btn-primary btn-lg" href ="/login" role = "button"> Login </a> <a class="btn btn-primary btn-lg" href="/register" role="button">Register</a></p>
    
    </div>
    <div class="product-device box-shadow d-none d-md-block"></div>
    <div class="product-device product-device-2 box-shadow d-none d-md-block"></div>
  </div>

 <div class="container">
 <div class="row ">
  <div class="col-lg-4" style = "padding-left:'2%'">
    <h2>What is the RaceZone?<h2>
    <p class = "lead"> The RaceZone is a way for runners to track their race times. Simply by creating an account users can log their race times for races, not only for themselves, but for all participants! </p>

  </div>
  <div class="col-lg-4">
    <h2>Create Race</h2>
    <p class = "lead"> Users can write about the races they've run and log their own times as well as other participants<p>
    <p><a class = "btn btn-secondary btn-lg" href ="/posts" role = "button"> Create Races </a></p>
 </div>
  <div class="col-lg-4">
    <h2>View Races</h2>
    <p class = "lead"> You don't need an account to view race times, simply click 'View Races' to see what users have already added </p>
    <p><a class = "btn btn-secondary btn-lg" href ="/posts" role = "button"> View Races </a></p>
  </div>
</div>
 </div>

@endsection