DROP TABLE IF EXISTS `executive`;

CREATE TABLE `executive` (
  `person_id` int(11) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `executive` (`person_id`, `position`)
VALUES
	(8,'Officer of Fun');

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `bio` text,
  `image` varchar(50) DEFAULT NULL,
  `dancing` tinyint(1) DEFAULT NULL,
  `acting` tinyint(1) DEFAULT NULL,
  `singing` tinyint(1) DEFAULT NULL,
  `band` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `person` (`person_id`, `first_name`, `last_name`, `bio`, `image`, `dancing`, `acting`, `singing`, `band`)
VALUES
	(1,'James','Cooper-Stanbury','He slappa da bass!','DSC_0218.jpg',0,0,0,1),
	(2,'Sebastien','Scott','Roar!!','DSC_0114.jpg',0,1,0,0),
	(3,'James','Wilson','Roar!!','DSC_0350.jpg',0,0,0,0),
	(4,'Montana','Rosekelly','Blah blah blah im a cool chick blah blah','DSC_0343.jpg',1,1,0,0),
	(5,'Will','Wallington','Blah blah blah im a cool chick blah blah','DSC_1023.jpg',1,1,1,0),
	(6,'Chloe','Genion','Blah blah blah im a cool chick blah blah','DSC_1070.jpg',1,0,1,0),
	(7,'Wenray','Wang','Blah blah blah im a cool chick blah blah','DSC_1368.jpg',0,0,0,1),
	(8,'Natasha','Madan','Blah blah blah im a cool chick blah blah','DSC_0997.jpg',0,1,0,0);


DROP TABLE IF EXISTS `production`;

CREATE TABLE `production` (
  `person_id` int(11) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `production` (`person_id`, `position`)
VALUES
	(1,'Band Director'),
	(3,'Head Director');
