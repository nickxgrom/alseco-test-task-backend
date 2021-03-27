CREATE DATABASE ALSECO;
USE ALSECO;
CREATE TABLE IF NOT EXISTS `employees` (`id` INTEGER NOT NULL auto_increment , `firstName` VARCHAR(255), `secondName` VARCHAR(255), `patronymic` VARCHAR(255), PRIMARY KEY (`id`)) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS `material_values` (`id` INTEGER NOT NULL auto_increment , `name` VARCHAR(255), `price` FLOAT(7,2), `employeeId` INTEGER, PRIMARY KEY (`id`), FOREIGN KEY (`employeeId`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) ENGINE=InnoDB;