@extends('layouts.app')
@section('body')
<div class="container">
	<h2>Edit genre</h2>
	{{-- {{ Form::model($genre,['route' => ['genre.update',$genre->id]]) }}
	{{csrf_field()}}
	{{ method_field('PATCH') }} --}}
	{{ Form::model($genre,['route' => ['genre.update',$genre->id],'files'=>true,'enctype'=>'multipart/form-data','method'=>'PATCH']) }}


	{{-- <div class="form-group">
		<label for="Genre" class="control-label">Genre</label>
		{{ Form::text('Genre',null,array('class'=>'form-control','id'=>'Genre')) }}
	</div> --}}
	<div class="form-group">
		{{ Form::label('genre','Genre',array('class'=>'control-label'))}}
		{{ Form::text('genre',null,array('class'=>'form-control','id'=>'genre'))}}
		@if($errors->has('genre'))
			<small>{{ $errors->first('genre') }}</small>
		@endif
	</div>

	<button type="submit" class="btn btn-primary">Save</button>
	<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>
</div>
{!! Form::close() !!}
@endsection