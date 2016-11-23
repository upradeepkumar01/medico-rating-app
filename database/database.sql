/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - medico
*********************************************************************
Server version : 5.0.67-community-nt
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `medico`;

USE `medico`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `commenter` varchar(50) default NULL,
  `docter` varchar(50) default NULL,
  `comments` varchar(200) default NULL,
  `star` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comments` */

/*insert  into `comments`(`commenter`,`docter`,`comments`,`star`) values ('Pradeep','upradeepkumar47@gmail.com','hi nice','5');*/

/*Table structure for table `docter` */

DROP TABLE IF EXISTS `docter`;

CREATE TABLE `docter` (
  `email` varchar(200) NOT NULL,
  `specialities` varchar(200) default NULL,
  `designation` varchar(200) default NULL,
  `comments` varchar(200) default NULL,
  `affiliations` varchar(200) default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `docter` */

insert  into `docter`(`email`,`specialities`,`designation`,`comments`,`affiliations`) values 
							('doctor','Dermatologist','Cosmetologist','Dermatology, Dietitian Nutritionist','MBBS, MD'),
							('jenson@gmail.com','Dermatologist','Surgery: General Urology','Call office for more Information','MBBS, MD'),
							('elaine@gmail.com','Dermatologist','Surgery','Call office for more Information','MBBS, MD'),
							('park@gmail.com','Psychiatrist','Geriatric Psychiatry','Call office for more Information','MD'),
							('web@gmail.com','Psychiatrist','Pain Medicine','Call office for more Information','MD'),
							('sheridan@gmail.com','ENT','Specializes in Ear, Nose, and Throat','Call office for more Information','MD'),
							('heaberlin@gmail.com','ENT','Specializes in Ear, Nose, and Throat ','Call office for more Information','MD'),
							('nieto@gmail.com','Orthopedist','General','Call office for more Information','MD,IMG'),
							('warren@gmail.com','Orthopedist','Orthopaedic Sports Medicine','Call office for more Information','MD'),
							('wehner@gmail.com','cardiology','Cardiovascular Disease','Call office for more Information','MD'),
							('kumar@gmail.com','oncology','Internal Medicine','Call office for more Information','MD'),
							('caserta@gmail.com','OB-GYN (Obstetrician-Gynecologist)','Obstetrics and Gynecology','Call office for more Information','MD'),
							('shah@gmail.com','OB-GYN (Obstetrician-Gynecologist)','Obstetrics and Gynecology','Call office for more Information','MD,DO,F'),
							('craft@gmail.com','Dentist','General Dentistry','Call office for more Information','DMD'),
							('scott@gmail.com','Dentist','Oral and Maxillofacial Surgery','Call office for more Information','MD,DDS');




/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `user` varchar(20) default NULL,
  `fname` varchar(20) default NULL,
  `lname` varchar(20) default NULL,
  `gender` varchar(10) default NULL,
  `mobile` varchar(20) NOT NULL,
  `photo` varchar(20) default NULL,
  `address1` varchar(20) default NULL,
  `address2` varchar(20) default NULL,
  `city` varchar(20) default NULL,
  `state` varchar(20) default NULL,
  `zipcode` varchar(20) default NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`mobile`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`user`,`fname`,`lname`,`gender`,`mobile`,`photo`,`address1`,`address2`,`city`,`state`,`zipcode`,`email`,`password`) values 
							('admin','pradeep','uppalanchi','male',' 3045448925','Tulips.jpg','1617 6th Avenue','Apt 1','Huntington','WV','25703','admin','admin'),
							('docter','Jagan','Pagala','Male','3047108551','1.jpg','1540 4th Avenue ','Apt 16','Huntington','WV','25701','doctor','doctor'),
							('patient','Tharun','Manchika','male','3046348150','Hydrangeas.jpg','1540 4th ave','apt 16','Huntington','WV','25701','user','user'),
							('docter','James C','Jensen','male','3046911299','1.jpg','1600 Medica Center Dr ','Ste 2500','Huntington','WV','25701','jenson@gmail.com','123456'),
							('docter','ELAINE RAE','YOUNG ','female','3045256132','1.jpg','1411 ','6th Avenue','Huntington','WV','25701','elaine@gmail.com','123456'),
							('docter','KWANG-SOO','PARK  ','male','000000','1.jpg','1230 ','6th Avenue','Huntington','WV','25701','park@gmail.com','123456'),
							('docter','DELENO H','WEBB  ','male','000000','1.jpg','APPG INC AREA PAIN CLINIC ','10 6TH AVE W','Huntington','WV','25701','web@gmail.com','123456'),
							('docter','Mark','Sheridan','male','3045226388','1.jpg','3 Stonecrest Dr ','6th Avenue','Huntington','WV','25701','sheridan@gmail.com','123456'),
							('docter','Brian','Heaberlin','male','3045221055','1.jpg','Huntington Internal Medicine ','5170 US Route 60','Huntington','WV','25705','heaberlin@gmail.com','123456'),
							('docter','Ernesto',' Nieto','male','000000','1.jpg','1540 SPRING VALLEY DR','SURGICAL SVC 112','HUNTINGTON','WV','25704','nieto@gmail.com','123456'),
							('docter','MICHAEL ','WARREN GIBBS ','male','00000','1.jpg','100 MEADOW POINTE','STE 104','BARBOURSVILLE','WV','25504','warren@gmail.com','123456'),
							('docter','Paulette Suzanne ',' Wehner','female','000000','1.jpg','1249 15TH ST ',' STE 4000','HUNTINGTON','WV','2571','wehner@gmail.com','123456'),
							('docter','Arun','Kumar ','male','00000','1.jpg','Huntington','Huntington','Huntington','WV','25704','kumar@gmail.com','123456'),
							('docter','Larry Allen ',' Caserta','male','000000','1.jpg','104',' MEADOW POINTE','BARBOURSVILLE','WV','25504','caserta@gmail.com','123456'),
							('docter','Mrudula J ','Shah ','female','00000','1.jpg','PO BOX 2256','ASHLAND','ASHLAND','KY','41105','shah@gmail.com','123456'),
							('docter','GREGORY','CRAFT','male','000000','1.jpg','2000 CARTER AVE STE C ','CARTER AVE STE C','ASHLAND','KY','41101','craft@gmail.com','123456'),
							('docter','R SCOTT ','MURPHY','male','00000','1.jpg','2828 1ST AVE','STE 104','Huntington','WV','25702','scott@gmail.com','123456');

/*Table structure for table `subscribe` */

DROP TABLE IF EXISTS `subscribe`;

CREATE TABLE `subscribe` (
  `docter` varchar(50) default NULL,
  `user` varchar(50) default NULL,
  `status` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subscribe` */

/*insert  into `subscribe`(`docter`,`user`,`status`) values ('upradeepkumar47@gmail.com','user','yes');*/

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
