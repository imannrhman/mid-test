CREATE TABLE email_list (
	id SERIAL PRIMARY KEY,
	email varchar
);

CREATE TABLE email_list_2 (
	id SERIAL PRIMARY KEY,
	email varchar
);

CREATE TABLE email_list_3 (
	id SERIAL PRIMARY KEY,
	email varchar
);


INSERT INTO email_list (email) VALUES ('abc@gmail.com'), ('def@gmail.com'), ('abc@yahoo.com'), ('abc@gmail.com');

INSERT INTO email_list_2 (email) VALUES ('abc@gmail.com'), ('def@gmail.com'), ('abc@yahoo.com'), ('abc@gmail.com'), ('def@gmail.com'), ('def@gmail.com'), ('abc@bing.com');

INSERT INTO email_list_3 (email) VALUES ('abc@gmail.com'), ('def@gmail.com'), ('abc@yahoo.com'), ('abc@gmail.com'), ('def@gmail.com'), ('def@gmail.com'), ('abc@bing.com');

SELECT email FROM email_list GROUP BY email HAVING COUNT(email) > 1;

SELECT email FROM email_list_2 GROUP BY email HAVING COUNT(email) > 1;

SELECT email FROM email_list_3 GROUP BY email HAVING COUNT(email) > 1;
