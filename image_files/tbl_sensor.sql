-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 11:30 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8 */
;

--
-- Database: `phppot`
--
-- --------------------------------------------------------
CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;

--
-- Table structure for table `devices`
--
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(10) unsigned NOT NULL,
  `dev_id` varchar(35) NOT NULL,
  `dev_location_name` varchar(35) NOT NULL,
  `dev_latitude` real NOT NULL,
  `dev_longitude` real NOT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8;

--
-- Dumping data for table `devices`
--
INSERT INTO
  `devices` (
    `id`,
    `dev_id`,
    `dev_location_name`,
    `dev_latitude`,
    `dev_longitude`
  )
VALUES
  (1, '00EF9212EF4B6C2D', 'Ludwigsburg', 48.88519, 9.20561),
  (2, '00AF47313F3BF73F', 'Eberhardstrasse', 48.88519, 9.20561),
  (3, '00A4C5A31D5E9F19', 'eberhardstrasse2', 448.89216, 9.17553),
  (4, '00861AB0751CADBF', 'paxcounter_nr2', 48.8944303, 9.190356),
  (5, '007B7965C8E2BF60', 'paxcounter_nr1', 48.88519, 9.17553);
--
-- Indexes for dumped tables
--
--
-- Indexes for table `devices`
--
ALTER TABLE
  `devices`
ADD
  PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE
  `devices`
MODIFY
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 6;

--#########################################################################################
CREATE TABLE IF NOT EXISTS `readings` (
  `id` int(10) unsigned NOT NULL,
  `dev_id` varchar(35) NOT NULL,
  `received_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `count_wifi` int(10) unsigned NOT NULL,
  `count_ble` int(10) unsigned NOT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

INSERT INTO
  `readings` (
    `id`,
    `dev_id`,
    `count_wifi`,
    `count_ble`
  )
VALUES
  (1, '00EF9212EF4B6C2D', 0, 0),
  (9, '00EF9212EF4B6C2D', 0, 0);

ALTER TABLE
  `readings`
ADD
  PRIMARY KEY (`id`);

ALTER TABLE
  `readings`
MODIFY
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;

--#########################################################################################
CREATE TABLE IF NOT EXISTS `nodeRedResults` (
  `id` int(10) unsigned NOT NULL,
  `received_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `dev_location_name` varchar(35) NOT NULL,
  `pax_counter` int(10) unsigned NOT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8;

INSERT INTO
  `nodeRedResults` (
    `id`,
    `dev_location_name`,
    `pax_counter`
  )
VALUES
  (1, 'Eberhardstrasse', 15),
  (2, 'Stadthalle', 17),
  (3, 'Freibad', 19),
  (4, 'Kirche', 30);

ALTER TABLE
  `nodeRedResults`
ADD
  PRIMARY KEY (`id`);

ALTER TABLE
  `nodeRedResults`
MODIFY
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 5;

--#########################################################################################
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

INSERT INTO
  `users` (
    `id`,
    `username`,
    `password`
  )
VALUES
  (1, 'admin', 'pw'),
  (2, 'test', 'pw2');

ALTER TABLE
  `users`
ADD
  PRIMARY KEY (`id`);

ALTER TABLE
  `users`
MODIFY
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;