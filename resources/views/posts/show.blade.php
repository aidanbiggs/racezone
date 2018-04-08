@extends('layouts.app')

@section('content')
<div class="container">
    <a class ="btn btn-secondary" href="/posts" role = "button">Go Back</a>
    <div style="padding-top:3%"></div>
    @foreach($posts as $key => $post)
        @if($key ==0)        
        <h1 style ="padding-bottom:1%"> {{$post->title}} </h1>
        <h4 class ="lead" style ="padding-bottom:1%"> {{$post->body}} </h4>
        @endif
    @endforeach
    <hr>
    <table class = "table table-striped">
        <tr>
            <td><b>Racer Name</b></td>
            <td><b>Racer Time (HH:MM:SS)<b></td>
        </tr>
        @foreach($posts as $post)
        <tr>
                <td name>{{$post->racer_name}}</td>
                <td time>{{$post->race_time}} </td>

        </tr>
        @endforeach
    </table>

</div>
@endsection