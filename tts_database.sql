create database tts_database;
USE tts_database;

CREATE TABLE user_account (
user_id INT NOT NULL AUTO_INCREMENT,
user_name VARCHAR(255) NOT NULL,
user_email VARCHAR(255) NOT NULL unique,
user_password VARCHAR(255) NOT NULL,
user_photo VARCHAR(255), 
user_bio TEXT,
member_since DATETIME DEFAULT CURRENT_TIMESTAMP, 
PRIMARY KEY (user_id));

/*folders table*/
CREATE TABLE folders(
folder_id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
folder_name VARCHAR(255) NOT NULL,
date_created DATETIME NOT NULL,
PRIMARY KEY (folder_id),
FOREIGN KEY (user_id) REFERENCES user_account(user_id));

/*files table*/
CREATE TABLE files(
file_id INT NOT NULL AUTO_INCREMENT,
folder_id INT NOT NULL,
file_name VARCHAR(255) NOT NULL,
extension VARCHAR(255) NOT NULL,
file_size BIGINT NOT NULL,
upload_date DATETIME NOT NULL,
PRIMARY KEY (file_id),
FOREIGN KEY (folder_id) REFERENCES folders(folder_id));


select * from user_account;
select * from folders;
select * from files;
ALTER TABLE files ADD COLUMN file_url VARCHAR(1000);
ALTER TABLE files MODIFY COLUMN file_url VARCHAR(1000);


