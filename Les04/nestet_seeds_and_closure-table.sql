﻿--
-- Script was generated by Devart dbForge Studio 2019 for MySQL, Version 8.1.22.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 02.11.2019 14:17:22
-- Server version: 5.5.5-10.3.13-MariaDB
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE php_spl;

--
-- Drop table `categories`
--
DROP TABLE IF EXISTS categories;

--
-- Drop table `category_links`
--
DROP TABLE IF EXISTS category_links;

--
-- Drop table `nestet_seeds`
--
DROP TABLE IF EXISTS nestet_seeds;

--
-- Set default database
--
USE php_spl;

--
-- Create table `nestet_seeds`
--
CREATE TABLE nestet_seeds (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  left_element INT(11) NOT NULL DEFAULT 0,
  right_element INT(11) NOT NULL DEFAULT 0,
  level INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE(id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 10,
AVG_ROW_LENGTH = 1820,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `category_links`
--
CREATE TABLE category_links (
  parent_id INT(11) UNSIGNED NOT NULL,
  child_id INT(11) DEFAULT NULL,
  level INT(11) DEFAULT NULL
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 1820,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Create table `categories`
--
CREATE TABLE categories (
  id_category INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  category_name VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id_category)
)
ENGINE = INNODB,
AUTO_INCREMENT = 6,
AVG_ROW_LENGTH = 3276,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

-- 
-- Dumping data for table nestet_seeds
--
INSERT INTO nestet_seeds VALUES
(1, 'Каталог', 1, 18, 0),
(2, 'Одежда', 2, 11, 1),
(3, 'Верхняя одежда', 3, 10, 2),
(4, 'Куртки', 4, 9, 3),
(5, 'Кофты', 5, 8, 3),
(6, 'Футблоки', 6, 7, 3),
(7, 'Продукты', 12, 17, 1),
(8, 'Молочные продукты', 13, 16, 2),
(9, 'Сыры', 14, 15, 3);

-- 
-- Dumping data for table category_links
--
INSERT INTO category_links VALUES
(1, 1, 0),
(1, 2, 1),
(1, 3, 1),
(1, 4, 2),
(1, 5, 2),
(2, 2, 1),
(2, 4, 2),
(3, 3, 1),
(3, 5, 2);

-- 
-- Dumping data for table categories
--
INSERT INTO categories VALUES
(1, 'Каталог'),
(2, 'Одежда'),
(3, 'Продукты'),
(4, 'Верхняя одежда'),
(5, 'Молочные продукты');

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;