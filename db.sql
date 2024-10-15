/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chexianlipeixinxiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chexianlipeixinxiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chexianlipeixinxiguanlixitong`;

/*Table structure for table `baoxian` */

DROP TABLE IF EXISTS `baoxian`;

CREATE TABLE `baoxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `baoxian_name` varchar(200) DEFAULT NULL COMMENT '保险名称  Search111 ',
  `baoxian_uuid_number` varchar(200) DEFAULT NULL COMMENT '保险编号',
  `baoxian_photo` varchar(200) DEFAULT NULL COMMENT '保险照片',
  `baoxian_types` int(11) DEFAULT NULL COMMENT '保险类型 Search111',
  `baoxian_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `baoxian_content` longtext COMMENT '保险介绍 ',
  `baoxian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='保险';

/*Data for the table `baoxian` */

insert  into `baoxian`(`id`,`baoxian_name`,`baoxian_uuid_number`,`baoxian_photo`,`baoxian_types`,`baoxian_new_money`,`baoxian_content`,`baoxian_delete`,`insert_time`,`create_time`) values (1,'保险名称1','1681366573335','upload/baoxian1.jpg',4,'184.80','保险介绍1',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(2,'保险名称2','1681366573336','upload/baoxian2.jpg',2,'43.20','保险介绍2',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(3,'保险名称3','1681366573297','upload/baoxian3.jpg',1,'273.30','保险介绍3',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(4,'保险名称4','1681366573336','upload/baoxian4.jpg',2,'58.18','保险介绍4',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(5,'保险名称5','1681366573307','upload/baoxian5.jpg',3,'189.06','保险介绍5',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(6,'保险名称6','1681366573261','upload/baoxian6.jpg',2,'309.27','保险介绍6',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(7,'保险名称7','1681366573271','upload/baoxian7.jpg',1,'445.65','保险介绍7',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(8,'保险名称8','1681366573345','upload/baoxian8.jpg',2,'64.47','保险介绍8',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(9,'保险名称9','1681366573283','upload/baoxian9.jpg',3,'334.60','保险介绍9',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(10,'保险名称10','1681366573333','upload/baoxian10.jpg',4,'40.39','保险介绍10',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(11,'保险名称11','1681366573330','upload/baoxian11.jpg',4,'376.70','保险介绍11',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(12,'保险名称12','1681366573262','upload/baoxian12.jpg',1,'214.64','保险介绍12',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(13,'保险名称13','1681366573339','upload/baoxian13.jpg',4,'328.31','保险介绍13',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(14,'保险名称14','1681366573298','upload/baoxian14.jpg',1,'73.88','保险介绍14',1,'2023-04-13 14:16:13','2023-04-13 14:16:13');

/*Table structure for table `baoxian_order` */

DROP TABLE IF EXISTS `baoxian_order`;

CREATE TABLE `baoxian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `baoxian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `baoxian_id` int(11) DEFAULT NULL COMMENT '保险',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `baoxian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `baoxian_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保险订单';

/*Data for the table `baoxian_order` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `diaocha_yuyue` */

DROP TABLE IF EXISTS `diaocha_yuyue`;

CREATE TABLE `diaocha_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `diaocha_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '事故调查员',
  `diaocha_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `diaocha_yuyue_address` varchar(200) DEFAULT NULL COMMENT '地点',
  `diaocha_yuyue_cehngdu` varchar(200) DEFAULT NULL COMMENT '严重程度',
  `diaocha_yuyue_text` longtext COMMENT '理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '调查申请时间',
  `diaocha_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `diaocha_yuyue_yesno_text` longtext COMMENT '审核回复',
  `diaocha_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='调查申请';

/*Data for the table `diaocha_yuyue` */

insert  into `diaocha_yuyue`(`id`,`diaocha_yuyue_uuid_number`,`yonghu_id`,`yuangong_id`,`diaocha_yuyue_time`,`diaocha_yuyue_address`,`diaocha_yuyue_cehngdu`,`diaocha_yuyue_text`,`insert_time`,`diaocha_yuyue_yesno_types`,`diaocha_yuyue_yesno_text`,`diaocha_yuyue_shenhe_time`,`create_time`) values (1,'1681366573263',3,1,'2023-04-13 14:16:13','地点1','严重程度1','理由1','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(2,'1681366573297',1,1,'2023-04-13 14:16:13','地点2','严重程度2','理由2','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(3,'1681366573357',2,2,'2023-04-13 14:16:13','地点3','严重程度3','理由3','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(4,'1681366573283',3,3,'2023-04-13 14:16:13','地点4','严重程度4','理由4','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(5,'1681366573338',2,1,'2023-04-13 14:16:13','地点5','严重程度5','理由5','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(6,'1681366573346',3,3,'2023-04-13 14:16:13','地点6','严重程度6','理由6','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(7,'1681366573298',2,1,'2023-04-13 14:16:13','地点7','严重程度7','理由7','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(8,'1681366573290',3,1,'2023-04-13 14:16:13','地点8','严重程度8','理由8','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(9,'1681366573292',3,2,'2023-04-13 14:16:13','地点9','严重程度9','理由9','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(10,'1681366573358',2,2,'2023-04-13 14:16:13','地点10','严重程度10','理由10','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(11,'1681366573312',3,2,'2023-04-13 14:16:13','地点11','严重程度11','理由11','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(12,'1681366573351',3,1,'2023-04-13 14:16:13','地点12','严重程度12','理由12','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(13,'1681366573274',1,3,'2023-04-13 14:16:13','地点13','严重程度13','理由13','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(14,'1681366573357',2,3,'2023-04-13 14:16:13','地点14','严重程度14','理由14','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(15,'1681367671231',1,1,'2023-04-14 00:00:00','哪里','驾驶室都怼进去了','我呀申请','2023-04-13 14:35:00',2,'好的','2023-04-13 14:35:18','2023-04-13 14:35:00');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-13 14:15:23'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-13 14:15:23'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-13 14:15:24'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-13 14:15:24'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-13 14:15:24'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-13 14:15:24'),(7,'baoxian_types','保险类型',1,'保险类型1',NULL,NULL,'2023-04-13 14:15:24'),(8,'baoxian_types','保险类型',2,'保险类型2',NULL,NULL,'2023-04-13 14:15:24'),(9,'baoxian_types','保险类型',3,'保险类型3',NULL,NULL,'2023-04-13 14:15:24'),(10,'baoxian_types','保险类型',4,'保险类型4',NULL,NULL,'2023-04-13 14:15:24'),(11,'baoxian_order_types','订单类型',101,'已购买',NULL,NULL,'2023-04-13 14:15:24'),(12,'shigu_types','事故调查类型',1,'事故调查类型1',NULL,NULL,'2023-04-13 14:15:24'),(13,'shigu_types','事故调查类型',2,'事故调查类型2',NULL,NULL,'2023-04-13 14:15:24'),(14,'shigu_types','事故调查类型',3,'事故调查类型3',NULL,NULL,'2023-04-13 14:15:24'),(15,'shigu_types','事故调查类型',4,'事故调查类型4',NULL,NULL,'2023-04-13 14:15:24'),(16,'xianchang_types','现场勘查类型',1,'现场勘查类型1',NULL,NULL,'2023-04-13 14:15:24'),(17,'xianchang_types','现场勘查类型',2,'现场勘查类型2',NULL,NULL,'2023-04-13 14:15:24'),(18,'xianchang_types','现场勘查类型',3,'现场勘查类型3',NULL,NULL,'2023-04-13 14:15:24'),(19,'xianchang_types','现场勘查类型',4,'现场勘查类型4',NULL,NULL,'2023-04-13 14:15:24'),(20,'shigu_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-13 14:15:24'),(21,'shigu_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-13 14:15:24'),(22,'shigu_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-13 14:15:24'),(23,'diaocha_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-13 14:15:24'),(24,'diaocha_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-13 14:15:24'),(25,'diaocha_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-13 14:15:24');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',167,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(2,'帖子标题2',3,NULL,'发布内容2',347,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(3,'帖子标题3',2,NULL,'发布内容3',1,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(4,'帖子标题4',2,NULL,'发布内容4',306,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(5,'帖子标题5',2,NULL,'发布内容5',291,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(6,'帖子标题6',1,NULL,'发布内容6',365,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(7,'帖子标题7',1,NULL,'发布内容7',485,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(8,'帖子标题8',1,NULL,'发布内容8',445,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(9,'帖子标题9',3,NULL,'发布内容9',38,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(10,'帖子标题10',2,NULL,'发布内容10',216,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(11,'帖子标题11',1,NULL,'发布内容11',249,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(12,'帖子标题12',3,NULL,'发布内容12',26,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(13,'帖子标题13',2,NULL,'发布内容13',391,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13'),(14,'帖子标题14',1,NULL,'发布内容14',375,1,'2023-04-13 14:16:13','2023-04-13 14:16:13','2023-04-13 14:16:13');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-13 14:16:13','公告详情1','2023-04-13 14:16:13'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-13 14:16:13','公告详情2','2023-04-13 14:16:13'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-13 14:16:13','公告详情3','2023-04-13 14:16:13'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-13 14:16:13','公告详情4','2023-04-13 14:16:13'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-13 14:16:13','公告详情5','2023-04-13 14:16:13'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-13 14:16:13','公告详情6','2023-04-13 14:16:13'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-13 14:16:13','公告详情7','2023-04-13 14:16:13'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-13 14:16:13','公告详情8','2023-04-13 14:16:13'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-13 14:16:13','公告详情9','2023-04-13 14:16:13'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-13 14:16:13','公告详情10','2023-04-13 14:16:13'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-13 14:16:13','公告详情11','2023-04-13 14:16:13'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-13 14:16:13','公告详情12','2023-04-13 14:16:13'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-13 14:16:13','公告详情13','2023-04-13 14:16:13'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-13 14:16:13','公告详情14','2023-04-13 14:16:13');

/*Table structure for table `shigu` */

DROP TABLE IF EXISTS `shigu`;

CREATE TABLE `shigu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '事故调查员',
  `shigu_name` varchar(200) DEFAULT NULL COMMENT '事故调查名称  Search111 ',
  `shigu_uuid_number` varchar(200) DEFAULT NULL COMMENT '事故调查编号',
  `shigu_photo` varchar(200) DEFAULT NULL COMMENT '事故调查照片',
  `shigu_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `shigu_types` int(11) DEFAULT NULL COMMENT '事故调查类型 Search111',
  `shigu_content` longtext COMMENT '事故调查介绍 ',
  `shigu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='事故调查';

/*Data for the table `shigu` */

insert  into `shigu`(`id`,`yonghu_id`,`yuangong_id`,`shigu_name`,`shigu_uuid_number`,`shigu_photo`,`shigu_file`,`shigu_types`,`shigu_content`,`shigu_delete`,`insert_time`,`create_time`) values (1,1,2,'事故调查名称1','1681366573361','upload/shigu1.jpg','upload/file.rar',2,'事故调查介绍1',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(2,3,1,'事故调查名称2','1681366573306','upload/shigu2.jpg','upload/file.rar',1,'事故调查介绍2',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(3,1,3,'事故调查名称3','1681366573272','upload/shigu3.jpg','upload/file.rar',1,'事故调查介绍3',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(4,1,1,'事故调查名称4','1681366573279','upload/shigu4.jpg','upload/file.rar',2,'事故调查介绍4',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(5,2,2,'事故调查名称5','1681366573348','upload/shigu5.jpg','upload/file.rar',2,'事故调查介绍5',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(6,2,3,'事故调查名称6','1681366573287','upload/shigu6.jpg','upload/file.rar',3,'事故调查介绍6',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(7,3,1,'事故调查名称7','1681366573285','upload/shigu7.jpg','upload/file.rar',4,'事故调查介绍7',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(8,2,3,'事故调查名称8','1681366573278','upload/shigu8.jpg','upload/file.rar',3,'事故调查介绍8',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(9,2,1,'事故调查名称9','1681366573353','upload/shigu9.jpg','upload/file.rar',2,'事故调查介绍9',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(10,3,1,'事故调查名称10','1681366573365','upload/shigu10.jpg','upload/file.rar',2,'事故调查介绍10',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(11,1,2,'事故调查名称11','1681366573364','upload/shigu11.jpg','upload/file.rar',1,'事故调查介绍11',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(12,2,1,'事故调查名称12','1681366573288','upload/shigu12.jpg','upload/file.rar',3,'事故调查介绍12',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(13,2,2,'事故调查名称13','1681366573359','upload/shigu13.jpg','upload/file.rar',4,'事故调查介绍13',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(14,3,1,'事故调查名称14','1681366573343','upload/shigu14.jpg','upload/file.rar',4,'事故调查介绍14',1,'2023-04-13 14:16:13','2023-04-13 14:16:13');

/*Table structure for table `shigu_yuyue` */

DROP TABLE IF EXISTS `shigu_yuyue`;

CREATE TABLE `shigu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shigu_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `shigu_id` int(11) DEFAULT NULL COMMENT '事故',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '事故调查员',
  `shigu_yuyue_text` longtext COMMENT '理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '理赔申请时间',
  `shigu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `shigu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `shigu_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='理赔申请';

/*Data for the table `shigu_yuyue` */

insert  into `shigu_yuyue`(`id`,`shigu_yuyue_uuid_number`,`shigu_id`,`yonghu_id`,`yuangong_id`,`shigu_yuyue_text`,`insert_time`,`shigu_yuyue_yesno_types`,`shigu_yuyue_yesno_text`,`shigu_yuyue_shenhe_time`,`create_time`) values (1,'1681366573272',1,3,2,'理由1','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(2,'1681366573317',2,1,1,'理由2','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(3,'1681366573359',3,2,1,'理由3','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(4,'1681366573313',4,2,1,'理由4','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(5,'1681366573298',5,1,2,'理由5','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(6,'1681366573346',6,2,3,'理由6','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(7,'1681366573332',7,3,1,'理由7','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(8,'1681366573291',8,1,3,'理由8','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(9,'1681366573302',9,2,3,'理由9','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(10,'1681366573364',10,1,3,'理由10','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(11,'1681366573365',11,2,1,'理由11','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(12,'1681366573345',12,3,3,'理由12','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(13,'1681366573364',13,1,1,'理由13','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(14,'1681366573363',14,2,3,'理由14','2023-04-13 14:16:13',1,NULL,NULL,'2023-04-13 14:16:13'),(15,'1681367776414',11,1,1,'呀呀呀','2023-04-13 14:36:26',2,'500','2023-04-13 14:36:46','2023-04-13 14:36:26');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','pdcwllhoprj8i86u5mhl0rmql23rpaj5','2023-04-13 14:21:02','2023-04-13 15:34:11'),(2,1,'admin','users','管理员','fm1yav8r3rcsekehibl4z4g0ux8qgeyn','2023-04-13 14:24:10','2023-04-13 15:24:10'),(3,1,'a1','yuangong','事故调查员','idlu7fweagl91x04kyrmd8aqgtdlpgxy','2023-04-13 14:29:16','2023-04-13 15:35:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-13 14:15:23');

/*Table structure for table `xianchang` */

DROP TABLE IF EXISTS `xianchang`;

CREATE TABLE `xianchang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '事故调查员',
  `xianchang_name` varchar(200) DEFAULT NULL COMMENT '现场勘查名称  Search111 ',
  `xianchang_uuid_number` varchar(200) DEFAULT NULL COMMENT '现场勘查编号',
  `xianchang_photo` varchar(200) DEFAULT NULL COMMENT '现场勘查照片',
  `xianchang_types` int(11) DEFAULT NULL COMMENT '现场勘查类型 Search111',
  `xianchang_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `xianchang_content` longtext COMMENT '现场勘查备注 ',
  `xianchang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='现场勘查';

/*Data for the table `xianchang` */

insert  into `xianchang`(`id`,`yonghu_id`,`yuangong_id`,`xianchang_name`,`xianchang_uuid_number`,`xianchang_photo`,`xianchang_types`,`xianchang_file`,`xianchang_content`,`xianchang_delete`,`insert_time`,`create_time`) values (1,2,2,'现场勘查名称1','1681366573321','upload/xianchang1.jpg',2,'upload/file.rar','现场勘查备注1',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(2,2,1,'现场勘查名称2','1681366573321','upload/xianchang2.jpg',3,'upload/file.rar','现场勘查备注2',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(3,2,3,'现场勘查名称3','1681366573327','upload/xianchang3.jpg',3,'upload/file.rar','现场勘查备注3',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(4,1,1,'现场勘查名称4','1681366573303','upload/xianchang4.jpg',2,'upload/file.rar','现场勘查备注4',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(5,1,3,'现场勘查名称5','1681366573338','upload/xianchang5.jpg',2,'upload/file.rar','现场勘查备注5',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(6,2,2,'现场勘查名称6','1681366573288','upload/xianchang6.jpg',1,'upload/file.rar','现场勘查备注6',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(7,1,3,'现场勘查名称7','1681366573306','upload/xianchang7.jpg',1,'upload/file.rar','现场勘查备注7',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(8,2,2,'现场勘查名称8','1681366573313','upload/xianchang8.jpg',2,'upload/file.rar','现场勘查备注8',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(9,3,3,'现场勘查名称9','1681366573301','upload/xianchang9.jpg',1,'upload/file.rar','现场勘查备注9',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(10,3,1,'现场勘查名称10','1681366573288','upload/xianchang10.jpg',1,'upload/file.rar','现场勘查备注10',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(11,2,2,'现场勘查名称11','1681366573360','upload/xianchang11.jpg',4,'upload/file.rar','现场勘查备注11',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(12,2,3,'现场勘查名称12','1681366573348','upload/xianchang12.jpg',1,'upload/file.rar','现场勘查备注12',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(13,3,2,'现场勘查名称13','1681366573300','upload/xianchang13.jpg',3,'upload/file.rar','现场勘查备注13',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(14,3,3,'现场勘查名称14','1681366573314','upload/xianchang14.jpg',4,'upload/file.rar','现场勘查备注14',1,'2023-04-13 14:16:13','2023-04-13 14:16:13'),(15,1,1,'2','1681367738646','/upload/1681367761227.jpg',1,'/upload/1681367763225.jpg','<p>新增现场勘查报告</p>',1,'2023-04-13 14:36:09','2023-04-13 14:36:09');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','1681366573295','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','1174.01','2023-04-13 14:16:13'),(2,'a2','123456','1681366573347','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','164.57','2023-04-13 14:16:13'),(3,'a3','123456','1681366573368','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','661.31','2023-04-13 14:16:13');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '事故调查员编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '事故调查员姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '事故调查员手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '事故调查员身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '事故调查员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '事故调查员邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='事故调查员';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','1681366573348','事故调查员姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-04-13 14:16:13'),(2,'a2','123456','1681366573284','事故调查员姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-04-13 14:16:13'),(3,'a3','123456','1681366573351','事故调查员姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-04-13 14:16:13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
