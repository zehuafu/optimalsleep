SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
        `email` varchar(45) NOT NULL,
        `username` varchar(45) NOT NULL,
        `point` int NOT NULL,
        `age` int NOT NULL,
        `gender` enum('male', 'female', 'intersex', 'trans', 'non-conforming', 'personal', 'eunuch'),

        `friend_email` varchar(45),

        PRIMARY KEY (`email`,`friend_email`),
        CONSTRAINT FOREIGN KEY (`friend_email`) REFERENCES `friends` (`email`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
        `email` varchar(45) NOT NULL,
        PRIMARY KEY (`email`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
