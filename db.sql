/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - diandongcheshangpai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`diandongcheshangpai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `diandongcheshangpai`;

/*Table structure for table `baoxian` */

DROP TABLE IF EXISTS `baoxian`;

CREATE TABLE `baoxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `baoxian_name` varchar(255) DEFAULT NULL COMMENT '保险标题 Search111',
  `baoxian_types` int(200) DEFAULT NULL COMMENT '保险类型 Search111',
  `baoxian_money` decimal(10,4) DEFAULT NULL COMMENT '保险价格',
  `baoxian_content` text COMMENT '保险内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='保险信息';

/*Data for the table `baoxian` */

insert  into `baoxian`(`id`,`baoxian_name`,`baoxian_types`,`baoxian_money`,`baoxian_content`,`insert_time`,`create_time`) values (1,'保险1',1,'1000.0000','保险内容1\r\n','2021-04-27 17:41:55','2021-04-27 17:41:55'),(2,'保险2',2,'2000.0000','保险内容2\r\n','2021-04-27 17:42:04','2021-04-27 17:42:04');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-27 15:14:52'),(2,'sex_types','性别',2,'女',NULL,'2021-04-27 15:14:52'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-04-27 15:14:52'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-04-27 15:14:52'),(5,'diandongche_types','电动车类型名称',1,'电动车类型1',NULL,'2021-04-27 15:14:52'),(6,'diandongche_types','电动车类型名称',2,'电动车类型2',NULL,'2021-04-27 15:14:52'),(7,'xuanpai_types','驾照类型名称',1,'驾照类型1',NULL,'2021-04-27 15:14:52'),(8,'xuanpai_types','驾照类型名称',2,'驾照类型2',NULL,'2021-04-27 15:14:52'),(9,'baoxian_types','保险类型名称',1,'保险类型1',NULL,'2021-04-27 15:14:52'),(10,'baoxian_types','保险类型名称',2,'保险类型2',NULL,'2021-04-27 15:14:52'),(11,'shangpai_types','审核状态',1,'未审核',NULL,'2021-04-27 15:14:52'),(12,'shangpai_types','审核状态',2,'通过',NULL,'2021-04-27 15:14:52'),(13,'shangpai_types','审核状态',3,'拒绝',NULL,'2021-04-27 15:14:52'),(14,'zhuangtai_types','车牌状态',1,'未选',NULL,'2021-04-27 15:14:52'),(15,'zhuangtai_types','车牌状态',2,'申请中',NULL,'2021-04-27 15:14:52'),(16,'zhuangtai_types','车牌状态',3,'已选',NULL,'2021-04-27 15:14:52');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',2,'http://localhost:8080/diandongcheshangpai/file/download?fileName=1619517615582.jpg','2021-04-27 18:00:19','公告详情1\r\n','2021-04-27 18:00:19'),(2,'公告名称2',2,'http://localhost:8080/diandongcheshangpai/file/download?fileName=1619517624668.jpg','2021-04-27 18:00:27','公告详情2\r\n','2021-04-27 18:00:27');

/*Table structure for table `shangpai` */

DROP TABLE IF EXISTS `shangpai`;

CREATE TABLE `shangpai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '上牌用户',
  `xuanpai_id` int(200) DEFAULT NULL COMMENT '所选牌号',
  `shangpai_types` int(200) DEFAULT NULL COMMENT '审核状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='上牌信息';

/*Data for the table `shangpai` */

insert  into `shangpai`(`id`,`yonghu_id`,`xuanpai_id`,`shangpai_types`,`insert_time`,`create_time`) values (3,1,4,2,'2021-04-27 17:12:19','2021-04-27 17:12:19'),(5,1,3,2,'2021-04-27 21:02:16','2021-04-27 21:02:16');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','f0ohm9ntpmfd4i291f5piikfsk6fdqo3','2021-04-27 15:28:09','2021-04-27 22:02:28'),(2,1,'111','yonghu','用户','1rk96ql6fexsgokcilbgximmmwn115v6','2021-04-27 20:14:07','2021-04-27 22:02:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xuanpai` */

DROP TABLE IF EXISTS `xuanpai`;

CREATE TABLE `xuanpai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuanpai_name` varchar(255) DEFAULT NULL COMMENT '车牌号 Search111',
  `xuanpai_types` int(255) DEFAULT NULL COMMENT '车牌类型 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '车牌状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='选牌信息';

/*Data for the table `xuanpai` */

insert  into `xuanpai`(`id`,`xuanpai_name`,`xuanpai_types`,`zhuangtai_types`,`insert_time`,`create_time`) values (1,'车牌号1',1,1,'2021-04-27 16:24:21','2021-04-27 16:24:21'),(2,'车牌号2',2,1,'2021-04-27 16:24:25','2021-04-27 16:24:25'),(3,'车牌号3',1,3,'2021-04-27 16:24:36','2021-04-27 16:24:36'),(4,'车牌号4',2,3,'2021-04-27 16:24:42','2021-04-27 16:24:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `diandongche_types` int(11) DEFAULT NULL COMMENT '电动车类型 Search111',
  `xuanpai_types` int(11) DEFAULT NULL COMMENT '驾照类型 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`diandongche_types`,`xuanpai_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,1,1,'410882200011211141','13516155411','http://localhost:8080/diandongcheshangpai/file/download?fileName=1619509375048.jpg','2021-04-27 15:42:56'),(2,'222','123456','用户2',2,2,2,'410882200011211142','13516155412','http://localhost:8080/diandongcheshangpai/file/download?fileName=1619509721780.jpg','2021-04-27 15:48:42'),(3,'333','123456','用户3',2,2,2,'410882200011211143','13516155413','http://localhost:8080/diandongcheshangpai/file/download?fileName=1619528312412.jpg','2021-04-27 20:58:33');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
