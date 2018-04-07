@extends('layouts.app')

@section('content')
<div class = "jumbotron text-center">
    <div class = "container">
        <h1>{{$title}} </h1>
        <p> Your #1 source for race tracking </p>
        <p><a class = "btn btn-primary btn-lg" href ="/login" role = "button"> Login </a> <a class="btn btn-primary btn-lg" href="/register" role="button">Register</a></p>
    </div>
</div>
@endsection