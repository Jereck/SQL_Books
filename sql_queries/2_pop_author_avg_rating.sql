/*
This query will group authors in the top 10 average ratings
Multiple authors have the same ratings
*/
SELECT 
  authors,
  AVG(average_rating) AS avg_rating
FROM
  books
GROUP BY
  authors
ORDER BY avg_rating DESC
LIMIT 10;