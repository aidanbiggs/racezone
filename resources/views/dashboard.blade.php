@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <div class ="col-md-15 text-center">
                        <a href="/posts/create" class ="btn btn-primary"> Create Race</a>
                    </div>
                    <h3>Your Race Posts</h3>
                    @if(count($posts)>0)
                    <table class = "table table-striped">
                        <tr>
                            <td><b>Title</b></td>
                            
                            <td></td>
                        </tr>
                        @foreach($posts as $post)
                        <tr>
                                <td name>{{$post->title}}</td>
                                
                                <!--<td><a href="/posts/{{$post->id}}/edit" class="btn btn-primary">Edit</a></td>-->
                                <td>  {{Form::open(['action' => ['PostsController@destroy', $post->id] ,'method' => 'POST','class' => 'pull-right'])}}

                                        {{Form::hidden('_method','DELETE')}}
                                        <div class = "text-right">
                                            {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                                        </div>
                                    {{Form::close()}}</td>
                        </tr>
                        @endforeach
                    </table>
                    @else
                        <p>You have no races posted</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
