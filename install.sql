USE `coco`;s

CREATE TABLE `users` (
  `_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(15) NULL,
  `password_hash` VARCHAR(155) NOT NULL,
  `enabled` TINYBLOB NULL,
  `notes` TINYTEXT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC));

CREATE TABLE `user_roles` (
  `_id` INT NOT NULL,
  `role` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`_id`, `role`));

INSERT INTO `coco`.`users` SET
  `_id` = 1,
  `username` = 'admin',
  `password_hash` = '$2y$10$CT2MQAXBYHY2RyhOPQ78UuOxLtyCpSEhzJvMhnc7j5bwR7ulCf8Ru',
  `enabled` = 1,
  `notes` = 'Admin account';

INSERT INTO `user_roles` SET
  `_id` = 1,
  `role` = 'admin';

CREATE TABLE `containers` ();
