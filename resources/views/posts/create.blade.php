@extends('layouts.app')
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
@section('content')
    <h1> Create Race </h1>
    {!! Form::open(['action' => 'PostsController@store','method' => 'POST']) !!}
        <div class="form-group">
            {{Form::label('title','Race Name')}}
            {{Form::text('title','', ['class' => 'form-control' , 'placeholder'=> 'Race Name' ])}}
        </div>
        <div class="form-group">
            {{Form::label('body','Race Description')}}
            {{Form::text('body','', ['class' => 'form-control' , 'placeholder'=> 'Race Description' ])}}
        </div>
        <div class="form-group" id ="dynamic_field">
            <hr>
               <table>
                   <tr>
                        <td>{{Form::label('racerName','Racer Name')}}</td>
                        <td>{{Form::label('racerTime','Time (HH:MM:SS)')}}</td>
                        <td>{{Form::label('addNewRacer','  ')}}</td>
                   </tr>
                    <tr>
                        <td>{{Form::text('racerName','', ['class' => 'form-control' , 'placeholder'=> 'Name', 'name' => "racerName[]" ])}}</td>
                        <td>{{Form::text('racerTime','', ['class' => 'form-control' , 'placeholder'=> 'Time','name' => "racerTime[]"])}}<td>
                        <td>{{Form::button('Add New Racer', ['class' => 'btn btn-primary pull-left' ,'id' => 'add'])}}</td>
                    </tr>
                </table>
            </div>

        {{Form::submit('Submit' , ['class' => 'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection
<script type="text/javascript">

$(document).ready(function(){ 
    var i=1;  

    $('#add').click(function(){  
        i++;
        $('#dynamic_field').append('<tr id = "row' +i+ '"><td>{{Form::text("racerName","", ["class" => "form-control" , "placeholder"=> "Name" ,"name" => "racerName[]"])}}</td><td>{{Form::text("racerTime","", ["class" => "form-control" , "placeholder"=> "Time" , "name" => "racerTime[]"])}}<td><td>{{Form::button("X", ["class" => "btn btn-danger btn_remove", "name" => "remove", "id"=>"' +i + '"])}}</td></tr>');  
    }); 

    $(document).on('click', '.btn_remove', function(){  
        var button_id = $(this).attr("id");   
        $('#row'+button_id+'').remove();  
    });  
});
</script>