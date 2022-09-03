<!DOCTYPE html>
<html>
<head>
	<title></title>
	@extends('layouts.app')
</head>
<body>
@section('body')
@foreach($film as $data)
	<center>
	<h1>{{$data->title}}</h1>
	<img src="{{ asset('image/'.$data->image) }}  "height="300" width="500">
	<h1>Film Story</h1>
	<p>{{Profanity::blocker($data->story)->filter()}}</p>
	<h1>Released Date</h1>
	<p>{{$data->released_at}}</p>
	<h1>Film Duration</h1>
	<p>{{$data->duration}}</p>
	<h1>Additional Information</h1>
	<p>{{Profanity::blocker($data->info)->filter()}}</p>

@if(Auth::user()->name == "admin")
				@if($data->deleted_at==null)
					<button><a href="{{ route('film.edit',$data->id) }}">Edit</a></button></td>
						{!! Form::open(array('route' => array('film.destroy', $data->id),'method'=>'DELETE')) !!}
					<button >Delete</i></button>
					{!! Form::close() !!}
				@else
					<td align="center"><button><a href="{{ route('film.restore',$data->id) }}">Restore</a></button></td>
				@endif
			@endif



@if(Auth::user()->name != "admin")
<h1>Rating</h1>
{{ Form::open(array('route'=>['rating.update',$data->id],'files'=>true, 'method'=>'PATCH')) }}
@if(count($user_rating))
	@if($user_rating[0]->rate!=null)
			{{ Form::radio('radio',5,($user_rating[0]->rate=="5")? true:false,array('disabled'=>'true')) }}
            {{ Form::radio('radio',4,($user_rating[0]->rate=="4")? true:false,array('disabled'=>'true')) }}
            {{ Form::radio('radio',3,($user_rating[0]->rate=="3")? true:false,array('disabled'=>'true')) }}
            {{ Form::radio('radio',2,($user_rating[0]->rate=="2")? true:false,array('disabled'=>'true')) }}
            {{ Form::radio('radio',1,($user_rating[0]->rate=="1")? true:false,array('disabled'=>'true')) }}
            {{Form::hidden('radio',$user_rating[0]->rate)}}
    @else
    		{{ Form::radio('radio',5,false) }}
            {{ Form::radio('radio',4,false) }}
            {{ Form::radio('radio',3,false) }}
            {{ Form::radio('radio',2,false) }}
            {{ Form::radio('radio',1,false) }}
    @endif
@else
			{{ Form::radio('radio',5,false) }}
            {{ Form::radio('radio',4,false) }}
            {{ Form::radio('radio',3,false) }}
            {{ Form::radio('radio',2,false) }}
            {{ Form::radio('radio',1,false) }}
	
@endif
			<br>
            {{Form::label('5',null)}}
            &nbsp
            {{Form::label('4',null)}}
            &nbsp
            {{Form::label('3',null)}}
            &nbsp
            {{Form::label('2',null)}}
            &nbsp
            {{Form::label('1',null)}}
            &nbsp
@endif
<hr width="50%">
            @php
            	$total=array();
            @endphp
            @foreach($rating as $ratings)
            @php
            	$total[]=$ratings->rate;
            @endphp
            @endforeach
            @if(count($total))
           	<h2>Ratings to this movie: {{array_sum($total)/count($total) }}</h2>

           	@endif


{{-- <button name='rate'><a href="{{route('rating.update','$film->id')}}">Rate</a></button> --}}
{{-- <button name="rate" type="submit" class="btn btn-primary">Save</button> --}}
<hr width="50%">

<h1>Comment/s</h1>

@foreach($film as $films)
	@foreach($films->users as $user)
		<h2>{{$user->name}}</h2>
		<p>: {{Profanity::blocker($user->pivot->comment)->filter()}}</p>
		<hr width="20%">
	@endforeach
@endforeach

@if(count($user_rating))
		@if($user_rating[0]->comment)
			{{Form::hidden('comment',$user_rating[0]->comment)}}
			<p>You have already commented to this movie!</p>
		@else
			{{ Form::textarea('comment',null,array('class'=>'form-control','id'=>'comment',''))}}
		@endif
	@if($user_rating[0]->rate==null||$user_rating[0]->comment==null)
		<button name="commentbtn" type="submit" class="btn btn-primary">Save</button>
	@else
		<p>You have already commented and rated to this movie!</p>
	@endif
@else
	@if(Auth::user()->name != "admin")
		{{ Form::textarea('comment',null,array('class'=>'form-control','id'=>'comment',''))}}
		<button name="commentbtn" type="submit" class="btn btn-primary">Submit</button>
	@endif
@endif


{{ Form::close()}}
</center>
@endforeach
@endsection
</body>
</html>