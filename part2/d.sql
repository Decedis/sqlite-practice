-- Below is a dummy query, if we leave it empty then the SQLITE package will throw a non-readable error
-- Change the query to pass the test :)
SELECT users.first_name, users.last_name
FROM favorites 
JOIN dogs ON favorites.dog_id = dogs.id
JOIN users ON favorites.user_id = users.id
WHERE dogs.name="Zoey";



