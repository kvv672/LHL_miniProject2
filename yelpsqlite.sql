-- SQLite
SELECT  name, review_count, rating, price, address, categories.categories
    FROM restaurant
    JOIN  address
    ON address.id = restaurant.id
    JOIN categories
    ON categories.id = restaurant.id
    WHERE rating > 3 and price != "nan"
    ORDER BY rating DESC, price, review_count
    LIMIT 10;

SELECT categories, COUNT(*) FROM categories
    GROUP BY categories;

SELECT  name, categories.categories
    FROM restaurant
    JOIN  address
    ON address.id = restaurant.id
    JOIN categories
    ON categories.id = restaurant.id
    WHERE rating > 3 and price != "nan"
    ORDER BY rating DESC, price, review_count
    LIMIT 10;
