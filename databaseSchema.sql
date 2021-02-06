-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `user_details`;
CREATE TABLE `user_details` (
  `userId` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_pic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `user_details_FK` (`userId`),
  CONSTRAINT `user_details_FK` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `user_relationships`;
CREATE TABLE `user_relationships` (
  `followerId` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followingId` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `user_relationships_FK` (`followerId`),
  KEY `user_relationships_FK_1` (`followingId`),
  CONSTRAINT `user_relationships_FK` FOREIGN KEY (`followerId`) REFERENCES `users` (`userId`),
  CONSTRAINT `user_relationships_FK_1` FOREIGN KEY (`followingId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2021-02-06 06:02:56
