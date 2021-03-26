create table cdkeys ( 
	id int auto_increment PRIMARY KEY,
	cdkey text NOT NULL,
	cdkeyMD5Hash text NOT NULL,
    inserted_by_user tinyint(1) not null,
	gameid int not null
);
create table profile_cdkeys (
	id int auto_increment PRIMARY KEY,
	cdkey_id int not null,
	profileid int not null
);
create table cdkey_rules (
	id int auto_increment PRIMARY KEY,
	gameid int not null,
	fail_if_not_found tinyint(1) not null
);