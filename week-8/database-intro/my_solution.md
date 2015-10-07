1) SELECT * FROM states;
2) SELECT * FROM regions;
3) SELECT state_name, population FROM states;
4)SELECT state_name, population ORDER BY population DESC;
5)SELECT state_name FROM states WHERE region_id = 7;
6) SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
7)SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
8) SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9) SELECT region_name, state_name FROM regions JOIN states ON region_id = id;
10) SELECT regions.region_name, states.state_name FROM states JOIN regions ON states.region_id = regions.id ORDER BY regions.region_name ASC;


What are databases for?
storing data
What is a one-to-many relationship?
When you have one category that has many of something in it.  For example, each student has a classroom and a classroom has many students.

What is a primary key? What is a foreign key? How can you determine which is which?
Primary key is a designated identifying key that exists (is not NULL) and is unique for each item in a column.  A foreign key is a column that contains the primary key of another table.  Usually the primary key is identified with id and the foreign is identifed with the name of the first table _id.

How can you select information out of a SQL database? What are some general guidelines for that?
Use the SELECT command, tell it what columns to select (or * for all of them), FROM which table, and some sort of condition.
ex. SELECT * FROM table1 WHERE cost < 100.

[MY tables from Schema Designer](outfits_tables.png)
