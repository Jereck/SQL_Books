/*
This query will grab the yearly publishing trends
*/
SELECT
  original_publication_year,
  COUNT(*) AS books_published
FROM
  books
WHERE
  original_publication_year IS NOT NULL AND original_publication_year > 0 -- filtering out null years, and those years that are negative values
GROUP BY
  original_publication_year
ORDER BY 
  original_publication_year DESC