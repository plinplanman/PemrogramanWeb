/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.30 : Database - movietheatredb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`movietheatredb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `movietheatredb`;

/*Table structure for table `tbl_bookings` */

DROP TABLE IF EXISTS `tbl_bookings`;

CREATE TABLE `tbl_bookings` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int NOT NULL COMMENT 'theater id',
  `user_id` int NOT NULL,
  `show_id` int NOT NULL,
  `screen_id` int NOT NULL,
  `no_seats` int NOT NULL COMMENT 'number of seats',
  `amount` int NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_bookings` */

insert  into `tbl_bookings`(`book_id`,`ticket_id`,`t_id`,`user_id`,`show_id`,`screen_id`,`no_seats`,`amount`,`ticket_date`,`date`,`status`) values (12,'BKID6369842',4,4,17,3,1,380,'2021-04-15','2021-04-15',1),(13,'BKID2313964',6,5,21,6,4,2400,'2021-04-16','2021-04-15',1),(14,'BKID1766021',6,5,22,6,2,1200,'2021-04-16','2021-04-16',1);

/*Table structure for table `tbl_contact` */

DROP TABLE IF EXISTS `tbl_contact`;

CREATE TABLE `tbl_contact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int NOT NULL,
  `subject` varchar(1000) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_contact` */

/*Table structure for table `tbl_login` */

DROP TABLE IF EXISTS `tbl_login`;

CREATE TABLE `tbl_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_login` */

insert  into `tbl_login`(`id`,`user_id`,`username`,`password`,`user_type`) values (1,0,'admin','password',0),(2,3,'theatre','password',1),(3,4,'theatre2','password',1),(12,2,'harryden@gmail.com','password',2),(15,14,'USR295127','PWD195747',1),(17,4,'bruno@gmail.com','password',2),(18,6,'THR760801','PWD649976',1),(19,5,'james@gmail.com','password',2),(20,6,'login123@gmail.com','login123',2);

/*Table structure for table `tbl_movie` */

DROP TABLE IF EXISTS `tbl_movie`;

CREATE TABLE `tbl_movie` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `t_id` int NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int NOT NULL COMMENT '0 means active ',
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_movie` */

insert  into `tbl_movie`(`movie_id`,`t_id`,`movie_name`,`cast`,`desc`,`release_date`,`image`,`video_url`,`status`) values (1,3,'The Invisible Man','Elisabeth Moss, Oliver Jackson-Cohen, Aldis Hodge, Storm Reid','Cecilia\'s abusive ex-boyfriend fakes his death and becomes invisible to stalk and torment her. She begins experiencing strange events and decides to hunt down the truth on her own.','2020-03-04','images/tim.jpg','https://www.youtube.com/watch?v=WO_FJdiY9dA',0),(11,6,'Cherry','Tom Holland, Ciara Bravo, Harry Holland, Kelli Berglund','Cherry (Tom Holland) drifts from college dropout to army medic in Iraq-anchored only by his one true love, Emily (Ciara Bravo). But after returning from the war with PTSD, his life spirals into drugs.','2021-03-01','images/cherry.jpg','https://www.youtube.com/watch?v=H5bH6O0bErk',0),(12,6,'Godzilla vs. Kong','Millie Bobby Brown, Alexander Skarsgard, Rebecca Hall','The initial confrontation between the two titans -- instigated by unseen forces -- is only the beginning of the mystery that lies deep within the core of the planet.','2021-03-31','images/gvkpster.jpg','https://www.youtube.com/watch?v=odM92ap8_c0',0),(13,6,'Outside the Wire','Anthony Mackie, Damson Idris, Emily Beecham','In the near future, a drone pilot sent into a war zone finds himself paired up with a top-secret android officer on a mission to stop a nuclear attack.','2021-01-28','images/otw.jpg','https://www.youtube.com/watch?v=u8ZsUivELbs',0),(17,6,'Justice League','Ben Affleck, Henry Cavil, Ezra Miller','This is a demo description for the movie ZSJL.','2021-03-22','images/zsjl.jpg','https://www.youtube.com/watch?v=vM-Bja2Gy04',0);

/*Table structure for table `tbl_news` */

DROP TABLE IF EXISTS `tbl_news`;

CREATE TABLE `tbl_news` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_news` */

insert  into `tbl_news`(`news_id`,`name`,`cast`,`news_date`,`description`,`attachment`) values (3,'Black Widow','Scarlett Johansson, Florence Pugh, David Harbour, Rachel Weisz','2021-07-09','At birth the Black Widow (aka Natasha Romanova) is given to the KGB, which grooms her to become its ultimate operative.','news_images/blackwidow.jpg'),(9,'Shang-Chi and the Legend of the Ten Rings','Simu Liu, Awkwafina, Tony Leung, Fala Chen, Micheele Yeoh','2021-09-14','Shang-Chi is a master of numerous unarmed and weaponry-based wushu styles, including the use of the gun, nunchaku, and jian.','news_images/shangchi.jpg'),(10,'The Eternals','Richard Madden, Salma Hayek, Angelina Jolie, Kit Harrington','2021-11-04','The saga of the eternals, a race of immortal beings who lived on earth and shaped its history and civilizations.','news_images/eternals.jpg'),(11,'SAW','Rudi','2023-12-11','film tentang Saw','news_images/saw x.jpg');

/*Table structure for table `tbl_registration` */

DROP TABLE IF EXISTS `tbl_registration`;

CREATE TABLE `tbl_registration` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_registration` */

insert  into `tbl_registration`(`user_id`,`name`,`email`,`phone`,`age`,`gender`) values (2,'Harry Den','harryden@gmail.com','1247778540',22,'gender'),(4,'Bruno','bruno@gmail.com','7451112450',30,'gender'),(5,'James','james@gmail.com','7124445696',25,'gender'),(6,'Ferdi','login123@gmail.com','',21,'gender');

/*Table structure for table `tbl_screens` */

DROP TABLE IF EXISTS `tbl_screens`;

CREATE TABLE `tbl_screens` (
  `screen_id` int NOT NULL AUTO_INCREMENT,
  `t_id` int NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int NOT NULL COMMENT 'number of seats',
  `charge` int NOT NULL,
  PRIMARY KEY (`screen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_screens` */

insert  into `tbl_screens`(`screen_id`,`t_id`,`screen_name`,`seats`,`charge`) values (1,3,'Screen 1',100,350),(2,3,'Screen 2',150,310),(3,4,'Screen 1',200,380),(4,14,'Screen1',34,250),(5,6,'Demo Screen',150,300),(6,6,'IMX Screen',200,600);

/*Table structure for table `tbl_show_time` */

DROP TABLE IF EXISTS `tbl_show_time`;

CREATE TABLE `tbl_show_time` (
  `st_id` int NOT NULL AUTO_INCREMENT,
  `screen_id` int NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_show_time` */

insert  into `tbl_show_time`(`st_id`,`screen_id`,`name`,`start_time`) values (1,1,'Noon','10:00:00'),(2,1,'Matinee','14:00:00'),(3,1,'First','18:00:00'),(4,1,'Second','21:00:00'),(5,2,'Noon','10:00:00'),(6,2,'Matinee','14:00:00'),(7,2,'First','18:00:00'),(8,2,'Second','21:00:00'),(9,3,'Noon','10:00:00'),(10,3,'Matinee','14:00:00'),(11,3,'First','18:00:00'),(12,3,'Second','21:00:00'),(14,4,'Noon','12:03:00'),(15,5,'First','00:08:00'),(16,5,'Second','15:10:00'),(17,5,'Others','18:10:00'),(18,6,'Noon','00:02:00'),(19,6,'First','06:35:00'),(20,6,'Second','09:18:00'),(21,5,'Matinee','20:04:00');

/*Table structure for table `tbl_shows` */

DROP TABLE IF EXISTS `tbl_shows`;

CREATE TABLE `tbl_shows` (
  `s_id` int NOT NULL AUTO_INCREMENT,
  `st_id` int NOT NULL COMMENT 'show time id',
  `theatre_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `start_date` date NOT NULL,
  `status` int NOT NULL COMMENT '1 means show available',
  `r_status` int NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_shows` */

insert  into `tbl_shows`(`s_id`,`st_id`,`theatre_id`,`movie_id`,`start_date`,`status`,`r_status`) values (19,15,6,11,'2021-04-15',0,1),(20,20,6,13,'2021-04-15',0,1),(21,19,6,12,'2021-03-31',1,1),(22,18,6,17,'2021-04-16',1,1);

/*Table structure for table `tbl_theatre` */

DROP TABLE IF EXISTS `tbl_theatre`;

CREATE TABLE `tbl_theatre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_theatre` */

insert  into `tbl_theatre`(`id`,`name`,`address`,`place`,`state`,`pin`) values (3,'AMC Theatre','11500 Ash St','Leawd','DM',691523),(4,'Cinemark','3900 Dallas Parkway Suite 500 Plano','12 Street, Ep','UD',691523),(5,'Midtown Cinemas','Aue','Charles Street, EUS','DMM',691523),(6,'Riverview Theater','3800 42nd Ave S','Minneapolis, MN 55406','Minnesot',224450);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
