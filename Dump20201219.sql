-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: new_vlinkage
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商标',
  `description` text COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述 text 类型',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间执行update自动填充',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 自动获取当前时间',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='品牌表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brand_huati`
--

DROP TABLE IF EXISTS `brand_huati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_huati` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `brand_id` int NOT NULL COMMENT '品牌id',
  `huati_id` int NOT NULL COMMENT '话题id',
  `weight` int NOT NULL COMMENT '权重',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用 0 不启用 ；1 启用',
  `is_exclusive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是专属话题 0 不是；1 是',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常；1 删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间执行update自动填充',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 自动获取当前时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='品牌话题关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brand_person`
--

DROP TABLE IF EXISTS `brand_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_person` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `brand_id` int NOT NULL COMMENT '品牌id',
  `person_id` int NOT NULL COMMENT '艺人id',
  `credit_id` int NOT NULL COMMENT '演职员（credit表）id',
  `product_id` int NOT NULL COMMENT '产品id',
  `weight` int NOT NULL COMMENT '权重',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间执行update自动填充',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 自动获取当前时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='品牌艺人关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brand_person_site`
--

DROP TABLE IF EXISTS `brand_person_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_person_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_person_id` int NOT NULL COMMENT '品牌关联艺人id',
  `site_id` int NOT NULL COMMENT '网站id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `promotion_id` bigint NOT NULL COMMENT '推广位ID',
  `url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `url_gen` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '生成网址',
  `finish_time_new` date NOT NULL COMMENT '网页上标记为新的结束时间',
  `finish_time_exclusive` date NOT NULL COMMENT '网页上标记为独家的结束时间',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间执行update自动填充',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 自动获取当前时间',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='品牌艺人网站关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brand_tmall`
--

DROP TABLE IF EXISTS `brand_tmall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_tmall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_id` int NOT NULL COMMENT '品牌id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'uid',
  `is_deleted` tinyint(1) NOT NULL COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`brand_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='品牌天猫信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brand_weibo`
--

DROP TABLE IF EXISTS `brand_weibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_weibo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `brand_id` int NOT NULL COMMENT '品牌id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'uid',
  `is_login` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要登录后访问 0 不需要；1需要',
  `sum` int NOT NULL DEFAULT '0' COMMENT '粉丝总数',
  `post_sum` int NOT NULL DEFAULT '0' COMMENT '微博总数',
  `grab_time` int NOT NULL DEFAULT '0' COMMENT '抓取失败的次数',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`brand_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='品牌微博信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character`
--

DROP TABLE IF EXISTS `character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `sex` tinyint(1) NOT NULL COMMENT '性别 1 男；2女',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `is_enabled` tinyint NOT NULL COMMENT '是否启用，计算指数 0 未启用；1 已启用',
  `is_complete` tinyint(1) NOT NULL COMMENT '是否编辑完整 0 不完整；1 编辑完整',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧电影中的角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '国家或地区名称',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='国家地区表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `credit`
--

DROP TABLE IF EXISTS `credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '名称',
  `is_enabled_movie_person` tinyint NOT NULL COMMENT '是否在电影关联艺人中启用',
  `is_enabled_teleplay_person` tinyint NOT NULL COMMENT '是否在电视剧关联艺人中启用',
  `is_enabled_zy_person` tinyint NOT NULL COMMENT '是否在综艺关联艺人中启用',
  `is_enabled_brand_person` tinyint NOT NULL COMMENT '是否在品牌关联艺人中启用',
  `is_enabled_music_person` tinyint NOT NULL COMMENT '是否在音乐关联艺人中启用',
  `is_enabled_musicalbum_person` tinyint NOT NULL COMMENT '是否在音乐专辑关联艺人中启用',
  `is_enabled_prdhouse_person` tinyint NOT NULL COMMENT '是否在组织机构关联艺人中启用',
  `is_enabled_prdhouse_persongroup` tinyint NOT NULL COMMENT '是否在组织机构关联艺人组合中启用',
  `is_enabled_movie_prdhouse` tinyint NOT NULL COMMENT '是否在电影关联组织机构中启用',
  `is_enabled_teleplay_prdhouse` tinyint NOT NULL COMMENT '是否在电视剧关联组织机构中启用',
  `is_enabled_zy_prdhouse` tinyint NOT NULL COMMENT '是否在综艺关联组织机构中启用',
  `is_enabled_brand_prdhouse` tinyint NOT NULL COMMENT '是否在品牌关联组织机构中启用',
  `is_enabled_music_prdhouse` tinyint NOT NULL COMMENT '是否在音乐关联组织机构中启用',
  `is_enabled_musicalbum_prdhouse` tinyint NOT NULL COMMENT '是否在音乐专辑关联组织机构中启用',
  `is_deleted` tinyint(1) NOT NULL COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='演职员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `huati`
--

DROP TABLE IF EXISTS `huati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huati` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'Url',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'uid',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='话题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '语言名称',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='语言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lifecycle`
--

DROP TABLE IF EXISTS `lifecycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifecycle` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '生命周期阶段名称',
  `is_enabled_movie` tinyint NOT NULL COMMENT '是否适用电影',
  `is_enabled_teleplay` tinyint NOT NULL COMMENT '是否适用电视剧',
  `is_enabled_zy` tinyint NOT NULL COMMENT '是否适用综艺',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='周期表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zh_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `sex` tinyint(1) NOT NULL COMMENT '性别 1 男； 2 女',
  `country_id` int NOT NULL COMMENT '国家地区',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '描述',
  `pinyin_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '姓名拼音',
  `en_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '英文名',
  `alias` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '别名',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `height` int DEFAULT NULL COMMENT '身高(cm)',
  `weight` int DEFAULT NULL COMMENT '体重(kg)',
  `is_enabled` tinyint DEFAULT NULL COMMENT '已启用，计算指数',
  `is_complete` tinyint DEFAULT NULL COMMENT '已编辑完整',
  `is_xunyee_check` tinyint DEFAULT NULL COMMENT '是否可以在寻艺签到',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像',
  `web_avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '网络头像',
  `is_writer` tinyint DEFAULT NULL COMMENT '是否是编剧',
  `is_director` tinyint DEFAULT NULL COMMENT '是否是导演',
  `is_performer` tinyint DEFAULT NULL COMMENT '是否是演员',
  `is_producer` tinyint DEFAULT NULL COMMENT '是否是监制',
  `is_exeproducer` tinyint DEFAULT NULL COMMENT '是否是制片人',
  `is_lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `is_deleted` tinyint(1) NOT NULL COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int DEFAULT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='艺人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_baidutop`
--

DROP TABLE IF EXISTS `person_baidutop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_baidutop` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `person_id` int NOT NULL COMMENT '艺人id',
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `is_enabled` tinyint(1) NOT NULL COMMENT '是否启用 0 未启用；1已启用',
  `trend` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '趋势',
  `search_num` int NOT NULL DEFAULT '0' COMMENT '搜索数量',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常；1删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='艺人百度风云榜表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_buluo`
--

DROP TABLE IF EXISTS `person_buluo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_buluo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `person_id` int NOT NULL COMMENT '艺人id',
  `title` varchar(60) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '部落uid',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0正常；1删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='艺人部落信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_douban`
--

DROP TABLE IF EXISTS `person_douban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_douban` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `person_id` int NOT NULL COMMENT '艺人id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '豆瓣uid',
  `imdb` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'IMDb',
  `sum` int NOT NULL DEFAULT '0' COMMENT '豆瓣艺人的粉丝数',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `grab_time` int DEFAULT NULL COMMENT '抓取失败的次数',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0正常；1删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='艺人豆瓣信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_huati`
--

DROP TABLE IF EXISTS `person_huati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_huati` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `person_id` int NOT NULL COMMENT '艺人id',
  `huati_id` int NOT NULL COMMENT '话题id',
  `weight` int NOT NULL COMMENT '权重',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用 0 不启用；1启用',
  `is_exclusive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否专属话题 0 否；1是',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0正常；1删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='艺人话题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_sotrend`
--

DROP TABLE IF EXISTS `person_sotrend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_sotrend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `person_id` int NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint NOT NULL,
  `created` date NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_tieba`
--

DROP TABLE IF EXISTS `person_tieba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_tieba` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `person_id` int NOT NULL COMMENT '艺人id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '贴吧uid',
  `sum` int NOT NULL DEFAULT '0' COMMENT '会员数',
  `post_sum` int NOT NULL DEFAULT '0' COMMENT '帖子总数',
  `subject_sum` int NOT NULL DEFAULT '0' COMMENT '主题总数',
  `member_sum` int NOT NULL DEFAULT '0' COMMENT '会员总数',
  `check_sum` int NOT NULL DEFAULT '0' COMMENT '签到数',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `grab_time` int NOT NULL DEFAULT '0' COMMENT '抓取失败的次数',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0正常；1删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_weibo`
--

DROP TABLE IF EXISTS `person_weibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_weibo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `person_id` int NOT NULL COMMENT '艺人id',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '贴吧uid',
  `is_login` tinyint NOT NULL COMMENT '需要登录后访问',
  `sum` int NOT NULL DEFAULT '0' COMMENT '粉丝总数',
  `post_sum` int NOT NULL DEFAULT '0' COMMENT '微博总数',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `grab_time` int NOT NULL DEFAULT '0' COMMENT '抓取失败的次数',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0正常；1删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`person_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prdhouse`
--

DROP TABLE IF EXISTS `prdhouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prdhouse` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `abbrevuatuib` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '别名',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '地址',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='组织机构';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '产品名称',
  `brand_id` int NOT NULL COMMENT '品牌id',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zh_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '中文名称',
  `en_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '英文名称',
  `url` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `is_enabled_video` tinyint NOT NULL COMMENT '是否是视频网站',
  `is_enabled_commerce` tinyint NOT NULL COMMENT '是否是电商网站',
  `is_enabled_social` tinyint NOT NULL COMMENT '是否是社交网站',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='网站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay`
--

DROP TABLE IF EXISTS `teleplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键,自增id',
  `category_id` int NOT NULL COMMENT '电视剧类别id',
  `language_id` int NOT NULL COMMENT '语言id',
  `country_id` int NOT NULL COMMENT '国家地区id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '剧名',
  `alias` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '电视剧 别名',
  `sartf_title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '广电名',
  `search_keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '搜索关键字',
  `tv_first_play_date` date NOT NULL DEFAULT '1970-01-01' COMMENT '电视播出时间',
  `tv_last_play_date` date DEFAULT NULL COMMENT '电视播完时间',
  `tv_first_play_date_wait` tinyint DEFAULT '1' COMMENT '电视播出时间待定',
  `net_first_play_date` date DEFAULT NULL COMMENT '网络播出时间',
  `net_last_play_date` date NOT NULL COMMENT '网络播完时间',
  `episode_nums` int NOT NULL DEFAULT '0' COMMENT '集数',
  `runtime` int NOT NULL DEFAULT '0' COMMENT '播放时长',
  `status` int NOT NULL COMMENT '电视剧状态，拍摄，播出等',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '电视剧介绍',
  `is_enabled` tinyint NOT NULL COMMENT '已启用,是否计算指数',
  `is_dig` tinyint NOT NULL COMMENT '0,普通剧 1推荐热播',
  `is_published` int NOT NULL DEFAULT '1' COMMENT '0,表示 未发行，1表示发行',
  `is_complete` int NOT NULL DEFAULT '0' COMMENT '已编辑完整',
  `cover_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面URL',
  `is_lock` tinyint NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `title` (`title`) USING BTREE,
  KEY `tv_first_play_date` (`tv_first_play_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_baidutop`
--

DROP TABLE IF EXISTS `teleplay_baidutop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_baidutop` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL COMMENT '电视剧id',
  `keyword` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用 0 未启用；1已启用',
  `trend` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '趋势',
  `search_num` int NOT NULL DEFAULT '0' COMMENT '搜索数量',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧百度风云榜表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_buluo`
--

DROP TABLE IF EXISTS `teleplay_buluo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_buluo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部落uid',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`teleplay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧部落信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_douban`
--

DROP TABLE IF EXISTS `teleplay_douban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_douban` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL COMMENT '电视剧id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '豆瓣uid',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '得分数',
  `short_comment` int NOT NULL DEFAULT '0' COMMENT '电视剧的短评',
  `film_comment` int NOT NULL DEFAULT '0' COMMENT '电视剧的影评',
  `comment_nums` int NOT NULL DEFAULT '0' COMMENT '评价人数',
  `imdb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'imdb',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `grab_time` int NOT NULL DEFAULT '0' COMMENT '抓取失败的次数',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`teleplay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_huati`
--

DROP TABLE IF EXISTS `teleplay_huati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_huati` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL COMMENT '电视剧id',
  `huati_id` int NOT NULL COMMENT '话题id',
  `weight` int NOT NULL COMMENT '权重',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用 0未启用；1已启用',
  `is_exclusive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否专属话题 0 否；1是',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧话题关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_person`
--

DROP TABLE IF EXISTS `teleplay_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_person` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL COMMENT '电视剧id',
  `person_id` int NOT NULL COMMENT '艺人id',
  `credit_id` int DEFAULT NULL COMMENT '演职员id',
  `weight` int NOT NULL COMMENT '权重',
  `character_id` int DEFAULT NULL COMMENT '艺人在电视剧中角色id',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧艺人关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_prdhouse`
--

DROP TABLE IF EXISTS `teleplay_prdhouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_prdhouse` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL COMMENT '电视剧id',
  `prdhouse_id` int NOT NULL,
  `credit_id` int NOT NULL COMMENT '演职员id',
  `weight` int NOT NULL COMMENT '权重',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧组织机构关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_site`
--

DROP TABLE IF EXISTS `teleplay_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_site` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL COMMENT '电视剧id',
  `site_id` int NOT NULL COMMENT '网站id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '对应网站的uid',
  `show_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '网址',
  `num_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '数据网址',
  `is_fullepi` tinyint DEFAULT NULL COMMENT '是正片',
  `spider_id` int DEFAULT NULL COMMENT '爬虫id',
  `crawled_info` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '0:success,1:crawling,2:waiting,3:404',
  `is_min_id` tinyint DEFAULT NULL COMMENT '是否是正确的URL',
  `spider_status` tinyint DEFAULT NULL COMMENT '爬虫状态',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧网站关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_sotrend`
--

DROP TABLE IF EXISTS `teleplay_sotrend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_sotrend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `teleplay_id` int NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint NOT NULL,
  `created` date NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_subject`
--

DROP TABLE IF EXISTS `teleplay_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_subject` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL COMMENT '电视剧id',
  `subject_id` int NOT NULL COMMENT '题材id',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧题材关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_tieba`
--

DROP TABLE IF EXISTS `teleplay_tieba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_tieba` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '贴吧uid',
  `sum` int NOT NULL DEFAULT '0' COMMENT '会员数',
  `post_sum` int NOT NULL DEFAULT '0' COMMENT '帖子总数',
  `subject_sum` int NOT NULL DEFAULT '0' COMMENT '主题总数',
  `member_sum` int NOT NULL DEFAULT '0' COMMENT '会员总数',
  `check_sum` int NOT NULL DEFAULT '0' COMMENT '签到数',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `grab_time` int NOT NULL DEFAULT '0' COMMENT '抓取失败的次数',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`teleplay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧贴吧信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplay_weibo`
--

DROP TABLE IF EXISTS `teleplay_weibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplay_weibo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `teleplay_id` int NOT NULL COMMENT '电视剧id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '贴吧uid',
  `is_login` tinyint NOT NULL COMMENT '需要登录后访问',
  `sum` int NOT NULL DEFAULT '0' COMMENT '粉丝总数',
  `post_sum` int NOT NULL DEFAULT '0' COMMENT '微博总数',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `grab_time` int NOT NULL DEFAULT '0' COMMENT '抓取失败的次数',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`teleplay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧微博信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplaycategory`
--

DROP TABLE IF EXISTS `teleplaycategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplaycategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teleplaysubject`
--

DROP TABLE IF EXISTS `teleplaysubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teleplaysubject` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '题材名称',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='电视剧题材表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy`
--

DROP TABLE IF EXISTS `zy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键,自增id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '剧名',
  `search_keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '搜索关键字',
  `first_play_date` date NOT NULL DEFAULT '1970-01-01' COMMENT '播出时间',
  `country_id` int NOT NULL COMMENT '国家地区，外键',
  `status` int NOT NULL COMMENT '状态，拍摄，播出等',
  `category_id` int NOT NULL COMMENT '综艺分类',
  `type_id` int NOT NULL COMMENT '综艺类型',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '介绍',
  `is_enabled` tinyint NOT NULL COMMENT '已启用,是否计算指数',
  `is_complete` int NOT NULL DEFAULT '0' COMMENT '已编辑完整',
  `is_lock` tinyint NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tv_first_play_date` (`first_play_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_baidutop`
--

DROP TABLE IF EXISTS `zy_baidutop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_baidutop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zy_id` int NOT NULL COMMENT '综艺id',
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用 0 未启用；1已启用',
  `trend` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '趋势',
  `search_num` int NOT NULL DEFAULT '0',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺百度风云榜表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_buluo`
--

DROP TABLE IF EXISTS `zy_buluo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_buluo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zy_id` int NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部落uid',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`zy_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺部落表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_douban`
--

DROP TABLE IF EXISTS `zy_douban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_douban` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zy_id` int NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '豆瓣uid',
  `score` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '得分数',
  `short_comment` int NOT NULL DEFAULT '0' COMMENT '电视剧的短评',
  `film_comment` int NOT NULL DEFAULT '0' COMMENT '电视剧的影评',
  `comment_nums` int NOT NULL DEFAULT '0' COMMENT '评价人数',
  `imdb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'imdb',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `grab_time` int NOT NULL DEFAULT '0' COMMENT '抓取失败的次数',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`zy_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺豆瓣信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_huati`
--

DROP TABLE IF EXISTS `zy_huati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_huati` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zy_id` int NOT NULL COMMENT '综艺id',
  `huati_id` int NOT NULL COMMENT '话题id',
  `weight` int NOT NULL COMMENT '权重',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用 0 否；1是',
  `is_exclusive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否专属话题 0 否；1是',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺话题关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_person`
--

DROP TABLE IF EXISTS `zy_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_person` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zy_id` int NOT NULL COMMENT '综艺id',
  `person_id` int NOT NULL COMMENT '艺人id',
  `credit_id` int DEFAULT NULL COMMENT '演职员id',
  `weight` int NOT NULL COMMENT '权重',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺艺人关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_prdhouse`
--

DROP TABLE IF EXISTS `zy_prdhouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_prdhouse` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zy_id` int NOT NULL COMMENT '综艺id',
  `prdhouse_id` int NOT NULL COMMENT '组织机构id',
  `credit_id` int NOT NULL COMMENT '演职员id',
  `weight` int NOT NULL COMMENT '权重',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺组织机构关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_site`
--

DROP TABLE IF EXISTS `zy_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_site` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zy_id` int NOT NULL COMMENT '综艺id',
  `site_id` int NOT NULL COMMENT '网站id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '对应网站的uid',
  `show_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '网址',
  `num_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '数据网址',
  `spider_id` int DEFAULT NULL COMMENT '爬虫id',
  `crawled_info` tinyint DEFAULT NULL COMMENT '0:success,1:crawling,2:waiting,3:404',
  `is_min_id` tinyint DEFAULT NULL COMMENT '是否是正确的URL',
  `spider_status` tinyint DEFAULT NULL COMMENT '爬虫状态',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺 网站关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_site_epi`
--

DROP TABLE IF EXISTS `zy_site_epi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_site_epi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zy_site_id` int NOT NULL COMMENT '综艺关联网站id',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `episode_no` int NOT NULL COMMENT '期数',
  `episode_time` date NOT NULL COMMENT '该期播出时间',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '对应网站的uid',
  `show_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `num_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据网址',
  `is_deleted` tinyint NOT NULL COMMENT '是否删除',
  `spider_id` int DEFAULT NULL COMMENT '爬虫id',
  `crawled_info` tinyint DEFAULT NULL COMMENT '0:success,1:crawling,2:waiting,3:404',
  `is_min_id` tinyint DEFAULT NULL COMMENT '是否是正确的URL',
  `spider_status` tinyint DEFAULT NULL COMMENT '爬虫状态',
  `created` date NOT NULL COMMENT '记录创建日期',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_sotrend`
--

DROP TABLE IF EXISTS `zy_sotrend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_sotrend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `zy_id` int NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `is_deleted` tinyint NOT NULL,
  `created` date NOT NULL,
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `u_timestamp` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_tieba`
--

DROP TABLE IF EXISTS `zy_tieba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_tieba` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zy_id` int NOT NULL COMMENT '综艺id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '贴吧uid',
  `sum` int NOT NULL DEFAULT '0' COMMENT '会员数',
  `post_sum` int NOT NULL DEFAULT '0' COMMENT '帖子总数',
  `subject_sum` int NOT NULL DEFAULT '0' COMMENT '主题总数',
  `member_sum` int NOT NULL DEFAULT '0' COMMENT '会员总数',
  `check_sum` int NOT NULL DEFAULT '0' COMMENT '签到数',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `grab_time` int NOT NULL DEFAULT '0' COMMENT '抓取失败的次数',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`zy_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺贴吧?表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zy_weibo`
--

DROP TABLE IF EXISTS `zy_weibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zy_weibo` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zy_id` int NOT NULL COMMENT '综艺id',
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '网址',
  `uid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '贴吧uid',
  `is_login` tinyint NOT NULL DEFAULT '0' COMMENT '需要登录后访问',
  `sum` int NOT NULL DEFAULT '0' COMMENT '粉丝总数',
  `post_sum` int NOT NULL DEFAULT '0' COMMENT '微博总数',
  `spider_date` date DEFAULT NULL COMMENT '采集数据的日期',
  `grab_time` int NOT NULL DEFAULT '0' COMMENT '抓取失败的次数',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`,`zy_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺微博信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zycategory`
--

DROP TABLE IF EXISTS `zycategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zycategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zytype`
--

DROP TABLE IF EXISTS `zytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zytype` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0 正常 ；1已删除',
  `updated` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录修改时间戳',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建日期',
  `u_timestamp` int NOT NULL COMMENT '记录更新unix时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='综艺类型表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 23:52:39
