-- Create Database Cuny
Create database cuny

use cuny

-- Create User table
create TABLE cuny.usertable (
	user_id INTEGER,
    Firstname VARCHAR (20),
    Lastname VARCHAR (20)
    );
    
-- Insert data into usertable
Insert into cuny.usertable (user_id, Firstname, Lastname)
	Values
    (1, 'Tom', 'Racony'),
    (2, 'Nick', 'Torento'),
    (3, 'Eric', 'Pike'),
    (4, 'Scott', 'Limback'),
    (5, 'Greg', 'Gerardin'),
    (6, 'James', 'Hope');
commit;
-- Validate data
select * from cuny.usertable

-- Create movie_ratings table    
Create table cuny.movie_ratings(
	user_id INTEGER,
    movie_id INTEGER,
    movie_name VARCHAR(50),
    movie_rating FLOAT
    )
    
-- Insert data into movie_rating

insert into cuny.movie_ratings (user_id, movie_id, movie_name, movie_rating)
	VALUES
(1,1,'The Dark Knight Rises',4),
(1,2,'Mission: Impossible – Fallout',4.5),
(1,3,'Star Wars: The Last Jedi',4),
(1,4,'Black Panther',4),
(1,5,'Incredibles 2',4.5),
(1,6,'Avengers: Infinity War',5),
(2,1,'The Dark Knight Rises',3),
(2,2,'Mission: Impossible – Fallout',4),
(2,3,'Star Wars: The Last Jedi',4),
(2,4,'Black Panther',5),
(2,5,'Incredibles 2',5),
(2,6,'Avengers: Infinity War',5),
(3,1,'The Dark Knight Rises',4.5),
(3,2,'Mission: Impossible – Fallout',5),
(3,3,'Star Wars: The Last Jedi',4),
(3,4,'Black Panther',4),
(3,5,'Incredibles 2',5),
(3,6,'Avengers: Infinity War',5),
(4,1,'The Dark Knight Rises',3),
(4,2,'Mission: Impossible – Fallout',4),
(4,3,'Star Wars: The Last Jedi',3),
(4,4,'Black Panther',4),
(4,5,'Incredibles 2',5),
(4,6,'Avengers: Infinity War',5),
(5,1,'The Dark Knight Rises',4),
(5,2,'Mission: Impossible – Fallout',5),
(5,3,'Star Wars: The Last Jedi',5),
(5,4,'Black Panther',3),
(5,5,'Incredibles 2',4),
(5,6,'Avengers: Infinity War',3),
(6,1,'The Dark Knight Rises',5),
(6,2,'Mission: Impossible – Fallout',4.8),
(6,3,'Star Wars: The Last Jedi',4.5),
(6,4,'Black Panther',4.5),
(6,5,'Incredibles 2',4.8),
(6,6,'Avengers: Infinity War',4.5);
    
    commit
select * from cuny.movie_ratings    
    

select A.user_id, A.Firstname, A.Lastname, B.movie_id, B.movie_name, B.movie_rating
 from usertable A, movie_ratings B where A.user_id = B.user_id 

select movie_id, round(avg(movie_rating),2) from cuny.movie_ratings group by movie_id

    