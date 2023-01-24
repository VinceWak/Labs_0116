SELECT prime_genre FROM ironhack_examples.applestore
GROUP BY prime_genre;

SELECT prime_genre, sum(rating_count_tot) as total_ratings
FROM applestore
GROUP BY prime_genre
ORDER BY total_ratings DESC;

SELECT prime_genre, count(id_1) FROM ironhack_examples.applestore
GROUP BY prime_genre
ORDER BY count(id_1)
DESC;

SELECT track_name, rating_count_tot
FROM applestore
ORDER BY rating_count_tot desc limit 10;

-- We do not have a clue as to what ratings the users gave.

-- We do not have a clue as to how many users rated these apps

-- Not one app is in both lists.

SELECT track_name, rating_count_tot, user_rating
FROM applestore
ORDER BY rating_count_tot desc, user_rating desc limit 3;

SELECT avg(price), user_rating
FROM applestore
GROUP BY user_rating
ORDER BY user_rating DESC;

-- We cannot give a proper answer to the question but we can have an average idea.




