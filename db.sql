# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29)
# Database: scirev
# Generation Time: 2014-08-31 12:09:47 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table executive
# ------------------------------------------------------------

DROP TABLE IF EXISTS `executive`;

CREATE TABLE `executive` (
  `person_id` int(11) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `executive` WRITE;
/*!40000 ALTER TABLE `executive` DISABLE KEYS */;

INSERT INTO `executive` (`person_id`, `position`)
VALUES
	(14,'Publicity Officer'),
	(1,'Fundraising Officer'),
	(15,'Producer'),
	(16,'Sponsorship Officer'),
	(19,'Fun Officer'),
	(20,'Secretary'),
	(21,'Tresurer'),
	(18,'Tresurer'),
	(17,'Assistant Producer');

/*!40000 ALTER TABLE `executive` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table person
# ------------------------------------------------------------

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
  `production` tinyint(1) DEFAULT NULL,
  `executive` tinyint(1) DEFAULT NULL,
  `wellbeing` tinyint(1) DEFAULT NULL,
  `seo_url` varchar(255) NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;

INSERT INTO `person` (`person_id`, `first_name`, `last_name`, `bio`, `image`, `dancing`, `acting`, `singing`, `band`, `production`, `executive`, `wellbeing`, `seo_url`)
VALUES
	(1,'Aaron','Cornelius','Director of Risotto.',NULL,0,0,1,0,1,1,0,'aaron-cornelius'),
	(2,'Bruno','Dubosarsky','Directed, filmed and starred in over 200 porn films this month, shot exclusively inside his pants.',NULL,0,0,0,0,1,0,0,'bruno-dubosarsky'),
	(3,'Emilia','Higgs','Killed so many people for absolutely no reason...and spread rumours about her own butt.',NULL,0,1,1,0,1,0,0,'emilia-higgs'),
	(4,'Felicia','Addison','Made her money in oil reserves before coming to Australia and following her passion in puppetry.',NULL,1,0,0,0,1,0,0,'felicia-addison'),
	(5,'Isaac','Carroll','Not the finest dancer in the land, but the most enthusiastic! da da daaa dat dat dah da da. Ser Horace the dog and Ser Doris the hamster',NULL,1,0,0,0,1,0,0,'isaac-carroll'),
	(6,'James','Cooper-Stanbury','A retired philanthropist who exercises his right to boogey whenever he damn well pleases!',NULL,0,0,0,1,1,0,0,'james-cooper-stanbury'),
	(7,'Rebecca','Wong','Her name is written in blood across South America',NULL,0,0,1,0,1,0,0,'rebecca-wong'),
	(8,'Tim','Andersen','Self-proclaimed Rapunzel enthusiast and wannabe.',NULL,0,1,0,0,1,0,0,'tim-andersen'),
	(9,'Chad','O\'Neill','Chad \"I MADE A BOMB\" O\'Neill',NULL,0,0,0,0,1,0,0,'chad-o-neill'),
	(10,'Winsome','Hall','Self professedly got Inception. Her parents have never been prouder',NULL,0,0,0,0,1,0,0,'winsome-hall'),
	(11,'Maddie','Boyle','Life is a storm, my young friend. You will bask in the sunlight one moment, be shattered on the rocks the next. What makes you a man is what you do when that storm comes. You must look into that storm and scream, \'do your worst, for I will do mine!\' Then the fates will know you as a man! - Edmond Dantes',NULL,0,0,0,0,1,0,0,'maddie-boyle'),
	(12,'James Patrick','Wilson','Turn around, bright eyes. Every now and then I fall apart. And I need you now tonight. And I need you more than ever. And if you only hold me tight. We\'ll be holding on forever!',NULL,0,1,0,0,1,0,0,'james-wilson'),
	(13,'Robert','Boddington','Once shot an elephant in my pajamas. How he got into my pajamas I shall never know. The fact remains that he was dead in my pants. So very dead.',NULL,0,1,0,0,1,0,0,'robert-boddington'),
	(14,'Davis','Murphy','Being the first member of science revue to give birth on stage, Davis is truly a trend setter in the Sydney comedy scene!',NULL,0,1,0,0,0,1,0,'davis-murphy'),
	(15,'Dom','Campbell','CRUSTY OLD DOM!\' \'Hey! You damn kids get off my lawn! I\'ll set the sprinkler on ya! I\'ll do it!\'',NULL,0,0,0,0,1,1,0,'dom-campbell'),
	(16,'Emma','Balfour','Is actually a full-grown Komodo dragon wearing a people disguise. Currently trying to learn polite table etiquette.',NULL,0,1,0,0,0,1,0,'emma-balfour'),
	(17,'Lizzy','Blower','Thinks all the members of Science Revue are literally muffins. Came here for the noms.',NULL,0,0,0,0,1,1,0,'lizzy-blower'),
	(18,'Monica','Chedid','Breathes out glitter and rainbows. Also fire, dangerous, flamable fire.',NULL,0,0,0,0,0,1,1,'monica-chedid'),
	(19,'Natasha','Madan','letashlet',NULL,0,1,0,0,0,1,0,'natasha-madan'),
	(20,'Tali','Meyerowitz-Katz','Official Badass',NULL,0,1,0,0,0,1,0,'tali-meyerowitz-katz'),
	(21,'Vahishta','Bhasin','',NULL,1,0,0,0,0,1,0,'vahishta-bhasin'),
	(22,'Subha','Nasir Ahmad','The closest anyone in Science Revue has ever gotten to being Beyonce.',NULL,0,0,0,0,0,0,1,'subha-nasir ahmad'),
	(23,'Catriona','McMillan','Found a leprechaun in a potato last night.',NULL,0,0,0,0,0,0,1,'catriona-mcmillan'),
	(24,'Vinita','Raj','You\'ve always had the suspicion that she\'s pure evil, but when she smiles it\'s like she has sunshine coming from her arse',NULL,0,0,0,0,0,0,1,'vinita-raj'),
	(25,'Liam','Beiglari','Once challenged God to a fiddle duel, and that my children, is how the Moon was made.',NULL,0,0,0,0,0,0,1,'liam-beiglari'),
	(26,'Josh','Pearse','It\'s said that if you listen closely, on certain nights, the wind will whisper; I am the real Josh Pearse. Bart simpson with a touch sugar and spice',NULL,0,0,0,0,0,0,1,'josh-pearse'),
	(27,'Alex','Tighe','Known law-revue sympathiser. Token hottie.',NULL,0,0,1,0,0,0,0,'alex-tighe'),
	(28,'Alisdair','Bashford','Bashy is well known for his tiny t-rex arms.',NULL,0,0,1,0,0,0,0,'alisdair-bashford'),
	(29,'Alyce','Yu','Is actually a lizard queen made of 3 tinier midgets',NULL,0,0,1,0,0,0,0,'alyce-yu'),
	(30,'Anne','Cope','AND I\'M MARGAERY TYRELL',NULL,0,0,1,0,0,0,0,'anne-cope'),
	(31,'Arleena','Frame','I hope to use my experience with science revue to further my political campaign.',NULL,0,0,1,0,0,0,0,'arleena-frame'),
	(32,'Beth','Milross','Beth Milross, tastes like moss! Beth Milross, needs to floss! Beth Milross, she\'ll probs be cross!',NULL,0,1,1,0,0,0,0,'beth-milross'),
	(33,'Chloe','Genion','Founder of Babe Revue. In an unneccesary display of willingness broke her arm for the show. Literally, she broke her arm for the show. So you know it\'s gotta be good.',NULL,1,0,1,0,0,0,0,'chloe-genion'),
	(34,'Haji','Myrteza','Hey guys! I\'ve got a great joke! There was once a fairy and-never mind.',NULL,0,1,1,0,0,0,0,'haji-myrteza'),
	(35,'Jess','Falon','Falcon PUNCH!',NULL,0,0,1,0,0,0,0,'jess-falon'),
	(36,'Katerina','Halkeas','When Kat laughs then the wind, and the fire and the faces painted in the trees all laugh along, and can never stop.',NULL,0,1,1,0,0,0,0,'katerina-halkeas'),
	(37,'Maddie','Malouf','Used her brother\'s bedroom as a storage space for her onesie collection when he moved out',NULL,0,1,1,0,0,0,0,'maddie-malouf'),
	(38,'Reeja','Nasir','I\'m Batman. Favorite song is HyunA\'s \"Red\"',NULL,0,0,1,0,0,0,0,'reeja-nasir'),
	(39,'Will','Allington','Will \"Wally\" Allington came into being when an immense space whale drifted through a cosmic spore cloud. The gestation period took eons and when he finally drifted down onto Earth he chose to revue.',NULL,1,1,1,0,0,0,0,'will-allington'),
	(40,'William','Nelson','Once sung colours to a blind man',NULL,0,0,1,0,0,0,0,'william-nelson'),
	(41,'Curtis','Chan','Cuddlier than Winnie the Pooh',NULL,0,0,1,0,0,0,0,'curtis-chan'),
	(42,'James','Burchett','Enjoys cuddles, long walks on the beach and disgusting, clichéd hyperbole.',NULL,0,0,1,0,0,0,0,'james-burchett'),
	(43,'Julia','Dabrowski','I believe her name was Lily Precious Threepgood? She was a stablehand on my father\'s estate, but we never had much to do with one another.\nI don\'t think I ever heard her raise her voice, and she seemed to be more comfortable around the horses, than the other people.\nShe just took off one Christmas, we never heard from her again. She didn\'t pack away any of things, her room stayed the same as if she had just gone out for a nightly stroll.\nI have no idea where she has ended up in life, but I wish her all the very best and that she found herself a new home.',NULL,0,0,1,0,0,0,0,'julia-dabrowski'),
	(44,'Katina','Selvaraj','Remember, always give your best. Never get discouraged. Never be petty. Always remember, others may hate you. But those who hate you don\'t win unless you hate them. And then you destroy yourself. -Richard M. Nixon paraphrasing Katina Selvaraj',NULL,0,0,1,0,0,0,0,'katina-selvaraj'),
	(45,'Matt','Scollay','I\'m really only here for the tax benefits',NULL,0,0,1,0,0,0,0,'matt-scollay'),
	(46,'Shauntae','Farrugia','Is just darn cute as a button',NULL,0,0,1,0,0,0,0,'shauntae-farrugia'),
	(47,'Vic','Ge','\"After spending a night in that haunted house, he was never really the same. But we love him because he\'s family.\" -Mama Ge',NULL,0,0,1,0,0,0,0,'vic-ge'),
	(48,'Alexandra','Mildenhall','Not just a witty face.',NULL,0,1,0,0,0,0,0,'alexandra-mildenhall'),
	(49,'Declan','Maher','Declan was created in a workshop by people in labcoats. But everyday he learns to feel a little bit more.',NULL,0,1,0,0,0,0,0,'declan-maher'),
	(50,'Harriet','Hope Streeter','The sweetest angel in all the land',NULL,0,1,0,0,0,0,0,'harriet-hope-streeter'),
	(51,'Jen','Bartlett','Had a crippling heroin addiction for 2013, but is now on the straight and narrow.',NULL,0,1,0,0,0,0,0,'jen-bartlett'),
	(52,'David','Walsh','My time spent here at Heartbreak high was unforgettable and I\'ll cherish forever the friends I made here. Go Wildcats!',NULL,1,1,0,0,0,0,0,'david-walsh'),
	(53,'Julian','Bull','He can fly if he wants, he simply doesnt feel like it right now.',NULL,0,1,0,0,0,0,0,'julian-bull'),
	(54,'Montana','Rosekelly','Runner up of Miss Australia 2009. But we\'ll see about that.',NULL,1,1,0,0,0,0,0,'montana-rosekelly'),
	(55,'Rania','Masri','Everynight dreams of a rap battle with Lonely Island.',NULL,0,1,0,0,0,0,0,'rania-masri'),
	(56,'Rhiannon','Bateman','Sass incarnate. She currently holds the world record for an obscure Swedish sport I don\'t know how to pronounce',NULL,0,1,0,0,0,0,0,'rhiannon-bateman'),
	(57,'Sean','Baker','He doesn\'t even go here!',NULL,0,1,0,0,0,0,0,'sean-baker'),
	(58,'Sebastien','Scott','Secretly 110 years old',NULL,0,1,0,0,0,0,0,'sebastien-scott'),
	(59,'Sophie','Armbrister','Lightning once struck a Chritmas beetle, and now it thinks it\'s Sophie Armbrister',NULL,0,1,0,0,0,0,0,'sophie-armbrister'),
	(60,'John','Tennyson','John Tennyson is well known for his band - The tonne O\' sons',NULL,0,1,0,0,0,0,0,'john-tennyson'),
	(61,'Tim','McNaught','Rumour has it, Tim was born into a family of rhinos. He wasn\'t.',NULL,0,1,0,0,0,0,0,'tim-mcnaught'),
	(62,'Milena','Bojovic','The Popcorn Queen of Zealandia',NULL,0,1,0,0,0,0,0,'milena-bojovic'),
	(63,'Anna','Gosteva','Can do that thing with her leg over her head. OMG.',NULL,1,0,0,0,0,0,0,'anna-gosteva'),
	(64,'Bella','Jones','Bella Jones was born in 1993 and says that her main inspiration in life is the beloved Harry Potter character \'Nymphadora Tonks\'.',NULL,1,0,0,0,0,0,0,'bella-jones'),
	(65,'Felicia','Addison','Life ambition to know every K-pop dance/move there is to know.',NULL,1,0,0,0,0,0,0,'felicia-addison'),
	(66,'Helen','Pope','Helen was born in International Waters and is part mermaid, but not the good part.',NULL,1,0,0,0,0,0,0,'helen-pope'),
	(67,'Jennifer','van Bruinessen','Actually lives in Cinderella\'s castle and is secretly an undead Walt Disney.',NULL,1,0,0,0,0,0,0,'jennifer-van-bruinessen'),
	(68,'Marat','Nuriev','Played Augustus Water\'s in John Green\'s acclaimed novel \"The Fault In Our Stars\" movie adaption. Made out with Shailene Woodley.',NULL,1,0,0,0,0,0,0,'marat-nuriev'),
	(69,'Sinead','Fogarty','Winner of 2014\'s inaugural \'cutest cast member\' award. She deserved it.',NULL,1,0,0,0,0,0,0,'sinead-fogarty'),
	(70,'Tegan','Heynes','Retired from criminal investigation after misplacing her pants too many times. Now studies drapes and collects squirrels.',NULL,1,0,0,0,0,0,0,'tegan-heynes'),
	(71,'Isabella','Moore','Current titleholder of \'The most quidditches quidditched in one quidditch\'',NULL,1,0,0,0,0,0,0,'isabella-moore'),
	(72,'LX','Li','After starring as a back dancer in Beyonce\'s Single Ladies, Li now turns his attention towards less tradional forms of erotic expression',NULL,1,0,0,0,0,0,0,'lx-li'),
	(73,'Natasha','Naughton','Once ate dinner at a Chinese restaurant. Twice.',NULL,1,0,0,0,0,0,0,'natasha-naughton'),
	(74,'Sheera','Mae Tadena','She\'s crazy! Like Italian daytime television crazy.',NULL,1,0,0,0,0,0,0,'sheera-mae-tadena'),
	(75,'Edward','Tan','Sometimes even music cannot substitute for tears',NULL,0,0,0,1,0,0,0,'edward-tan'),
	(76,'Wenray','Wang','Not the brightest star in the sky, but he shines for all things',NULL,0,0,0,1,0,0,0,'wenray-wang'),
	(77,'Rieko','Makita','Silence is dry; sound is wet. Volume is the mass of sound. In silence you can hear people think, but only when their bodies stop making noise. But who cares what people think? The more noise their bodies make, the more interesting they are anyway. Listen to your body. Talk to plants. Ignore people.',NULL,0,0,0,1,0,0,0,'rieko-makita'),
	(78,'Jamie','Cochrane','Jamie, lord of his lunchbox.',NULL,0,0,0,1,0,0,0,'jamie-cochrane'),
	(79,'Sam','Vallentine','With the name of an 18th century French aristocratic lover, and the body of an 18th century French aristocratic lover.',NULL,0,0,0,1,0,0,0,'sam-vallentine'),
	(80,'Lachlan','Deacon','His all-time favourite TV show is the SBS classic Turkish News',NULL,0,0,0,1,0,0,0,'lachlan-deacon'),
	(81,'Malcom','Ramsay','Some say he\'s a mute, others say he doesn\'t like talking, all we know is he\'s Malcolm',NULL,0,0,0,1,0,0,0,'malcom-ramsay'),
	(82,'Jack','Frerer','Like the famous movie star and musician, Jack Black, Jack\'s name is also Jack.',NULL,0,0,0,1,0,0,0,'jack-frerer');

/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table production
# ------------------------------------------------------------

DROP TABLE IF EXISTS `production`;

CREATE TABLE `production` (
  `person_id` int(11) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;

INSERT INTO `production` (`person_id`, `position`)
VALUES
	(6,'Band Director'),
	(13,'Head Director'),
	(7,'Vocal Director'),
	(9,'Set/Props Designer'),
	(15,'Producer'),
	(12,'Head Director'),
	(17,'Assistant Producer'),
	(3,'Video Director'),
	(8,'Video Director'),
	(10,'Costume Designer'),
	(5,'Dance Director'),
	(4,'Dance Director'),
	(1,'Assistant Vocal Director'),
	(2,'Assistant Video Director'),
	(11,'Costume Designer');

/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
