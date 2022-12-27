DROP DATABASE ig_clone;
CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users(
id int AUTO_INCREMENT PRIMARY KEY,
username varchar(255) UNIQUE NOT NUll,
create_at timestamp DEFAULT NOW()
);


-- Photos Schema
-- user_id as a foreign key from photos table referencing id(primary key) of users table

CREATE TABLE photos(
id int AUTO_INCREMENT PRIMARY KEY,
image_url varchar(255) NOT NULL,
user_id int NOT NULL,
create_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (user_id) REFERENCES users(id)
);
