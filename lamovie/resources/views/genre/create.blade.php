@extends('layouts.app')
@section('body')
<div class="container">

<h2>Create New Genre</h2>
<form method="post" action="{{route('genre.store')}}" >
<input type="hidden" name="_token" value="{{ csrf_token() }}">

<div class="form-group">
<label for="Genre" class="control-label">Genre</label>
<input type="text" class="form-control" id="Genre" name="Genre" >
@if($errors->has('Genre'))
<small>{{ $errors->first('Genre') }}</small>
@endif
</div>


<button type="submit" class="btn btn-primary">Save</button>
<a href="{{url()->previous()}}" class="btn btn-default" role="button">Cancel</a>
</div>
</div>
</form>
@endsection