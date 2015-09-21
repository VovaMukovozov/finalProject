CREATE DATABASE musicstore;
USE musicstore;

CREATE TABLE albums (
	album_id smallint(3) PRIMARY KEY AUTO_INCREMENT,
	album_title varchar(50) NOT NULL,
	album_length varchar(5) NOT NULL DEFAULT "00:00",
	album_numsongs smallint(2) NOT NULL,
	album_gener varchar(10) NOT NULL,
	album_cover_photo varchar(255)
)