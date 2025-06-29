/*
This will get the top 10 highest rated books with 100 or more ratings
This uses an INNER JOIN on books and book ratings to grab matching values in both tables
*/
SELECT 
  b.title,
  b.authors,
  ROUND(AVG(r.rating), 2) AS avg_rating, -- rounding average rating for cleaner data
  COUNT(*) AS total_ratings
FROM
  ratings AS r
JOIN
  books b ON r.book_id = b.book_id
GROUP BY 
  b.book_id
HAVING COUNT(*) >= 100
ORDER BY avg_rating DESC
LIMIT 10;