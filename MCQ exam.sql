1) Who won the Oscar for “Actor in a Leading Role” in 2015?;

SELECT 
	*
FROM 
	oscars
WHERE 
	award = 'Actor in a Leading Role'
  AND year = 2015;

  
2) What query will produce the ten oldest movies in the database?;

SELECT * 
FROM 
	movies 	
WHERE 
	release_date IS NOT NULL 
ORDER BY 
	release_date 
	ASC 
LIMIT 
	10;

3) How many unique awards are there in the Oscars table?;

SELECT count (DISTINCT award)
FROM
	oscars;
	
	
4) How many movies are there that contain the word “Spider” within their title?;

SELECT count (*)
FROM 
	movies
WHERE
	title like '%Spider%';

5) How many movies are there that are both in the "Thriller" genre 
and contain the word “love” anywhere in the keywords?;

SELECT 
	Count(Distinct M. movie_id) AS MovieCount
FROM	
	keywords AS K
JOIN Keywordsmap AS KM 
	ON K.keyword_id = KM.keyword_id
JOIN movies AS M
	ON KM.movie_id = M.movie_id
JOIN genremap AS GM
	ON M.movie_id = GM.movie_id
JOIN genres AS G
	ON GM.genre_id = G.genre_id
WHERE	 
	G.genre_name = 'Thriller' AND K.keyword_name LIKE '%love%';


	
6) How many movies are there that were released between 1 August 2006
 ('2006-08-01') and 1 October 2009 ('2009-10-01') that have a popularity score of more 
 than 40 and a budget of less than 50 000 000?;

SELECT COUNT(*)
FROM movies
WHERE release_date >= '2006-08-01'
	AND release_date <= '2009-10-01'
	AND popularity > 40 
	AND budget < 50000000;

7) How many unique characters has "Vin Diesel" played 
so far in the database?



