@extends('layouts.app')
@section('body')
<div class="container">
	<h2>Edit Producer</h2>
	{{-- {{ Form::model($producer,['route' => ['producer.update',$producer->id]]) }}
	{{csrf_field()}}
	{{ method_field('PATCH') }} --}}
	{{ Form::model($producer,['route' => ['producer.update',$producer->id],'files'=>true,'enctype'=>'multipart/form-data','method'=>'PATCH']) }}


	{{-- <div class="form-group">
		<label for="name" class="control-label">Name</label>
		{{ Form::text('name',null,array('class'=>'form-control','id'=>'name')) }}
	</div> --}}
	<div class="form-group">
		{{ Form::label('name','Name',array('class'=>'control-label'))}}
		{{ Form::text('name',null,array('class'=>'form-control','id'=>'name'))}}
		@if($errors->has('name'))
			<small>{{ $errors->first('name') }}</small>
		@endif
	</div>

	{{-- <div class="form-group">
		<label for="email" class="control-label">Email</label>
		{{ Form::textarea('email',null,array('class'=>'form-control','id'=>'email')) }}
	</div> --}}
	<div class="form-group">
		{{ Form::label('email','Email',array('class'=>'control-label'))}}
		{{ Form::text('email',null,array('class'=>'form-control','id'=>'email'))}}
		@if($errors->has('email'))
			<small>{{ $errors->first('email') }}</small>
		@endif
	</div>

	{{-- <div class="form-group">
		<label for="website" class="control-label">Website</label>
		{{ Form::text('website',null,array('class'=>'form-control','id'=>'website')) }}
	</div> --}}
	<div class="form-group">
		{{ Form::label('website','Website',array('class'=>'control-label'))}}
		{{ Form::text('website',null,array('class'=>'form-control','id'=>'website'))}}
		@if($errors->has('website'))
			<small>{{ $errors->first('website') }}</small>
		@endif
	</div>

	<button type="submit" class="btn btn-primary">Save</button>
	<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>
</div>
{!! Form::close() !!}
@endsection