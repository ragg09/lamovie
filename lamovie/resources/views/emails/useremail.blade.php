
<h3>User Info</h3>
<p>Name: <span style="text-transform: uppercase;">{{ Auth::user()->name }}</span></p>
<p>Email: {{ Auth::user()->email }}</p>
<br><br><br>
<center><p>****MESSAGE****</p></center>
<p>{{ Profanity::blocker($data['message'])->filter() }}</p>
