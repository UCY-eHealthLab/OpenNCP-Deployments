-- Database export via SQLPro (https://www.sqlprostudio.com/allapps.html)
-- Exported by kostaskarkaletsis at 03-02-2021 14:15.
-- WARNING: This file may contain descructive statements such as DROPs.
-- Please ensure that you are running the script at the proper location.


-- BEGIN TABLE users
DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
                         `username` varchar(50) NOT NULL,
                         `password` varchar(20) NOT NULL,
                         `enabled` tinyint(3) NOT NULL DEFAULT '1',
                         PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Inserting 3 rows into users
-- Insert batch #1
INSERT INTO users (username, password, enabled) VALUES
('esante', '9yB2aLU@AAycH6', 1);
-- END TABLE users

-- BEGIN TABLE user_roles
DROP TABLE IF EXISTS user_roles;
CREATE TABLE `user_roles` (
                              `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
                              `username` varchar(50) NOT NULL,
                              `role` varchar(50) NOT NULL,
                              PRIMARY KEY (`user_role_id`),
                              UNIQUE KEY `uni_username_role` (`role`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Inserting 3 rows into user_roles
-- Insert batch #1
INSERT INTO user_roles (user_role_id, username, role) VALUES
(1, 'esante', 'ROLE_ADMIN');

-- END TABLE user_roles

drop table portal_users;
CREATE TABLE portal_users (
                              user_id int(11) NOT NULL AUTO_INCREMENT,
                              username varchar(45) NOT NULL,
                              password varchar(64) NOT NULL,
                              rolename varchar(45) NOT NULL,
                              emailaddress varchar(45) NOT NULL,
                              firstname varchar(45) NOT NULL,
                              lastname varchar(45) NOT NULL,
                              language varchar(45) NOT NULL,
                              orgid varchar(45) NOT NULL,
                              orgname varchar(45) NOT NULL,
                              orgtype varchar(45) NOT NULL,
                              phonenumber varchar(45) NOT NULL,
                              address varchar(45) NOT NULL,
                              city varchar(45) NOT NULL,
                              zip varchar(45) NOT NULL,
                              enabled tinyint(4) DEFAULT NULL,
                              PRIMARY KEY (`user_id`)
);


INSERT INTO portal_users (username,password,rolename,emailaddress,firstname,lastname,language,orgid,orgname,orgtype,phonenumber,
                          address,city,zip,enabled)
VALUES ('doctor',
        '$2a$10$HNyt0CQIQ5EgMWHWWtT4CubzUBD2ebwbF96OOZy9wIdaTSY3OoKXO',
        'ROLE_DOCTOR','admin@ncp.eu','doctor','doctor','el_GR','1','IDIKA','PHARM','21011122233','address','Athens','51111',1);
INSERT INTO portal_users (username,password,rolename,emailaddress,firstname,lastname,language,orgid,orgname,orgtype,phonenumber,
                          address,city,zip,enabled)
VALUES ('pharmacist',
        '$2a$10$HNyt0CQIQ5EgMWHWWtT4CubzUBD2ebwbF96OOZy9wIdaTSY3OoKXO',
        'ROLE_PHARMACIST','admin@ncp.eu','pharmacist','pharmacist','el_GR','1','IDIKA','PHARM','21011122233','address','Athens','51111',1);
INSERT INTO portal_users (username,password,rolename,emailaddress,firstname,lastname,language,orgid,orgname,orgtype,phonenumber,
                          address,city,zip,enabled)
VALUES ('admin',
        '$2a$10$HNyt0CQIQ5EgMWHWWtT4CubzUBD2ebwbF96OOZy9wIdaTSY3OoKXO',
        'ROLE_ADMIN','admin@ncp.eu','admin','admin','el_GR','1','IDIKA','PHARM','21011122233','address','Athens','51111',1);
