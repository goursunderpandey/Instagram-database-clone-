CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users(
id int AUTO_INCREMENT PRIMARY KEY,
username varchar(255) UNIQUE NOT NUll,
create_at timestamp DEFAULT NOW()
);
