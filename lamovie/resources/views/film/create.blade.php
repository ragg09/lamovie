@extends('layouts.app')
@section('body')
<div class="container">

<h2>Create New Film</h2>
{{ Form::open(array('url'=>'film','files'=>true,'enctype'=>'multipart/form-data')) }}

<div class="form-group">
{{ Form::label('title','Title',array('class'=>'control-label'))}}
{{ Form::text('title',Request::old('title'),array('class'=>'form-control','id'=>'title'))}}
@if($errors->has('title'))
<small>{{ $errors->first('title') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('story','Film Story',array('class'=>'control-label'))}}
{{ Form::textarea('story',Request::old('story'),array('class'=>'form-control','id'=>'story'))}}
@if($errors->has('story'))
<small>{{ $errors->first('story') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('actor','Actor',array('class'=>'control-label'))}}
{{ Form::select('actor',$actor,null,array('class'=>'form-control'))}}
@if($errors->has('actor'))
<small>{{ $errors->first('actor') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('role','Role',array('class'=>'control-label'))}}
{{ Form::select('role',$role,null,array('class'=>'form-control'))}}
@if($errors->has('role'))
<small>{{ $errors->first('role') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('genre','Genre',array('class'=>'control-label'))}}
{{ Form::select('genre',$genre,null,array('class'=>'form-control'))}}
@if($errors->has('genre'))
<small>{{ $errors->first('genre') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('producer','Producer',array('class'=>'control-label'))}}
{{ Form::select('producer',$producer,null,array('class'=>'form-control'))}}
@if($errors->has('producer'))
<small>{{ $errors->first('producer') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('released_at','Released at',array('class'=>'control-label'))}}
{{ Form::date('released_at',Request::old('released_at'),array('class'=>'form-control','id'=>'released_at'))}}
@if($errors->has('released_at'))
<small>{{ $errors->first('released_at') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('duration','Duration',array('class'=>'control-label'))}}
{{ Form::text('duration',Request::old('duration'),array('class'=>'form-control','id'=>'duration'))}}
@if($errors->has('duration'))
<small>{{ $errors->first('duration') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('info','Additional Information',array('class'=>'control-label'))}}
{{ Form::textarea('info',Request::old('info'),array('class'=>'form-control','id'=>'info'))}}
@if($errors->has('info'))
<small>{{ $errors->first('info') }}</small>
@endif
</div>

<div class="form-group">
{{ Form::label('poster','Image',array('class'=>'control-label'))}}
{{ Form::file('poster', Request::old('poster'), array('class' => 'form-control', 'id' => 'poster'))}}
@if($errors->has('poster'))
<small>{{ $errors->first('poster') }}</small>
@endif
</div>

<button type="submit" class="btn btn-primary">Save</button>
<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>
</div>
</div>
{{ Form::close()}}
@endsection