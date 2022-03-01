--DROP TABLE IF EXISTS Offices;
--
--create table Offices (
--  OfficesID INT AUTO_INCREMENT  PRIMARY KEY,
--  ID varchar(250),
--  Name varchar(250),
--  Location varchar(250),
--  Email varchar(250),
--  tell_number varchar(100),
--  max_occupants int,
--  Color varchar(100) default 'Black'
--);
--
--INSERT INTO Offices(ID, Name, Location, Email, tell_number, max_occupants, Color) VALUES(
--  'SKJNCKJSNDCKJSACSALKDJC', 
--  'Specno', 
--  '1st Floor, Newlink Building, 1 new street, Cape Town, South Africa', 
--  'dev@specno.com', 
--  '0872320000',
--  23, 
--  'LightBlue'
--),
--(
--  'SJDCAKJSDCJASNSDKCNSANCKS', 
--  'Another Office', 
--  'A different location', 
--  'dev@office.com', 
--  '0923209302',
--  23, 
--  'LightBlue'
--);
--
--
--
--DROP TABLE IF EXISTS Staff;
--
--
--create table Staff (
--  staffID INT AUTO_INCREMENT  PRIMARY KEY,
--  ID varchar(250) NOT Null,
--  OfficeID varchar(250) NOT NULL, 
--  full_name varchar(250) NOT NULL
--);
--
----ALTER table Staff 
----ADD FOREIGN KEY (OfficeID) 
----REFERENCES Offices(ID);
--
--INSERT INTO Staff(ID, OfficeID, full_name) VALUES(
--  'ASKDCASJKNCKALJSNCA',
--  'SKJNCKJSNDCKJSACSALKDJC',
--  'Test Employee'
--),
--(
--  'KLSJDNCASJNDCKJSDC',
--  'SKJNCKJSNDCKJSACSALKDJC',
--  'Test Employee Two'
--),
--(
--  'SAKDJCNAKSJDNCJKSDC',
--  'SJDCAKJSDCJASNSDKCNSANCKS',
--  'Not with specno'
--);

-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 21. Feb 2022 um 15:26
-- Server-Version: 5.7.36
-- PHP-Version: 7.3.6

--SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
--SET AUTOCOMMIT = 0;
--START TRANSACTION;
--SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `btppzsmy_test_application`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `application_order`
--
DROP TABLE IF EXISTS Users;

create table Users (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id int(11) NOT NULL,
  username varchar(250) NOT NULL,
  password varchar(250) NOT NULL
);

-- passwordDubai
INSERT INTO Users (id, user_id, username, password) VALUES
(1, 1, 'infinity', '$2a$10$Up1Gy96P.Yns5Kkxg1agbO7WwTU7k5oi2oktLIdUXdyb2WSk53xaG');



DROP TABLE IF EXISTS application_order;

CREATE TABLE application_order (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id int(11) NOT NULL,
  volume int(11) NOT NULL,
  date_of_submission datetime NOT NULL
);

--
-- Daten für Tabelle `application_order`
--

INSERT INTO application_order (id, user_id, volume, date_of_submission) VALUES
(1, 1, 300, '2021-12-08 10:06:40'),
(2, 2, 300, '2021-12-22 10:06:40'),
(3, 3, 400, '2021-12-30 10:07:41'),
(4, 2, 400, '2022-01-03 10:07:41'),
(5, 4, 600, '2022-01-08 10:08:19'),
(6, 5, 600, '2022-01-18 10:08:19'),
(7, 6, 300, '2022-02-08 10:08:19'),
(8, 7, 300, '2022-02-08 10:08:19'),
(9, 8, 600, '2022-02-12 10:08:19'),
(10, 9, 600, '2022-02-15 10:08:19'),
(11, 10, 400, '2022-01-30 10:28:43');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `application_user`
--

DROP TABLE IF EXISTS application_user;

CREATE TABLE application_user (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_name text NOT NULL,
  position text,
  father int(11) DEFAULT NULL,
  notes text
);

--
-- Daten für Tabelle `application_user`
--

INSERT INTO application_user (id, user_name, position, father, notes) VALUES
(1, 'user_1', '0', 0, 'tree root'),
(2, 'user_2', 'L', 1, NULL),
(3, 'user_3', 'R', 1, NULL),
(4, 'user_4', 'L', 2, NULL),
(5, 'user_5', 'R', 2, NULL),
(6, 'user_6', 'R', 3, NULL),
(7, 'user_7', 'L', 3, NULL),
(8, 'user_8', 'L', 7, NULL),
(9, 'user_9', 'L', 8, NULL),
(10, 'user_10', NULL, -1, 'not placed yet');

