SELECT * FROM users;

DROP TABLE users;

CREATE TABLE users ( 
	name VARCHAR(30) NOT NULL,
	address VARCHAR(30) NOT NULL,
	email VARCHAR(30),
	phone VARCHAR(15),
	username VARCHAR(30) NOT NULL,
	password VARCHAR(30) NOT NULL,
	city VARCHAR(30) NOT NULL,
	country VARCHAR(30) NOT NULL
);

CREATE TABLE books ( 
	id INTEGER NOT NULL,
	title VARCHAR(30) NOT NULL,
	author VARCHAR(30),
	price INTEGER
);