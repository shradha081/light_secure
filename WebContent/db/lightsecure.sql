# Host: localhost  (Version: 5.6.21-log)
# Date: 2019-05-28 11:09:49
# Generator: MySQL-Front 5.3  (Build 4.186)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "cloud"
#

DROP TABLE IF EXISTS `cloud`;
CREATE TABLE `cloud` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "cloud"
#

INSERT INTO `cloud` VALUES ('cloud','cloud');

#
# Structure for table "dataowner"
#

DROP TABLE IF EXISTS `dataowner`;
CREATE TABLE `dataowner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `omail` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `contactno` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

#
# Data for table "dataowner"
#

INSERT INTO `dataowner` VALUES (24,'owner19','123','shradhab142@gmail.com','male','2019-05-04','098765432','karnataka','india','generated'),(25,'owner20','123','cloudminds19@gmail.com','male','2019-05-04','09876543','karnataka','india','generated'),(26,'owner21','123','shradhuvlb@gmail.com','male','2019-05-11','0987654321','karnataka','india','generated'),(27,'shradha','123','cloudminds19@gmail.com','male','2019-05-09','908765432','karnataka','india','generated'),(28,'owner23','123','shradhab142@gmail.com','female','2019-05-04','8789876789','karnataka','india','generated'),(29,'OWNER 25','123','cloudminds19@gmail.com','male','2019-05-10','98765432','karnataka','india','generated'),(30,'OWNER 26','123','cloudminds9@gmail.com','male','2019-05-10','98765432','karnataka','india','waiting'),(31,'owner6','123','shradhab142@gmail.com','male','2019-05-03','0987655433','karnataka','india','generated');

#
# Structure for table "datauser"
#

DROP TABLE IF EXISTS `datauser`;
CREATE TABLE `datauser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `contactno` varchar(45) DEFAULT NULL,
  `fileaccessattribute` varchar(45) DEFAULT NULL,
  `fileaccess` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `secret_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

#
# Data for table "datauser"
#

INSERT INTO `datauser` VALUES (24,'user19','123','shradhab142@gmail.com','2019-05-10','male','karnataka','india','908765432','sports','enterprenur','generated','4d6t2725a8'),(25,'user20','123','Biyani.s.s81@gmail.com','2019-05-03','male','karnataka','india','0987654321','sports','enterprenur','generated','sdk40i6497'),(26,'user21','123','shradhab142@gmail.com','1997-01-02','female','karnataka','india','0987655433','sports','enterprenur','generated','n2cq0v006x'),(27,'user26','123','shradhab142@gmail.com','2019-05-04','male','karnataka','india','098765433','politics','sports','generated','jqbtu9y5kp');

#
# Structure for table "downloads"
#

DROP TABLE IF EXISTS `downloads`;
CREATE TABLE `downloads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# Data for table "downloads"
#

INSERT INTO `downloads` VALUES (1,'demo2.txt','user16','2019/05/16 14:35:13'),(2,'photo112.txt','ruser','2019/05/16 16:53:56'),(3,'elections.txt','ruser','2019/05/16 16:58:30'),(10,'elections.txt','user18','2019/05/17 11:55:31'),(11,'image.txt','user18','2019/05/17 12:04:01'),(12,'nature.txt','biyani','2019/05/20 10:11:06'),(13,'nature.txt','biyani','2019/05/20 10:15:00'),(19,'basket2 - Copy - Copy.txt','user20','2019/05/20 16:42:07'),(20,'text.txt','user26','2019/05/22 17:23:54'),(21,'bastketball5.txt','user26','2019/05/22 17:29:02');

#
# Structure for table "request"
#

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `omail` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `secret_key` varchar(45) DEFAULT NULL,
  `pkey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Data for table "request"
#

INSERT INTO `request` VALUES (8,24,'owner19','shradhab142@gmail.com','Granted','tnej3bfhot','lpk8nq5xzs27460vwici'),(9,25,'owner20','cloudminds19@gmail.com','Granted','944j83t5x1','1ue9l9kmz2n4noc020q2'),(10,26,'owner21','shradhuvlb@gmail.com','Granted','e5hlabo7s5','wc9w7y4pee5rud5328x3'),(11,27,'shradha','cloudminds19@gmail.com','Granted','2idlegux8w','cpkc3jtd095krdolyjr0'),(12,28,'owner23','shradhab142@gmail.com','Granted','q9850f4p46','r7y8a92ahecuq778p5e4'),(13,29,'OWNER 25','cloudminds19@gmail.com','Granted','540t9b0ld3','w7bnoz8qxat687sq5j23'),(14,29,'OWNER 26','cloudminds19@gmail.com','Granted','jfx3bi6qt5','zgg4b95a76u80k17896i'),(15,29,'OWNER 26','cloudminds19@gmail.com','Granted','p6cc7dxq3y','s8cz9e5n6ctg6x67dnoz'),(16,27,'shradha','cloudminds19@gmail.com','Granted','w6s1frhtv5','h2q856qjv3n2eyojd4gx');

#
# Structure for table "request1"
#

DROP TABLE IF EXISTS `request1`;
CREATE TABLE `request1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fileaccessattribute` varchar(45) DEFAULT NULL,
  `fileaccess` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `accessfile` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `secret_key` varchar(45) DEFAULT NULL,
  `pkey` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `downloadkey` varchar(45) DEFAULT NULL,
  `content` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

#
# Data for table "request1"
#

INSERT INTO `request1` VALUES (111,'sql.txt',76,76,'user19','shradhab142@gmail.com','sports','enterprenur','karnataka','india','sham','about bastketball','sports','2019.05.20 AD at 11:58:11 ','9wd8qiks3h','i48h0l21e1','sended','bl8hqy04pu',X'66452054326847307739453D'),(112,'GGGG.txt',79,79,'user19','shradhab142@gmail.com','sports','enterprenur','karnataka','india','owner19','GGGGGGE','sports','2019.05.20 AD at 12:40:39 ','84637676kc','5nmc6r535x','sended','bl8hqy04pu',X'6E6D36206B7A6736784D37494E50484867353036786F6B6C4B6C43583139516D'),(113,'basket2 - Copy - Copy.txt',80,80,'user20','Biyani.s.s81@gmail.com','sports','enterprenur','karnataka','india','owner20','rest','sports','2019.05.20 AD at 13:30:37 ','e8dasrfdeo','20f684re8n','sended','0o200c20w9',X'46652F4574554339725648516967665A433456797A513D3D'),(117,'New Text Document.txt',83,83,'user26','shradhab142@gmail.com','politics','sports','karnataka','india','OWNER 25','basketall','sports','2019.05.22 AD at 16:48:17 ','g6s1u5kjry','xjx37b0v1v','sended','zn50p9rfkg',X'774E3956382F426B7634526C41456E493346317654206A5875647A44584D4668'),(118,'New Text Document - Copy.txt',84,84,'user26','shradhab142@gmail.com','politics','sports','karnataka','india','OWNER 25','photos','photography','2019.05.22 AD at 17:15:07 ','k5e397s5k2','62knojmfgd','sended','92d7mwdd26',X'774E3956382F426B7634526C41456E493346317654206A5875647A44584D4668'),(119,'text.txt',85,85,'user26','shradhab142@gmail.com','politics','sports','karnataka','india','OWNER 25','photos','photography','2019.05.22 AD at 17:22:12 ','1og83c44ro','tq4w2p7p42','sended','pg57dose0l',X'74744E693266554E544D4D3D'),(120,'bastketball5.txt',86,86,'user26','shradhab142@gmail.com','politics','sports','karnataka','india','OWNER 26','baaslet ball','sports','2019.05.22 AD at 17:27:44 ','pc042qrk9c','wlb73774w9','sended','zku86s6n40',X'6E446C32786C33554F6C725049386E775961475A56703774706C556E59306565'),(121,'bastketball5.txt',86,86,'user21','shradhab142@gmail.com','sports','enterprenur','karnataka','india','OWNER 26','baaslet ball','sports','2019.05.24 AD at 14:59:34 ','pc042qrk9c','wlb73774w9','waiting','nyxb8qed2c',X'6E446C32786C33554F6C725049386E775961475A56703774706C556E59306565');

#
# Structure for table "requestuser"
#

DROP TABLE IF EXISTS `requestuser`;
CREATE TABLE `requestuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fileaccessattribute` varchar(45) DEFAULT NULL,
  `fileaccess` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `secret_key` varchar(45) DEFAULT NULL,
  `pkey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

#
# Data for table "requestuser"
#

INSERT INTO `requestuser` VALUES (61,24,'user19','shradhab142@gmail.com','sports','enterprenur','karnataka','india','Granted','xcd3l0rg7y','oh0oke1t1a0h75tztpde'),(62,25,'user20','Biyani.s.s81@gmail.com','sports','enterprenur','karnataka','india','Granted','rfbs5sw71j','do9x4r129jip8934w39d'),(63,26,'user21','shradhab142@gmail.com','sports','enterprenur','karnataka','india','Granted','6x7m071agm','xjt5o0aql2ds55q6j82x'),(64,26,'user21','shradhab142@gmail.com','sports','enterprenur','karnataka','india','Granted','727871671o','15xoz80ro8x0n3ldft5u'),(65,26,'user21','shradhab142@gmail.com','sports','enterprenur','karnataka','india','Granted','1527z8azoi','3ifl8g5r28g9wd23u976'),(66,26,'user21','shradhab142@gmail.com','sports','enterprenur','karnataka','india','Granted','145smu20ne','2at4590e6cdbww3lx9qw'),(67,27,'user26','shradhab142@gmail.com','politics','sports','karnataka','india','Granted','7bx60p2dlp','wtj6frrr5ctj2ia1nc6d'),(68,27,'user26','shradhab142@gmail.com','politics','sports','karnataka','india','Granted','540n7v3224','po34n1jkv8vh9rs93h04'),(69,26,'user21','shradhab142@gmail.com','sports','enterprenur','karnataka','india','Granted','v7bn554wrv','1w27m71uz05c6765nf81');

#
# Structure for table "ta"
#

DROP TABLE IF EXISTS `ta`;
CREATE TABLE `ta` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "ta"
#

INSERT INTO `ta` VALUES ('ta','ta');

#
# Structure for table "upload"
#

DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `pkey` varchar(45) DEFAULT NULL,
  `accessfile` varchar(45) DEFAULT NULL,
  `content` blob,
  `time` varchar(45) DEFAULT NULL,
  `secret_key` varchar(45) DEFAULT NULL,
  `trapdoorkey` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `edesciption` varchar(45) DEFAULT NULL,
  `eaccessfile` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `omail` varchar(45) DEFAULT NULL,
  `downloadkey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

#
# Data for table "upload"
#

INSERT INTO `upload` VALUES (79,'GGGG.txt','GGGGGGE','5nmc6r535x','sports',X'6E6D362B6B7A6736784D37494E50484867353036786F6B6C4B6C43583139516D','2019.05.20 AD at 12:39:34 ','84637676kc','qejF1KOXvPPM6zwBsROZyQ==','No','R66oXthpGww=','w5HunFrqYQA=','owner19','shradhab142@gmail.com','39s4toe6x9'),(80,'basket2 - Copy - Copy.txt','rest','20f684re8n','sports',X'46652F4574554339725648516967665A433456797A513D3D','2019.05.20 AD at 13:28:06 ','e8dasrfdeo','VMC9pPsisYyqAdF7fDGumg==','No','Y+h9eC5aRqA=','w5HunFrqYQA=','owner20','cloudminds19@gmail.com','5zgk0c52cf'),(81,'basket2 - Copy - Copy - Copy.txt','basketall1111','wbt66d4v19','sports',X'46652F4574554339725648516967665A433456797A513D3D','2019.05.20 AD at 14:16:59 ','38o3wqlg6i','9rXqj5M5UCke2TZHLneGEw==','No','xmJcxF23vvDbwdMDbgWmmA==','w5HunFrqYQA=','owner21','shradhuvlb@gmail.com','40e53r035t'),(82,'basketball - Copy.txt','about throwball','64n706o041','sports',X'46652F4574554339725648516967665A433456797A513D3D','2019.05.20 AD at 17:05:04 ','efhl911fzf','tU1XKGdWAR9/EyXCHDyLyw==','No','fiSLbKBEaT9NpM1jSKPIzw==','w5HunFrqYQA=','owner23','shradhab142@gmail.com','o2291huaa4'),(83,'New Text Document.txt','basketall','xjx37b0v1v','sports',X'774E3956382F426B7634526C41456E4933463176542B6A5875647A44584D4668','2019.05.22 AD at 16:21:02 ','g6s1u5kjry','ax1B1gAX78Gs7Vj0VRmnzg==','No','xmJcxF23vvCmUtsemYPjXg==','w5HunFrqYQA=','OWNER 25','cloudminds19@gmail.com','zn50p9rfkg'),(84,'New Text Document - Copy.txt','photos','62knojmfgd','photography',X'774E3956382F426B7634526C41456E4933463176542B6A5875647A44584D4668','2019.05.22 AD at 17:14:04 ','k5e397s5k2','F9m1fgZuUv9zcz9pauakng==','No','My+sSCVS0g8=','X2OOVROqHiVYMyrIaYmRiA==','OWNER 25','cloudminds19@gmail.com','92d7mwdd26'),(85,'text.txt','photos','tq4w2p7p42','photography',X'74744E693266554E544D4D3D','2019.05.22 AD at 17:21:12 ','1og83c44ro','oLBsCksaXD3miAtcKs/s5Q==','No','My+sSCVS0g8=','X2OOVROqHiVYMyrIaYmRiA==','OWNER 25','cloudminds19@gmail.com','pg57dose0l'),(86,'bastketball5.txt','baaslet ball','wlb73774w9','sports',X'6E446C32786C33554F6C725049386E775961475A56703774706C556E59306565','2019.05.22 AD at 17:26:47 ','pc042qrk9c','f5Z5JD7jMrfJ71pONYhEjw==','No','ATW7YUtwwFliwae//KUSZg==','w5HunFrqYQA=','OWNER 26','cloudminds19@gmail.com','nyxb8qed2c');
