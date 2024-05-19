CREATE DATABASE IF NOT EXISTS kidney;
USE kidney;

CREATE TABLE IF NOT EXISTS doctor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(100) NOT NULL,
  role VARCHAR(20) DEFAULT 'doctor'
);

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    sex VARCHAR(50),
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) DEFAULT 'user'
);


CREATE TABLE IF NOT EXISTS prediction_data (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  prediction VARCHAR(255),
  doctor_prediction VARCHAR(255),
  image LONGBLOB,
  FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS user_tokens (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  token VARCHAR(512) NOT NULL,
  role VARCHAR(10) NOT NULL
);

-- Insert initial data into the doctor table
INSERT INTO  doctor(name, email, password, role) VALUES ('John Doe', 'john.doe@example.com', '1234', 'doctor');
