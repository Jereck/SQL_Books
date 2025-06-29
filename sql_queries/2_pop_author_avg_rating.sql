/*
This query will group authors in the top 10 average ratings
Multiple authors have the same ratings
*/
SELECT 
  authors,
  AVG(average_rating) AS avg_rating,
  COUNT(*) AS num_books -- filtering for authors with more than 1 book
FROM
  books
GROUP BY
  authors
HAVING
  COUNT(*) > 1
ORDER BY avg_rating DESC
LIMIT 10;