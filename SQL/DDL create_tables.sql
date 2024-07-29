-- Create the database
CREATE DATABASE GroupTask;

-- Create the user and grant privileges
GRANT USAGE ON *.* TO 'cst8285'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON GroupTask.* TO 'cst8285'@'localhost';
FLUSH PRIVILEGES;

-- Use the database
USE GroupTask;

-- Create the users table
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Create the favorites table
CREATE TABLE favorites (
    user_id INT NOT NULL,
    recipe_id INT NOT NULL,
    PRIMARY KEY (user_id, recipe_id)
);

-- Create the ratings table
CREATE TABLE ratings (
    user_id INT NOT NULL,
    recipe_id INT NOT NULL,
    rating INT NOT NULL,
    PRIMARY KEY (user_id, recipe_id)
);

-- Create the recipes table
CREATE TABLE recipes (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    instructions TEXT NOT NULL,
    image_url VARCHAR(255),  -- Column to store image URL
    cuisine VARCHAR(50),
    dietary_preferences VARCHAR(50),
    PRIMARY KEY (id)
);

-- Create the recipe_ingredients table
CREATE TABLE recipe_ingredients (
    recipe_id INT NOT NULL,
    ingredient VARCHAR(100) NOT NULL,  -- Column to store ingredient name
    amount VARCHAR(50) NOT NULL
);
