SELECT
    actor_id,
    first_name,
    last_name
FROM actor
ORDER BY
    last_name,
    first_name;

SELECT
    actor_id,
    first_name,
    last_name
FROM actor
WHERE
    last_name = 'wILLIAMS'
    OR last_name = 'DAVIS';

SELECT DISTINCT customer_id
FROM rental
WHERE
    DATE(rental_date) = '2005-07-05';

SELECT C.email, R.rental_date
FROM customer AS C
    INNER JOIN rental AS R ON C.customer_id = R.customer_id
WHERE
    DATE(R.rental_date) = '2005-06-14'
ORDER BY 2 DESC;