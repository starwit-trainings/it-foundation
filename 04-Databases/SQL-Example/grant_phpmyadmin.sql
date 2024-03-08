DROP DATABASE IF EXISTS liga;
CREATE DATABASE liga;
CREATE USER 'liga'@'localhost' IDENTIFIED BY 'liga';
GRANT ALL PRIVILEGES ON liga.* TO 'liga'@'localhost';