<nav>
	<ul>
		<li><a href="{{url('/')}}" > {{ Auth::user()->name }}</a></li>
		<li><a href="">View</a>
			<ul>
				<li><a href="{{route('actor.index')}}" >Actor</a></li>
				<li><a href="">Subok2</a></li>
				<li><a href="">Subok3</a></li>
			</ul>
		</li>
		<li><a href="">Create</a>
			<ul>
				<li><a href="{{route('actor.create')}}" >Actor</a></li>
				<li><a href="">Subok2</a></li>
				<li><a href="">Subok3</a></li>
			</ul>
		</li>
		{{-- <li><a href="">Update</a>
			<ul>
				<li><a href="" >Actor</a></li>
				<li><a href="">Subok2</a></li>
				<li><a href="">Subok3</a></li>
			</ul>
		</li>
		<li><a href="">Delete</a>
			<ul>
				<li><a href="" >Actor</a></li>
				<li><a href="">Subok2</a></li>
				<li><a href="">Subok3</a></li>
			</ul>
		</li> --}}
	</ul>
</nav>