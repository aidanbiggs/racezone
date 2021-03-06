<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Illuminate\Support\Facades\DB;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts =  Post::groupBy('title')->orderBy('updated_at','desc')->paginate(5);
        return view('posts.index')->with('posts', $posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [

            'title' => 'required',
            'body' => 'required',
            'racerName.*' =>'required',
            'racerTime.*' => 'required'

        ]);
        $input = $request->all();
        $i = 0;
        $timeArray = array();
        foreach($input['racerTime'] as $value){

            $timeArray[$i] = $value; 
            $i++;
        }

        $i=0;
        foreach($input['racerName'] as $value){
            
            $post = new Post;
            $post->title = $request ->input('title');
            $post->body = $request->input('body');
            $post->racer_name = $value;
            $post->race_time = $timeArray[$i];
            $post->user_id = auth()->user()->id;
            $post->save();
            $i++;
            
        }

        return redirect('/posts')->with('success','Post Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $updatedAt = DB::table('posts')->select('updated_at')->where('id', $id)->get();
        $updatedAt = json_decode(json_encode($updatedAt),true);//converts from object to single string

        $userId = DB::table('posts')->select('user_id')->where('id', $id)->get();
        $userId = json_decode(json_encode($userId),true);

        $posts = DB::table('posts')->where('updated_at',$updatedAt)->where('user_id',$userId)->get();
        
        return view('posts.show')->with('posts', $posts);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post =  Post::find($id);

        return view('posts.edit')->with('post', $post);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [

            'title' => 'required',
            'body' => 'required',
            'racerName[]' =>'required',
            'racerTime[]' => 'required'

        ]);
        
        //create post

        $post = Post::find($id);
        $post->title = $request ->input('title');
        $post->body = $request->input('body');
        $post->racer_name = $request->input('racerName');
        $post->race_time = $request->input('racerTime');
        $post->save();

        return redirect('/posts')->with('success','Post Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);
        $updatedAt = DB::table('posts')->select('updated_at')->where('id', $id)->get();
        $updatedAt = json_decode(json_encode($updatedAt),true);//converts from object to single string

        $userId = DB::table('posts')->select('user_id')->where('id', $id)->get();
        $userId = json_decode(json_encode($userId),true);

        DB::table('posts')->where('updated_at',$updatedAt)->where('user_id',$userId)->delete();
        
        return redirect('/dashboard')->with('success','Post Removed');
    }

    

}
