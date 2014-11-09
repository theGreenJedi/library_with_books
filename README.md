
## Installation ##

### Obtain the Dependencies ###

Although you could install all of the dependencies manually, it's much easier to just use the ```bundle``` command.  Ensure that you have the ```bundle``` command installed by running the following command:

    gem install bundler

Now, run the following command from this project's root directory:

    bundle install

And that's it!  All of the dependencies have been installed!

### Setup the Database ###

Run the following command from inside this project's root directory:

    sqlite ./library.db

This will launch the SQLite3 console and open (or create) the ```library.db``` database.  Now, run the following command to create the database schema:

    .read ./schema.sql

You can verify that the schema was created by running the following command:

    .schema

If everything was successful, then the ```.schema``` command should print the schema that you just created.  Lastly, let's populate the database with some data:

    .read ./seed.sql

You can verify that the database has been populated by running the following command:

    SELECT * FROM books;

If you see a listing of books, then the database has been initialized correctly!  Now, exit the SQLite3 console:

    .quit

