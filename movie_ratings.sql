/*load table movie_ratings*/
DROP TABLE IF EXISTS movie_ratings;
CREATE TABLE movie_ratings (
	user_id int(3),
	item_id int(4),
	rating int(1),
	time_stamp varchar(20),
	PRIMARY KEY (time_stamp),
	FOREIGN KEY (user_id) REFERENCES user (id),
	FOREIGN KEY (item_id) REFERENCES movie_items (id)
	);

LOAD DATA LOCAL INFILE 'u.data'
	INTO TABLE movie_ratings;

/*load table movie_items*/
DROP TABLE IF EXISTS movie_items;
CREATE TABLE movie_items (
	id int(4),
	title varchar(255),
	release_date char(11),
	video_release_date char(11),
	imdb_url text,
	unknown int(1),
	action int(1),
	adventure int(1),
	animation int(1),
	childerns int(1),
	comedy int(1),
	crime int(1),
	documentary int(1),
	drama int(1),
	fantasy int(1),
	film_noir int(1),
	horror int(1),
	musical int(1),
	mystey int(1),
	romance int(1),
	sci_fi int(1),
	thriller int(1),
	war int(1),
	western int(1),
	PRIMARY KEY (id)
	);

LOAD DATA LOCAL INFILE 'u.item'
INTO TABLE movie_items
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';
 
/*load table user*/ 
DROP TABLE IF EXISTS user;
CREATE TABLE user (
	id int(3),
	age int(2),
	gender char(1),
	occupation varchar(20),
	zip_code char(5),
	PRIMARY KEY (id)
);

LOAD DATA LOCAL INFILE 'u.user'
INTO TABLE user
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';
