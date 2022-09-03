<!-- resources/views/actor/index.blade.php -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
@extends('layouts.app')
</head>
<body>
@section('body')

<div class="container">
{{-- <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
<span><strong>ADD</strong></span> --}}
</a>
@if ($message = Session::get('success'))
<div class="alert alert-success alert-block">
{{-- <button type="button" class="close" data-dismiss="alert">×</button> --}}
<strong>{{ $message }}</strong>
</div>
@endif

<div class="table-responsive">
<table class="table table-striped table-hover">
<thead>
	<tr>
		<th>Id</th>
		<th>name</th>
		<th>note</th>
		<th>Photo</th>

		@if(Auth::user()->name == "admin")
			<th>Edit</th>
			<th>Delete</th>
		@endif
	</tr>
</thead>
<tbody>
	@foreach($actors as $actor)
		<tr>
			<td>{{$actor->id}}</td>
			<td>{{-- <a href="{{route('actor.show',$actor->id)}}"> --}}{{$actor->name}}</a></td>
			<td>{{Profanity::blocker($actor->note)->filter()}}</td>
			<td><img src="{{ asset('image/'.$actor->image) }} " height="160" width="300"></td>

			@if(Auth::user()->name == "admin")
			@if($actor->deleted_at==null)
				<td align="center"><button><a href="{{ route('actor.edit',$actor->id) }}">Edit</a></button></td>
				<td align="center">{!! Form::open(array('route' => array('actor.destroy', $actor->id),'method'=>'DELETE')) !!}
				<button >Delete</i></button>
				{!! Form::close() !!}
			@else
					<td></td>
					<td></td>
					<td align="center"><button><a href="{{ route('actor.restore',$actor->id) }}">Restore</a></button></td>
			@endif
			@endif
		</tr>
	@endforeach
</tbody>
</table>
</div>
<div>{{$actors->links()}}</div>
</div>
@endsection

</body>
</html>