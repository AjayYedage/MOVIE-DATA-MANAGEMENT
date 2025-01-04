use etlhive;
select * from movies_sql;
/* Retrieve the names of all the Bollywood
movies which are of drama genre in the
dataset.*/
select * from movies_sql where Genre='drama';

/*Retrieve the names of all the Bollywood
movies of Amir Khan in the dataset.*/
select * from movies_sql where Lead_Star='Aamir Khan' or Director='Aamir Khan';

/*Retrieve the names of all the Bollywood
movies which are directed by RamGopal
Verma in the dataset.*/
select * from movies_sql where Director='Ram Gopal Verma';

/*Retrieve the names of all the Bollywood
movies which have been released over
more than 1000 number of screens in the
dataset.*/
select * from movies_sql where Number_of_Screens>1000;

/*Retrieve the names of all the Bollywood
movies which have generated Revenue(INR)
more than 700000000 in the dataset.*/
select * from movies_sql where Revenue>700000000;

/*Retrieve the names of all the Bollywood
movies which have budget less than 1cr in
the dataset.*/
select * from movies_sql where Budget<10000000;

/*Retrieve the names of all the Bollywood
movies which are flop in the
dataset.(flop=revenue – budget)*/
select *,Revenue-Budget as flop from movies_sql where Revenue<budget;

/*Retrieve the names and profit of all the
Bollywood movies in the
dataset.(profit=revenue – budget)*/
select * ,revenue-budget as profit from movies_sql where revenue>Budget ;

	/*Retrieve the names and loss of all the
Bollywood movies in the
dataset.(loss=revenue – budget)*/
select *, revenue-budget as loss from movies_sql where Revenue<budget;

/*Retrieve the names of all the Bollywood
movies which have been released on
holidays in the dataset.*/
select * from movies_sql where Release_Period='holiday';

/*Retrieve the names of all the Bollywood
movies which have lead star as Akshay
Kumar and directed by Priyadarshan in the
dataset.*/
select * from movies_sql where Lead_Star='Ajay Devgn' and Director='Priyadarshan';

/*Retrieve the names of all the Bollywood
movies starting with ‘a’ in the dataset.*/
select * from movies_sql where Movie_Name like 'A%';

/*Retrieve the names of all the Bollywood
movies ending with ‘a’ in the dataset.*/
select * from movies_sql where Movie_Name like '%A';

/*Retrieve the names of all the Bollywood
movies having ‘a’ at second place of the
name in the dataset.*/
select * from movies_sql where Movie_Name like '_a%';

/*Retrieve the names of all the Bollywood
movies having music of amit trivedi the
dataset.*/
select * from movies_sql where Music_Director='Amit Trivedi';

/*Retrieve the names of all the comedy
movies of Akshay Kumar in the dataset.*/
select Movie_Name,genre from movies_sql where Lead_Star='Akshay Kumar' and genre='comedy';

/*Retrieve the names of movies and star
name starring khan in the dataset.*/
select movie_name, lead_star from movies_sql where lead_star like '%khan';

/*Retrieve all the information of movies
race and race2 in the dataset.*/
select * from movies_sql where movie_name in ( 'race','race 2');

/*Retrieve the names of all the thriller
Bollywood movies in the dataset.*/
select * from movies_sql where Genre='thriller';

/*Retrieve the names and budget of all the
Bollywood movies according to the highest
budget to lowest budget in the dataset.*/
select movie_name,budget from movies_sql order by budget desc;

/*Retrieve the names and budget of top 5
Bollywood movies with highest budget in
the dataset.*/
select movie_name,budget from movies_sql order by budget desc limit 5;

/*Retrieve the names of top 10 Bollywood
movies with highest revenue generation in
the dataset.*/
select movie_name,revenue from movies_sql order by Revenue desc limit 10;

/*Retrieve the names of top 5 movies of
salman khan in the dataset.*/
select movie_name,revenue,lead_star from movies_sql where Lead_Star='salman khan' order by Revenue desc limit 5;

/*Retrieve the names of top 5 floped movies
in the dataset.*/
select movie_name, revenue-budget as loss from movies_sql order by(select revenue-budget as loss) limit 5;

/*Retrieve the names of top 5 hit movies in
the dataset.*/
select movie_name, revenue-budget as profit from movies_sql order by(select revenue-budget as profit)desc limit 5;

/*Which is the second movie released on
maximum screens.*/
select movie_name,Number_of_screens from movies_sql order by Number_of_Screens desc limit 1,1;

/*Which is the 10th movies with highest
budget.*/
select * from movies_sql order by budget desc limit 9,1;

/*Which is the 2nd movie of Amitabh
Bachchan with highest budget.*/
select * from movies_sql where lead_star='Amitabh Bachchan' order by budget desc limit 1,1;

/*Which are the flopped movies of Akshay
Kumar.*/
select * from movies_sql where lead_star='Akshay Kumar' and Revenue<Budget;

/*With which director Sharukh Khan have
given the biggest hit movie .*/
select director from movies_sql where Lead_Star='Shahrukh Khan' order by Revenue desc limit 1;