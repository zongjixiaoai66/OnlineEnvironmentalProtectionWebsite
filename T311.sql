/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t311`;
CREATE DATABASE IF NOT EXISTS `t311` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t311`;

DROP TABLE IF EXISTS `binweishengwu`;
CREATE TABLE IF NOT EXISTS `binweishengwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `binweishengwu_name` varchar(200) DEFAULT NULL COMMENT '动物 Search111',
  `address_types` int DEFAULT NULL COMMENT '所在地区 Search111',
  `binweishengwu_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `binweishengwu_size` varchar(200) DEFAULT NULL COMMENT '现存数量',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `binweishengwu_content` text COMMENT '介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='濒危生物';

DELETE FROM `binweishengwu`;
INSERT INTO `binweishengwu` (`id`, `binweishengwu_name`, `address_types`, `binweishengwu_photo`, `binweishengwu_size`, `zan_number`, `cai_number`, `binweishengwu_content`, `insert_time`, `create_time`) VALUES
	(1, '动物1', 2, 'http://localhost:8080/huanbaowangzhan/upload/1650112322844.jpeg', '现存数量1', 234, 163, '<p>介绍1</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, '动物2', 1, 'http://localhost:8080/huanbaowangzhan/upload/1650112312072.jpeg', '现存数量2', 290, 321, '<p>介绍2</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, '动物3', 3, 'http://localhost:8080/huanbaowangzhan/upload/1650112303555.jpeg', '现存数量3', 493, 190, '<p>介绍3</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, '动物4', 2, 'http://localhost:8080/huanbaowangzhan/upload/1650112296219.jpeg', '现存数量4', 293, 67, '<p>介绍4</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, '动物5', 3, 'http://localhost:8080/huanbaowangzhan/upload/1650112288417.jpeg', '现存数量5', 387, 197, '<p>介绍5</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58');

DROP TABLE IF EXISTS `binweishengwu_collection`;
CREATE TABLE IF NOT EXISTS `binweishengwu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `binweishengwu_id` int DEFAULT NULL COMMENT '濒危生物',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `binweishengwu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='濒危生物收藏';

DELETE FROM `binweishengwu_collection`;
INSERT INTO `binweishengwu_collection` (`id`, `binweishengwu_id`, `yonghu_id`, `binweishengwu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, 2, 3, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, 3, 3, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, 4, 2, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, 5, 3, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(6, 3, 1, 2, '2022-04-16 12:39:37', '2022-04-16 12:39:37'),
	(8, 3, 1, 1, '2024-08-01 08:47:24', '2024-08-01 08:47:24');

DROP TABLE IF EXISTS `binweishengwu_liuyan`;
CREATE TABLE IF NOT EXISTS `binweishengwu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `binweishengwu_id` int DEFAULT NULL COMMENT '濒危生物',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `binweishengwu_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='濒危生物留言';

DELETE FROM `binweishengwu_liuyan`;
INSERT INTO `binweishengwu_liuyan` (`id`, `binweishengwu_id`, `yonghu_id`, `binweishengwu_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2022-04-16 12:09:58', '回复信息1', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, 2, 1, '留言内容2', '2022-04-16 12:09:58', '回复信息2', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, 3, 1, '留言内容3', '2022-04-16 12:09:58', '回复信息3', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, 4, 1, '留言内容4', '2022-04-16 12:09:58', '回复信息4', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, 5, 3, '留言内容5', '2022-04-16 12:09:58', '回复信息5', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(6, 3, 1, '登录后才能看到详情页面 和留言', '2022-04-16 12:39:54', '管理回复123', '2022-04-16 12:41:32', '2022-04-16 12:39:54');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/huanbaowangzhan/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/huanbaowangzhan/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/huanbaowangzhan/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'address_types', '地区', 1, '地区1', NULL, NULL, '2022-04-16 12:09:05'),
	(2, 'address_types', '地区', 2, '地区2', NULL, NULL, '2022-04-16 12:09:05'),
	(3, 'address_types', '地区', 3, '地区3', NULL, NULL, '2022-04-16 12:09:05'),
	(4, 'huanjingbaohu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-16 12:09:05'),
	(5, 'huanjingbaohu_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-04-16 12:09:05'),
	(6, 'huanjingbaohu_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-04-16 12:09:05'),
	(7, 'binweishengwu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-16 12:09:05'),
	(8, 'binweishengwu_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-04-16 12:09:05'),
	(9, 'binweishengwu_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-04-16 12:09:05'),
	(10, 'huanjingbaohufa_types', '保护法类型', 1, '保护法类型1', NULL, NULL, '2022-04-16 12:09:05'),
	(11, 'huanjingbaohufa_types', '保护法类型', 2, '保护法类型2', NULL, NULL, '2022-04-16 12:09:05'),
	(12, 'huanjingbaohufa_types', '保护法类型', 3, '保护法类型3', NULL, NULL, '2022-04-16 12:09:05'),
	(13, 'huanbaojiankang_types', '环保健康类型', 1, '环保健康类型1', NULL, NULL, '2022-04-16 12:09:05'),
	(14, 'huanbaojiankang_types', '环保健康类型', 2, '环保健康类型2', NULL, NULL, '2022-04-16 12:09:05'),
	(15, 'huanbaojiankang_types', '环保健康类型', 3, '环保健康类型3', NULL, NULL, '2022-04-16 12:09:05'),
	(16, 'huanbaojiankang_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-16 12:09:05'),
	(17, 'huanbaojiankang_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-04-16 12:09:05'),
	(18, 'huanbaojiankang_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-04-16 12:09:05'),
	(19, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-16 12:09:05'),
	(20, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-16 12:09:05'),
	(21, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-04-16 12:09:06'),
	(22, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-16 12:09:06'),
	(23, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-16 12:09:06'),
	(24, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-16 12:09:06'),
	(25, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-16 12:09:06');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', NULL, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, '帖子标题2', 3, NULL, '发布内容2', NULL, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, '帖子标题3', 2, NULL, '发布内容3', NULL, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, '帖子标题4', 2, NULL, '发布内容4', NULL, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, '帖子标题5', 3, NULL, '发布内容5', NULL, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(6, NULL, 1, NULL, '评论内容111123', 5, 2, '2022-04-16 12:40:15', NULL, '2022-04-16 12:40:15'),
	(7, NULL, NULL, 1, '管理评论123', 5, 2, '2022-04-16 12:41:47', NULL, '2022-04-16 12:41:47');

DROP TABLE IF EXISTS `huanbaojiankang`;
CREATE TABLE IF NOT EXISTS `huanbaojiankang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanbaojiankang_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `huanbaojiankang_types` int DEFAULT NULL COMMENT '环保健康类型 Search111',
  `huanbaojiankang_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `huanbaojiankang_content` text COMMENT '介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='环保健康';

DELETE FROM `huanbaojiankang`;
INSERT INTO `huanbaojiankang` (`id`, `huanbaojiankang_name`, `huanbaojiankang_types`, `huanbaojiankang_photo`, `zan_number`, `cai_number`, `huanbaojiankang_content`, `insert_time`, `create_time`) VALUES
	(1, '标题1', 1, 'http://localhost:8080/huanbaowangzhan/upload/1650112387392.jpeg', 371, 126, '<p>介绍1</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, '标题2', 2, 'http://localhost:8080/huanbaowangzhan/upload/1650112378955.jpeg', 133, 244, '<p>介绍2</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, '标题3', 3, 'http://localhost:8080/huanbaowangzhan/upload/1650112370907.jpeg', 307, 359, '<p>介绍3</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, '标题4', 1, 'http://localhost:8080/huanbaowangzhan/upload/1650112362784.jpeg', 489, 119, '<p>介绍4</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, '标题5', 1, 'http://localhost:8080/huanbaowangzhan/upload/1650112354631.jpeg', 87, 383, '<p>介绍5</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58');

DROP TABLE IF EXISTS `huanbaojiankang_collection`;
CREATE TABLE IF NOT EXISTS `huanbaojiankang_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanbaojiankang_id` int DEFAULT NULL COMMENT '环保健康',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huanbaojiankang_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='环保健康收藏';

DELETE FROM `huanbaojiankang_collection`;
INSERT INTO `huanbaojiankang_collection` (`id`, `huanbaojiankang_id`, `yonghu_id`, `huanbaojiankang_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, 3, 2, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, 4, 2, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(6, 3, 1, 2, '2022-04-16 12:40:31', '2022-04-16 12:40:31'),
	(8, 3, 1, 1, '2024-08-01 08:47:34', '2024-08-01 08:47:34');

DROP TABLE IF EXISTS `huanbaojiankang_liuyan`;
CREATE TABLE IF NOT EXISTS `huanbaojiankang_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanbaojiankang_id` int DEFAULT NULL COMMENT '环保健康',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huanbaojiankang_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='环保健康留言';

DELETE FROM `huanbaojiankang_liuyan`;
INSERT INTO `huanbaojiankang_liuyan` (`id`, `huanbaojiankang_id`, `yonghu_id`, `huanbaojiankang_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2022-04-16 12:09:58', '回复信息1', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, 2, 2, '留言内容2', '2022-04-16 12:09:58', '回复信息2', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, 3, 2, '留言内容3', '2022-04-16 12:09:58', '回复信息3', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, 4, 1, '留言内容4', '2022-04-16 12:09:58', '回复信息4', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, 5, 1, '留言内容5', '2022-04-16 12:09:58', '回复信息5', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(6, 3, 1, '留言11111', '2022-04-16 12:40:30', NULL, NULL, '2022-04-16 12:40:30');

DROP TABLE IF EXISTS `huanjingbaohu`;
CREATE TABLE IF NOT EXISTS `huanjingbaohu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanjingbaohu_name` varchar(200) DEFAULT NULL COMMENT '名称 Search111',
  `address_types` int DEFAULT NULL COMMENT '地区 Search111',
  `huanjingbaohu_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `huanjingbaohu_size` varchar(200) DEFAULT NULL COMMENT '大小',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `huanjingbaohu_content` text COMMENT '介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='环境保护';

DELETE FROM `huanjingbaohu`;
INSERT INTO `huanjingbaohu` (`id`, `huanjingbaohu_name`, `address_types`, `huanjingbaohu_photo`, `huanjingbaohu_size`, `zan_number`, `cai_number`, `huanjingbaohu_content`, `insert_time`, `create_time`) VALUES
	(1, '名称1', 2, 'http://localhost:8080/huanbaowangzhan/upload/1650112465892.jpeg', '大小1', 250, 296, '<p>介绍1</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, '名称2', 3, 'http://localhost:8080/huanbaowangzhan/upload/1650112458858.jpeg', '大小2', 496, 474, '<p>介绍2</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, '名称3', 2, 'http://localhost:8080/huanbaowangzhan/upload/1650112450975.jpeg', '大小3', 419, 428, '<p>介绍3</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, '名称4', 2, 'http://localhost:8080/huanbaowangzhan/upload/1650112443477.jpeg', '大小4', 144, 288, '<p>介绍4</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, '名称5', 3, 'http://localhost:8080/huanbaowangzhan/upload/1650112435202.jpeg', '大小5', 371, 199, '<p>介绍5</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58');

DROP TABLE IF EXISTS `huanjingbaohufa`;
CREATE TABLE IF NOT EXISTS `huanjingbaohufa` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanjingbaohufa_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `huanjingbaohufa_types` int DEFAULT NULL COMMENT '保护法类型 Search111',
  `huanjingbaohufa_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `huanjingbaohufa_content` text COMMENT '详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='濒危生物法';

DELETE FROM `huanjingbaohufa`;
INSERT INTO `huanjingbaohufa` (`id`, `huanjingbaohufa_name`, `huanjingbaohufa_types`, `huanjingbaohufa_photo`, `huanjingbaohufa_content`, `insert_time`, `create_time`) VALUES
	(1, '标题1', 1, 'http://localhost:8080/huanbaowangzhan/upload/1650112607688.jpeg', '<p>详情1</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, '标题2', 1, 'http://localhost:8080/huanbaowangzhan/upload/1650112600474.jpeg', '<p>详情2</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, '标题3', 2, 'http://localhost:8080/huanbaowangzhan/upload/1650112593159.jpg', '<p>详情3</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, '标题4', 2, 'http://localhost:8080/huanbaowangzhan/upload/1650112585705.jpeg', '<p>详情4</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, '标题5', 2, 'http://localhost:8080/huanbaowangzhan/upload/1650112577297.jpeg', '<p>详情5</p>', '2022-04-16 12:09:58', '2022-04-16 12:09:58');

DROP TABLE IF EXISTS `huanjingbaohu_collection`;
CREATE TABLE IF NOT EXISTS `huanjingbaohu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanjingbaohu_id` int DEFAULT NULL COMMENT '环境保护',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huanjingbaohu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='环境保护收藏';

DELETE FROM `huanjingbaohu_collection`;
INSERT INTO `huanjingbaohu_collection` (`id`, `huanjingbaohu_id`, `yonghu_id`, `huanjingbaohu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, 2, 3, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, 3, 3, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, 4, 2, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, 5, 2, 1, '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(6, 4, 1, 2, '2022-04-16 12:40:44', '2022-04-16 12:40:44');

DROP TABLE IF EXISTS `huanjingbaohu_liuyan`;
CREATE TABLE IF NOT EXISTS `huanjingbaohu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanjingbaohu_id` int DEFAULT NULL COMMENT '环境保护',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `huanjingbaohu_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='环境保护留言';

DELETE FROM `huanjingbaohu_liuyan`;
INSERT INTO `huanjingbaohu_liuyan` (`id`, `huanjingbaohu_id`, `yonghu_id`, `huanjingbaohu_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2022-04-16 12:09:58', '回复信息1', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(2, 2, 2, '留言内容2', '2022-04-16 12:09:58', '回复信息2', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(3, 3, 2, '留言内容3', '2022-04-16 12:09:58', '回复信息3', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(4, 4, 3, '留言内容4', '2022-04-16 12:09:58', '回复信息4', '2022-04-16 12:09:58', '2022-04-16 12:09:58'),
	(5, 5, 1, '留言内容5', '2022-04-16 12:09:58', '回复信息5', '2022-04-16 12:09:58', '2022-04-16 12:09:58');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'http://localhost:8080/huanbaowangzhan/upload/news1.jpg', '2022-04-16 12:09:58', '公告详情1', '2022-04-16 12:09:58'),
	(2, '公告标题2', 3, 'http://localhost:8080/huanbaowangzhan/upload/news2.jpg', '2022-04-16 12:09:58', '公告详情2', '2022-04-16 12:09:58'),
	(3, '公告标题3', 3, 'http://localhost:8080/huanbaowangzhan/upload/news3.jpg', '2022-04-16 12:09:58', '公告详情3', '2022-04-16 12:09:58'),
	(4, '公告标题4', 2, 'http://localhost:8080/huanbaowangzhan/upload/news4.jpg', '2022-04-16 12:09:58', '公告详情4', '2022-04-16 12:09:58'),
	(5, '公告标题5', 1, 'http://localhost:8080/huanbaowangzhan/upload/news5.jpg', '2022-04-16 12:09:58', '公告详情5', '2022-04-16 12:09:58');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'f74lw0b5hj6gus9rf5py8jqzrgll0nfw', '2022-04-16 12:26:40', '2024-08-01 09:47:14'),
	(2, 1, 'admin', 'users', '管理员', '66h89xeoog9epxo4geys4s22zujkxthy', '2022-04-16 12:30:50', '2024-08-01 09:45:35');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/huanbaowangzhan/upload/yonghu1.jpg', '17703786901', '1@qq.com', 2, 1, '2022-04-16 12:09:58'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/huanbaowangzhan/upload/yonghu2.jpg', '17703786902', '2@qq.com', 1, 1, '2022-04-16 12:09:58'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/huanbaowangzhan/upload/yonghu3.jpg', '17703786903', '3@qq.com', 1, 1, '2022-04-16 12:09:58');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
