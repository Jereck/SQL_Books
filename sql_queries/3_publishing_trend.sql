/*
This query will grab the yearly publishing trends
*/
SELECT
  original_publication_year,
  COUNT(*) AS books_published
FROM
  books
GROUP BY
  original_publication_year
ORDER BY 
  original_publication_year DESC