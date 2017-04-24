# SQL Homework

The Dominion Cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'
```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:
```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1. Return ALL the data in the 'movies' table.
SELECT * FROM movies;

2. Return ONLY the name column from the 'people' table
SELECT name FROM people;

3.Oops! Someone at CodeClan spelled Johnny's name wrong! Change it to reflect the proper spelling (change 'Jnny Watson' to 'Johnny Watson').
UPDATE people SET name = 'Johnny Watson' WHERE name = 'Jnny Watson';

4. Return ONLY your name from the 'people' table.
SELECT name FROM people WHERE name = 'Lewis Burns'

5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';

6. Create a new entry in the 'people' table with the name of one of the instructors.
INSERT INTO people (name) VALUES ('Matthew Healy');

7. Craig Morton, has decided to hijack our movie evening, Remove him from the table of people.
DELETE FROM people WHERE name = 'Craig Morton';

8. Somehow the list of people includes two people named 'Simon'. Change these entries to the proper names ('Jack Jarvis' and 'Victor McDade')
UPDATE people SET name = 'Jack Jarvis' WHERE id = 4;
UPDATE people SET name = 'Victor McDade' WHERE id = 5;

9. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');

10. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30
UPDATE movies SET show_time = '21:35' WHERE show_time = '21:45';

## Extension

1. Research how to delete multiple entries from your table in a single command.
DELETE FROM movies WHERE id < 5 ;
