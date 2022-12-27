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

-- Comments Schema
-- Two FOREIGN KEYS 

CREATE TABLE comments(
id int AUTO_INCREMENT PRIMARY KEY,
comment_text varchar(255),
user_id int NOT NULL,
photo_id int NOT NULL,
create_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (user_id) REFERENCES photos(id)
);

-- likes Schema
-- Two Foreign keys

CREATE TABLE likes(
-- we are not referring likes to anyone else so there is no id
user_id int NOT NULL,
photo_id int NOT NULL,
create_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (photo_id) REFERENCES photos(id),
-- primary key will not allow us to insert two or more likes as there should should be only one like from one user to one photo
PRIMARY KEY (user_id,photo_id) -- single primary key but multiple fields
);
