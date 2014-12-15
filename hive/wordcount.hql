DROP TABLE data;
CREATE EXTERNAL TABLE data (line STRING) ROW FORMAT DELIMITED FIELDS BY ' ';
SELECT world, count(1) AS count FROM
(SELECT explode split(line), '\s')) AS word FROM table) w GROUP BY word ORDER BY word;

