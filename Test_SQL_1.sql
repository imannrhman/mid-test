CREATE TABLE input_number (
	id SERIAL PRIMARY KEY,
	num INT
);

CREATE TABLE input_number_2 (
	id SERIAL PRIMARY KEY,
	num INT
);

CREATE TABLE input_number_3 (
	id SERIAL PRIMARY KEY,
	num INT
);



INSERT INTO input_number (num) VALUES (1), (1), (1), (2), (1), (2), (2), (1);

INSERT INTO input_number_2 (num) VALUES (1), (2), (2), (2), (2), (1), (1), (1), (1);

INSERT INTO input_number_3 (num) VALUES (1), (2), (1), (2), (2), (1), (1), (2), (1);


-- Example 1
SELECT DISTINCT
    num FROM ( SELECT num,
               LAG(num) OVER (ORDER BY id) AS prev_num,
               LEAD(num) OVER (ORDER BY id) AS next_num
               FROM input_number ) AS subquery
        WHERE num = prev_num AND num = next_num;


-- Example 2
SELECT DISTINCT
    num FROM ( SELECT num,
               LAG(num) OVER (ORDER BY id) AS prev_num,
               LEAD(num) OVER (ORDER BY id) AS next_num
               FROM input_number_2 ) AS subquery
        WHERE num = prev_num AND num = next_num;

-- Example 3
SELECT DISTINCT
    num FROM ( SELECT num,
               LAG(num) OVER (ORDER BY id) AS prev_num,
               LEAD(num) OVER (ORDER BY id) AS next_num
               FROM input_number_3 ) AS subquery
        WHERE num = prev_num AND num = next_num;