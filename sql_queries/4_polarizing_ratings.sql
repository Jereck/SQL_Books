/*
This query gets the most polarizing book ratings
It uses standard deviation in the ratings
*/
SELECT
  b.title,
  STDDEV(r.rating) AS rating_stddev
FROM
  ratings AS r
JOIN
  books AS b ON r.book_id = b.book_id
GROUP BY
  b.book_id
ORDER BY
  rating_stddev DESC
LIMIT 10;