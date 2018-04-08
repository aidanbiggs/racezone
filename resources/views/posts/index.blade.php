@extends('layouts.app')

@section('content')
<div class="container">
    <h1> Races </h1>
   
    <div class="pagination"> {{$posts->links()}} </div>
    </div>
    @if(count($posts)>0)
        @foreach($posts as $post)
        
                <div class="container py-3">
                  <div class="card">
                    <div class="row ">
                      <div class="col-md-4">
                          <img src="https://placeholdit.imgix.net/~text?txtsize=38&txt=400%C3%97400&w=400&h=400" class="w-100">
                        </div>
                        <div class="col-md-8 px-2">
                          <div class="card-block px-3">
                            <h4 class="card-title" style="padding-top:3%"><a href="/posts/{{$post->id}}">{{$post->title}}</a></h4>
                            <p class="card-text">{{$post->body}}</p>
                            
                            <a href="/posts/{{$post->id}}" class="btn btn-primary">View Race</a>
                            <div></div>
                            <small class="card-text">Created on {{$post->created_at}} by {{$post->user->name}}</small>
                          </div>
                        </div>
              
                      </div>
                    </div>
                  </div>
                </div>
        @endforeach
        <div class="container">
          <div class="row"
          <div class="col-md-2 col-md-offset-8">
              {{$posts->links()}} 
          </div>
          </div>
        </div>
        
    @else
        <p> No posts found</p>
    @endif
</div>    
@endsection

