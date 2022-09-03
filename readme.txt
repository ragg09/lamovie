FILES INCLUDED

Laravel Project folder (lamovie)
**************************************************************************
Screen shots (ScreenShots)
**************************************************************************
Current DB (lamovie.sql)
	current user accounts
		email: admin@gmail.com pass:adminadmin
		emails:
			renegunayon@gmail.com
			julszxc@gmail.com
			lmml@gmail.com
			target@gmail.com
		pass(all users):
			192168254123

P.S. We include our current db if ever need to be tested, some functionaliies wont work with 
     just using the data from the seeder becuase it has no in-between relationships, 
     unless you create movies or film manually, that is why.
**************************************************************************
<VirtualHost laravel.movie:80>
    ServerAdmin laravel.movie
    DocumentRoot "../XAMPP/htdocs/lamovie/public"
    ServerName laravel.movie
    <Directory "../XAMPP/htdocs/lamovie/public">
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>

127.0.0.1 laravel.movie
**************************************************************************
RENGE AGELO G GUNAYON
JULIUS ARNEL MANALO

