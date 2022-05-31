-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: what_to_eat
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `user_name` varchar(16) NOT NULL COMMENT '用户名',
  `password` varchar(16) DEFAULT NULL COMMENT '密码',
  `user_level` int(11) NOT NULL DEFAULT '0' COMMENT '用户等级,level6为最高管理员权限,level0为普通用户权限',
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='账户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

INSERT INTO `account` VALUES ('qwertyuiop','asdfghjkl',6);

--
-- Table structure for table `classification_of_food`
--

DROP TABLE IF EXISTS `classification_of_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classification_of_food` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜品分类主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品分类名',
  `description` text NOT NULL COMMENT '菜品分类描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜品分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classification_of_food`
--

INSERT INTO `classification_of_food` VALUES (1,'腌菜','腌制是肉、鱼、蔬菜等食物加盐和其他作料进行保藏的一种加工方法，该方法可以防止有害微生物的生长，延长食物贮存期。\r\n蔬菜腌制是一种历史悠久的蔬菜加工方法,由于加工方法简单、成本低廉、容易保存、产品具有独特的色、香、味,为其他加工品所不能代替,所以蔬菜腌制品深受消费者欢迎。\r\n腌制蔬菜可以使用多种原料,常用的有白萝卜、胡萝卜、黄瓜、莴笋、蒜苔、莲花白、辣椒等。我国各地传统的蔬菜腌制品有上海雪里蕻、重庆涪陵的榨菜、广东酸笋、云南大头菜、常州香甜萝卜干等。在国外，日本的酱菜、韩国的泡菜等也久负盛誉。\r\n目前，我国大规模、工业化生产腌制蔬菜一般都采用高盐胚、长时间的腌渍工艺，然后采取低盐化处理的方法制成各种成品。蔬菜腌制的机理主要是利用食盐的高渗透压作用、微生物的发酵作用和蛋白质的水解作用，以及其它一系列的生物化学变化，最终使腌制品得以保存，并具有独特的色、香、味。腌菜制品发酵一般以乳酸发酵为主并伴有少量的酒精发酵和微量的醋酸发酵。在蔬菜腌制品中，味感物质主要是氨基酸和有机酸两大类；香味物质则很复杂，通常都是多种挥发性和半挥发性的物质。');
INSERT INTO `classification_of_food` VALUES (2,'卤菜','卤菜是烹饪学上凉食菜肴的通称，是各地区耳熟能详的家常菜。卤菜共分为红卤系列、盐焗系列、麻辣系列、泡椒系列、烤鸭系列、酱香系列、五香系列、海鲜系列、凉拌系列等9大系列。\r\n它经过腌制、风晒、煮焖或卤制后，经刀工处理，简单包装，即可食用，特点是干香、脆嫩、酥烂、爽滑、无汤、不腻、色泽光亮、食用方便、便于携带，备受人们的喜爱。\r\n中国卤菜源远流长，种类繁多，风味各异，一直以它独有的形式在不断的超越与发展，在粤菜、湘菜、徽菜、川菜当中都有非常大的影响力，而且不论城市乡间，放眼酒楼饭店、街边小巷随处可见其踪迹。');
INSERT INTO `classification_of_food` VALUES (3,'凉拌菜','凉拌菜，是将初步加工和焯水处理后的原料，经过添加红油、酱油、蒜粒等配料制作而成的菜肴。根据红油的分类一般可分为香辣、麻辣、五香三大类。\r\n凉拌菜其历史文化却深远得多，可追溯到周朝和先秦时期。每一道凉菜，吃的不仅仅是食物的本身，调味料才是灵魂所在。糖、香油、醋、盐、辣椒油等调味的多或少，赋予了每一道凉菜不同的味道。吃前将各种食材连同酱汁拌均匀，酸、辣、甜、麻香味儿在口腔中散发开来，醒胃又养生。');
INSERT INTO `classification_of_food` VALUES (4,'煎菜','煎是先把锅烧热，用少量的油刷一下锅底，然后把加工成型（一般为扁型）的原料放入锅中，用少量的油煎制成熟的一种烹饪方法.一般是先煎一面，再煎另一面，煎时要不停地晃动锅子，使原料受热均匀，色泽一致。');
INSERT INTO `classification_of_food` VALUES (5,'炒菜','中国菜的常用制作方法，是中国家庭日常最广泛使用的一种烹饪方法，将一种或几种菜在锅中炒熟的过程，它主要是以锅中的油温为载体，将切好的菜品用中旺火在较短时间内加热成熟的一种烹饪方法。 通常放油若干，加入佐料，再将菜品放入锅中，用中旺火在较短时间内加热成熟，中间使用特制工具“锅铲”不断翻动，直到菜被炒熟！锅铲的翻动过程也正是炒的过程，翻动的目的是使菜品受热、佐料以及各种菜品在炒制过程中析出的汁水在整锅菜中均匀分布。\r\n其中，火候的掌握、翻动节奏以及调味料的加入种类和次序，为最终炒制是否成功的关键！由此，炒菜如不加具体菜名时可独立为动词！如：我炒菜去！');
INSERT INTO `classification_of_food` VALUES (6,'油炸菜','炸，是将原料挂糊(上浆)或不挂糊(不上浆)，放在不同温度的多量油锅中来加热成熟的烹饪技法。在炸原料时，油量要多于主料，是主料的2～3倍，有时甚至更多。油量大，炸得快，而且成菜效果好。常见的方法有清炸、干炸、软炸、松炸、酥炸、脆炸、泼炸、浸炸、卷炸等。虽说方法多多，但常用的还是前几种。');
INSERT INTO `classification_of_food` VALUES (7,'烧菜','烧是先将主料进行一次或两次以上的热处理之后，加入汤（或水）和调料，先用大火烧开，再改用小火慢烧至或酥烂（肉类，海味），或软嫩（鱼类，豆腐），或鲜嫩（蔬菜）的一种烹调方法.由于烧菜的口味，色泽和汤汁多寡的不同，它又分为红烧，白烧，干烧，酱烧，葱烧，辣烧等许多种。');
INSERT INTO `classification_of_food` VALUES (8,'炖菜','炖和烧相似，所不同的是，炖制菜的汤汁比烧菜的多.炖先用葱，姜炝锅，再冲入汤或水，烧开后下主料，先大火烧开，再小火慢炖.炖菜的主料要求软烂，一般是咸鲜味。');
INSERT INTO `classification_of_food` VALUES (9,'水煮菜','水煮是指将原料放入水中加热，直至煮熟。');

--
-- Table structure for table `cooking_process&health`
--

DROP TABLE IF EXISTS `cooking_process&health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cooking_process&health` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '烹饪过程表主键',
  `cooking_process` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '烹饪方法',
  `process_awarded_marks` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '加分的分值,加分越多代表操作越复杂,加分越少代表操作越简单',
  `health_awarded_marks` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '加分的分值,加分越多代表过程越不清淡,加分越少代表过程越清淡',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='烹饪过程难度和健康程度打分表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cooking_process&health`
--

INSERT INTO `cooking_process&health` VALUES (1,'腌',1.0,0.5);
INSERT INTO `cooking_process&health` VALUES (2,'煮',1.0,0.0);
INSERT INTO `cooking_process&health` VALUES (3,'煎',1.5,0.5);
INSERT INTO `cooking_process&health` VALUES (4,'蒸',2.0,0.0);
INSERT INTO `cooking_process&health` VALUES (5,'炒',2.0,1.0);
INSERT INTO `cooking_process&health` VALUES (6,'烧',3.0,1.5);
INSERT INTO `cooking_process&health` VALUES (7,'炖',3.0,0.0);
INSERT INTO `cooking_process&health` VALUES (8,'炸',5.0,3.0);

--
-- Table structure for table `dishes&cooking`
--

DROP TABLE IF EXISTS `dishes&cooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dishes&cooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜品详情和操作流程对应表主键',
  `did` int(11) NOT NULL COMMENT 'dishes_details表外键',
  `cid` int(11) NOT NULL COMMENT 'cooking_process&health表外键',
  PRIMARY KEY (`id`),
  KEY `dishes&cooking_cooking_process&health_id_fk` (`cid`),
  KEY `dishes&cooking_dishes_details_id_fk` (`did`),
  CONSTRAINT `dishes&cooking_cooking_process&health_id_fk` FOREIGN KEY (`cid`) REFERENCES `cooking_process&health` (`id`),
  CONSTRAINT `dishes&cooking_dishes_details_id_fk` FOREIGN KEY (`did`) REFERENCES `dishes_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜品详情和操作流程对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes&cooking`
--


--
-- Table structure for table `dishes_details`
--

DROP TABLE IF EXISTS `dishes_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dishes_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜品详情表主键',
  `rid` int(11) NOT NULL COMMENT 'recipe_daqo表id外键',
  `feature` varchar(255) NOT NULL COMMENT '该菜品特色',
  `cooking_methods` text NOT NULL COMMENT '具体烹饪方法',
  PRIMARY KEY (`id`),
  KEY `dishes_details_recipe_daqo_id_fk` (`rid`),
  CONSTRAINT `dishes_details_recipe_daqo_id_fk` FOREIGN KEY (`rid`) REFERENCES `recipe_daqo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜品详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes_details`
--


--
-- Table structure for table `dishes_details&food_material`
--

DROP TABLE IF EXISTS `dishes_details&food_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dishes_details&food_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜品和原料对照表主键',
  `did` int(11) NOT NULL COMMENT 'dishes_details表外键',
  `fid` int(11) NOT NULL COMMENT 'food_material表外键',
  PRIMARY KEY (`id`),
  KEY `dishes_details&food_material_dishes_details_id_fk` (`did`),
  CONSTRAINT `dishes_details&food_material_dishes_details_id_fk` FOREIGN KEY (`did`) REFERENCES `dishes_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜品和原料对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes_details&food_material`
--


--
-- Table structure for table `food_material`
--

DROP TABLE IF EXISTS `food_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '食材表主键',
  `food_name` varchar(255) NOT NULL COMMENT '食材名称',
  `fid` int(11) DEFAULT NULL COMMENT '上级id',
  `process_awarded_marks` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '食材处理过程分值,加分越多处理越麻烦,加分越少处理越简单',
  `health_awarded_marks` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '食材的清淡程度分值,加分越多越重口味,加分越少越清淡',
  PRIMARY KEY (`id`),
  KEY `food_material_food_material_id_fk` (`fid`),
  CONSTRAINT `food_material_food_material_id_fk` FOREIGN KEY (`fid`) REFERENCES `food_material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='食材表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_material`
--

INSERT INTO `food_material` VALUES (1,'猪',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (2,'大白猪(大约克夏猪,英国大白猪)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (3,'民猪(东北民猪)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (4,'八眉猪(泾川猪)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (5,'成华猪',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (6,'牛',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (7,'黄牛',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (8,'牦牛',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (9,'和牛',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (10,'安格斯牛',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (11,'夏洛来牛',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (12,'利木赞牛',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (13,'羊',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (14,'山羊',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (15,'绵羊',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (16,'野羊',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (17,'兔子',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (18,'肉兔(皮肉兔,皮兔,实验兔,菜兔)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (19,'蒙古兔(草原兔,中亚兔,跳猫)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (20,'东北兔(草兔,山兔,黑兔子,山跳子,海角野兔,阿拉伯野兔,布朗野兔,沙漠野兔)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (21,'高原兔(灰尾兔,长毛兔,绒毛兔)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (22,'华南兔(短耳兔,粗毛兔)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (23,'野兔',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (24,'牛奶',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (25,'羊奶',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (26,'奶酪',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (27,'奶油',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (28,'黄油',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (29,'鸡',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (30,'乌骨鸡(竹丝鸡,矮脚鸡,乌鸡)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (31,'三黄鸡',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (32,'芦花鸡',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (33,'雪鸡()',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (34,'七彩锦鸡(山鸡,雏鸡,野鸡)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (35,'鸭',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (36,'大麻鸭(大绿头,大红腿鸭,官鸭,对鸭,青边,野鸭)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (37,'斑嘴鸭(中华斑嘴鸭,中国斑嘴鸭,东方斑嘴鸭)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (38,'北京鸭',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (39,'鹅',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (40,'狮头鹅',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (41,'溆浦鹅',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (42,'浙东白鹅',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (43,'皖西白鹅',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (44,'朗德鹅',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (45,'莱茵鹅',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (46,'鸽子',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (47,'鹌鹑',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (48,'蛋',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (49,'鸡蛋',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (50,'鸭蛋',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (51,'鹅蛋',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (52,'鸽子蛋',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (53,'鹌鹑蛋',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (54,'皮蛋(松花蛋,灰包蛋,包蛋,变蛋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (55,'变蛋(鸡蛋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (56,'皮蛋(鸭蛋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (57,'皮蛋(鹅蛋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (58,'咸蛋(盐蛋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (59,'咸鸡蛋(盐鸭蛋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (60,'咸鸭蛋(盐鸭蛋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (61,'咸鹅蛋(盐鹅蛋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (62,'盐皮蛋',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (63,'鳙鱼(花鲢,黑鲢,鱃鱼,皂包头,皂鲢,黑包头鱼,鳙头鲢,包头鱼,大头鱼,胖头鱼)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (64,'鲢鱼(鲢子,白鲢,边鱼)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (65,'鲩鱼(草鱼,油鲩,草鲩,白鲩,乌青,草苞,草根,混子)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (66,'青鱼(鲭,乌鲭,青鲩,乌青,溪鱼,溜子)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (67,'鲫鱼',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (68,'鲶鱼(塘虱,胡子鲢,黏鱼,塘鲺鱼,生仔鱼,活的子,鲶柺鱼,鲇鱼)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (69,'黄颡鱼(黄颡鱼,黄姑子,黄沙古,黄角丁,黄辣丁,黄刺骨,黄骨鱼,刺黄股,昂刺,昂公)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (70,'鲈鱼(花鲈,鲈板,花寨,鲈子鱼,七星鲈)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (71,'武昌鱼(团头鲂,鳊鱼,草鳊,缩项鳊)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (72,'钳鱼(钳猫,斑点叉尾鮰)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (73,'大白菜(黄芽菜,白菜,结球白菜,包心白菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (74,'小白菜(青菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (75,'圆白菜(甘蓝,包菜,莲花白,卷心菜,牛心菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (76,'紫甘蓝(红甘蓝,赤甘蓝,紫苞菜,红卷心菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (77,'小白菜(青菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (78,'油菜(欧洲油菜,油麻菜籽,麻油菜籽,甘蓝型油菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (79,'红油菜(红菜薹,紫菜薹,红油菜薹)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (80,'白油菜(白菜薹,水白菜花,菜心)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (81,'油麦菜(凤尾,油荬,香水生菜,莜麦菜,苦菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (82,'莴笋(青笋,茎用莴苣,莴苣笋,莴菜,香莴笋,千金菜,莴苣菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (83,'苕尖(红薯叶,地瓜叶)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (84,'菠菜(波斯菜,菠薐,菠柃,鹦鹉菜,红根菜,飞龙菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (85,'瓢儿白(上海青,上海白菜,苏州青,青江菜,青姜菜,小棠菜,青梗白菜,青江白菜,青菜,瓢菜,瓶菜,小油菜,汤勺菜,汤匙菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (86,'娃娃菜',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (87,'豆腐菜(落葵,软浆叶,木耳菜,藤菜,潺菜,紫葵,胭脂菜,蓠芭菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (88,'空心菜(藤藤菜,蕹菜,通菜蓊,蓊菜,通菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (89,'黄花菜(金针菜,柠檬萱草,忘忧草,萱草,萱草花,健脑菜,安神菜,绿葱花)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (90,'汉菜(苋菜,青香苋,红苋菜,红菜,米苋,玉米菜,千菜谷,荇菜,寒菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (91,'生菜(叶用莴苣,鹅仔菜,莴仔菜,唛仔菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (92,'芹菜(胡芹)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (93,'香菜(芫荽,胡荽,香荽)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (94,'花椰菜(花菜,菜花,椰菜花,甘蓝花,洋花菜,球花甘蓝)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (95,'西蓝花(青花菜,绿花菜,绿菜花,绿花椰菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (96,'豆瓣菜(西洋菜,水田芥,凉菜,耐生菜,水芥,水蔊菜,穷人菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (97,'马齿苋(马苋,五行草,长命菜,五方草,瓜子菜,麻绳菜,马齿菜,蚂蚱菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (98,'马兰头(马兰,马莱,马郎头,红梗菜,鸡儿菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (99,'刺老芽(龙牙楤木,刺龙牙,刺老鸦)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (100,'芥菜(盖菜,芥,挂菜,橄榄菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (101,'芥兰(抬抬菜,白花芥蓝,绿叶甘蓝,芥兰,芥蓝菜,盖菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (102,'霸王花(剑花,霸王鞭,量天尺,风雨花)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (103,'荠菜(扁锅铲菜,荠荠菜,地丁菜,地菜,荠,靡草,花花菜,菱角菜,地米菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (104,'梅菜(梅菜,天堂梅菜,惠州贡菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (105,'梅干菜(梅菜干,)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (106,'萝卜苗',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (107,'萝卜叶',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (108,'苜蓿(金花菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (109,'芝麻菜(臭菜,东北臭菜,火箭生菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (110,'刺儿菜(小蓟,青青草,蓟蓟草,刺狗牙,刺蓟,枪刀菜,小恶鸡婆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (111,'芦荟(库拉索芦荟,中华芦荟,油葱,洋芦荟,翠叶芦荟,美国芦荟)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (112,'枸杞芽(枸杞头,枸芽子,甜菜头)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (113,'蒲菜(深蒲,蒲荔久,蒲笋,蒲芽,蒲白,蒲儿根,蒲儿菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (114,'茼蒿(同蒿,蓬蒿,蒿菜,桐花菜,菊花菜,塘蒿,蒿子杆,蒿子,鹅菜,义菜,蓬花菜,皇帝菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (115,'藜蒿(蒌蒿,水蒿,柳叶蒿,驴蒿,藜蒿,香艾,小艾,水艾,蒿苔)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (116,'龙蒿(狭叶青蒿狭叶,蛇蒿,椒蒿,青蒿)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (117,'槐米(白槐,槐花米,槐籽)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (118,'苦菊(狗牙生菜,九芽生菜,苦荬菜,栽培菊苣)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (119,'罗勒(九层塔,金不换,圣约瑟夫草,甜罗勒,兰香)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (120,'香椿(香椿芽,香桩头,大红椿树,椿天,香椿铃,香铃子,香椿子)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (121,'茴香菜(香丝菜,小茴香,茴香子,谷香,浑香,怀香,怀香籽)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (122,'龙虎叶(紫背天葵,天葵秋海棠,散血子)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (123,'菊花脑',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (124,'雪里蕻(叶用芥菜,雪里红,辣菜,雪菜,春不老,霜不老)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (125,'嫩南瓜(西葫芦,西葫,熊瓜,白瓜,番瓜美洲南瓜,小瓜,菜瓜,荨瓜,熏瓜,雄瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (126,'南瓜(倭瓜,番瓜,饭瓜,番南瓜,北瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (127,'黄瓜(胡瓜,刺瓜,王瓜,勤瓜,青瓜,唐瓜,吊瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (128,'苦瓜(癞葡萄,凉瓜,锦荔枝,癞瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (129,'丝瓜(胜瓜,菜瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (130,'冬瓜(白瓜,白东瓜皮,白冬瓜,白瓜皮,白瓜子,地芝,东瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (131,'小青瓜(荷兰瓜,荷兰小黄瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (132,'佛手瓜(千金瓜,隼人瓜,安南瓜,寿瓜,丰收瓜,洋瓜,合手瓜,捧瓜,土耳瓜,棚瓜,虎儿瓜,窝瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (133,'蒲瓜(葫芦,扁蒲,蒲仔,瓠子,瓠瓜,匏仔,陈蒲瓜,付瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (134,'方瓜(番瓜,番蒲,倭瓜,北瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (135,'笋瓜(北瓜,玉瓜,大洋瓜,东南瓜,搅丝瓜,印度南瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (136,'蛇瓜',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (137,'瓠瓜',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (138,'笋瓜(北瓜,玉瓜,大洋瓜,南瓜,搅丝瓜,印度南瓜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (139,'节瓜',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (140,'大番茄(蕃柿,西红柿,洋柿子)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (141,'小番茄(圣女果,小柿子,小西红柿,小番茄果,樱桃番茄)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (142,'茄子(矮瓜,白茄,吊菜子,落苏,紫茄)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (143,'黄葵(黄秋葵,秋葵,越南芝麻,羊角豆,糊麻,补肾菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (144,'朝天椒(小辣椒,望天椒,望天猴,指天椒)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (145,'小米辣(小辣椒,小海椒)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (146,'青辣椒(二荆条,二金条)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (147,'灯笼椒(太空椒,柿子椒,彩椒,大椒,甜椒,菜椒)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (148,'螺丝椒',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (149,'羊角椒',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (150,'土豆(洋芋,荷兰薯,地蛋,薯仔,番仔薯,山药蛋,洋山芋,洋芋头,香山芋,洋番芋,山洋芋,阳芋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (151,'红薯(番薯,甘储,甘薯,朱薯,金薯,番茹,红山药,玉枕薯,山芋,地瓜,甜薯,红苕,白薯,阿鹅,萌番薯)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (152,'紫薯(黑薯,紫心甘薯,苕薯,紫肉甘薯)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (153,'山药(薯蓣,怀山药,淮山药,土薯,山薯,玉延,山芋,野薯,白山药)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (154,'芋头(水芋,芋岌,毛艿,毛芋,青皮叶,接骨草,独皮叶)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (155,'白萝卜(土人参,菜菔,菜头)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (156,'胡萝卜(金笋,胡芦菔,红芦菔,丁香萝卜,红萝卜,甘荀)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (157,'红萝卜(大红萝卜,东北红萝卜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (158,'青萝卜',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (159,'红心萝卜(心里美萝卜,冰糖萝卜,胭脂红)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (160,'芜菁(大头菜,大头芥)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (161,'春笋(竹笋,笋,竹萌,竹芽,生笋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (162,'竹笋(夏笋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (163,'冬笋',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (164,'芦笋(露笋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (165,'魔芋(蒟蒻,磨芋,蒻头,鬼芋,花梗莲,虎掌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (166,'藕(莲藕)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (167,'藕带(藕鞭,藕丝菜,银苗菜,藕心菜,藕梢,藕带,藕苗,藕簪,藕梢子,藕笋)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (168,'牛蒡(大力子,恶实,牛蒡子)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (169,'菱角(芰,水菱,风菱,乌菱,菱角,水栗,菱实,芰实)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (170,'苤蓝(球茎甘蓝,擘蓝,玉蔓菁,撇列,不留客,人头疙瘩,土苤,茄莲)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (171,'荸荠(马蹄,水栗,芍,凫茈,乌芋,菩荠,地栗,钱葱,土栗,刺龟儿)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (172,'慈菇(刀草,燕尾草,蔬卵)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (173,'红菜头(火焰菜,红根甜菜,紫菜头)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (174,'藠头(荞头,荞子)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (175,'豆角',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (176,'豆荚',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (177,'豌豆(青豆,麦豌豆,寒豆,雪豆,毕豆,麻累,荷兰豆,回鹘豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (178,'黄豆(青仁乌豆,大豆,泥豆,马料豆,秣食豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (179,'绿豆(青小豆,菉豆,植豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (180,'红豆(鸡母珠,美人豆,相思豆,红珠木,八重山珊瑚,黑头小鸡)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (181,'赤小豆(红小豆,赤豆,朱豆,红赤小豆,红赤豆,小豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (182,'黑豆(乌豆,枝仔豆,黑大豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (183,'大白芸豆(京豆,白豆,大白豆,大四季豆米)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (184,'扁豆(火镰扁豆,膨皮豆,藤豆,沿篱豆,鹊豆,皮扁豆,白扁豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (185,'蚕豆(南豆,胡豆,佛豆,罗汉豆,兰花豆,坚豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (186,'毛豆(菜用大豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (187,'猫眼豆(熊猫豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (188,'花豆(老虎豆,肾豆,圣豆,皇帝豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (189,'豇豆(角豆,姜豆,带豆,江豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (190,'刀豆(挟剑豆,野刀板藤,葛豆,刀豆角,刀板豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (191,'芸豆(菜豆,四季豆,芸豆,白芸豆,花云豆,隐元豆,龙爪豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (192,'竹豆(爬山豆,巴山豆,饭豆)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (193,'山药豆(零余子,山药籽,山药蛋,山药铃)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (194,'绿豆芽(豆芽菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (195,'黄豆芽(黄豆种子芽,黄豆芽菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (196,'豌豆尖(豌豆颠,豌豆苗,龙须苗,龙须菜,荷兰豆苗)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (197,'白蘑菇(双孢蘑菇,二孢蘑菇,蘑菇,洋蘑菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (198,'木耳(黑菜,黑木耳,云耳)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (199,'平菇(侧耳,北风菌,秀珍菇,糙皮侧耳,蚝菇,黑牡丹菇,秀珍菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (200,'香菇(花蕈,香信,椎茸,冬菰,厚菇,花菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (201,'鲍鱼菇(台湾平菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (202,'黑菇(烟色红菇,火炭菌,牛屎菇,木炭菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (203,'金针菇(冬菇,朴菇,构菌,青杠菌,毛柄金线菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (204,'杏鲍菇(刺芹侧耳,刺芹菇,雪茸)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (205,'茶树菇(柱状田头菇,杨树菇,茶薪菇,柱状环锈伞,柳松菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (206,'鸡腿菇(刺蘑菇,毛头鬼伞,毛鬼伞)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (207,'猴头菇(猴头菌,猴头蘑,刺猬菌,猬菌,猴菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (208,'蟹味菇(玉蕈,斑玉蕈,荷叶离褶伞,真姬菇,海鲜菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (209,'松乳菇(美味松乳菇,松树蘑,松菌,枞树菇,茅草菇,嘎吱蘑)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (210,'草菇(美味草菇,美味苞脚菇,兰花菇,秆菇,麻菇,中国菇,小包脚菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (211,'竹笋菌(竹笙,竹菌,竹松,竹萼,竹荪)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (212,'红菌菇(红菇,红蘑菇,大朱菇,真红菇,大红菇,红椎菌,大红菌,月子红,血红铆钉菇,肉蘑,松蘑)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (213,'银耳(白木耳,雪耳,银耳子)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (214,'金耳菌(橙黄银耳,黄金银耳,脑形银耳,黄木耳,金木耳,胶耳)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (215,'猪肚菌(大杯伞,大漏斗菌,猪肚菇,笋菇,红银盘,猪肚菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (216,'乳牛肝菌',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (217,'白牛肝菌(美味牛肝菌,牛肝菌,大腿蘑,大脚蘑,网纹牛肝菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (218,'黑牛肝菌(枣铜色牛肝菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (219,'红牛肝菌(手见青)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (220,'黄牛肝菌(老虎头)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (221,'羊肚菌(羊肚蘑,编笠菌,羊肚菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (222,'鸡油菌(鸡油蘑,鸡蛋黄菌,杏菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (223,'雪莲菌(藏灵菇,西藏雪莲,天山雪莲菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (224,'松茸菌(松茸,大花菌,松菌,松口蘑,松蕈,合菌,台菌,剥皮菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (225,'鸡枞菌(伞把菇,鸡肉丝菇,鸡肉菌,鸡脚蘑菇,蚁棕,斗鸡公,三塔菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (226,'青头菌(变绿红菇,青冈菌,绿豆菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (227,'口蘑(白蘑)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (228,'元蘑(冬蘑,元蘑,黄蘑,晚生北风菌,亚侧耳)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (229,'榛蘑(蜜蘑,栎蘑,根腐菌,蜜环菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (230,'滑子蘑(光帽鳞伞,珍珠菇,滑菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (231,'重阳菌(雁鹅菌,雁来蕈,松乳菇,松树蘑,松菌,雁来菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (232,'榆黄蘑(金顶侧耳,金顶蘑,玉皇蘑,黄金菇)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (233,'榛蘑(蜜蘑,栎蘑,根腐菌,蜜环菌)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (234,'地衣(当道,浮以,马昔,牛遗,牛舌,车轮草,癞肚皮)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (235,'虫草花(蛹虫草,北冬虫夏草,北蛹虫草,北虫草,蛹草,冬虫夏草,冬虫草)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (236,'洋葱(球葱,圆葱,玉葱,葱头,荷兰葱,皮牙子)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (237,'大葱(青葱,事菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (238,'小葱(香葱,绵葱,火葱,四季葱,细米葱)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (239,'韭菜(韭,山韭,长生韭,丰本,扁菜,懒人菜,草钟乳,起阳草,韭芽,壮阳草,扁菜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (240,'韭黄',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (241,'大蒜(蒜,蒜头,胡蒜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (242,'独蒜(独头蒜,独瓣蒜)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (243,'青蒜(蒜苗)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (244,'蒜薹(蒜苔,蒜毫)',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (245,'糯米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (246,'黑米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (247,'小米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (248,'紫米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (249,'薏米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (250,'西米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (251,'黄米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (252,'红曲米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (253,'红米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (254,'糙米',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (255,'芝麻',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (256,'麦芽',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (257,'谷芽',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (258,'青稞',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (259,'鸭血糯',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (260,'荞麦',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (261,'燕麦',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (262,'大麦',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (263,'苦荞麦粉',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (264,'高筋面粉',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (265,'低筋面粉',NULL,0.0,0.0);
INSERT INTO `food_material` VALUES (266,'蒜薹(蒜苔,蒜毫)',NULL,0.0,0.0);

--
-- Table structure for table `food_material_category`
--

DROP TABLE IF EXISTS `food_material_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_material_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '食材分类表主键',
  `food_category_name` varchar(255) NOT NULL COMMENT '分类名',
  `food_category_description` text NOT NULL COMMENT '分类描述',
  `fid` int(11) DEFAULT NULL COMMENT '上级分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='食材分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_material_category`
--

INSERT INTO `food_material_category` VALUES (1,'动物性食物','动物性食品是动物来源的食物,包括畜禽肉、蛋类、水产品、奶及其制品等,主要为人体提供蛋白质、脂肪、矿物质、维生素A和B族维生素.不同类型的动物类食物之间的营养价值相差较大,只是在给人体提供蛋白质方面十分接近.',NULL);
INSERT INTO `food_material_category` VALUES (2,'植物性食物','植物性食品是指以植物的种子、果实或组织部分为原料,直接或加工以后为人类提供能量或物质来源的食品.主要有谷物、薯类、豆类及其制品、水果蔬菜制品、茶叶等.',NULL);
INSERT INTO `food_material_category` VALUES (3,'粮油调味','粮油和调味品.',NULL);
INSERT INTO `food_material_category` VALUES (4,'家畜','被驯化用于食用的哺乳类动物.',1);
INSERT INTO `food_material_category` VALUES (5,'奶类及其乳制品','动物乳类制品.',1);
INSERT INTO `food_material_category` VALUES (6,'家禽','被驯化用于食用鸟类动物.',1);
INSERT INTO `food_material_category` VALUES (7,'蛋类','家禽的蛋.',1);
INSERT INTO `food_material_category` VALUES (8,'水产','包含新鲜的淡水水产和新鲜的海水水产以及冷冻水产.',1);
INSERT INTO `food_material_category` VALUES (9,'肉制品','包含各种肉制品.',1);
INSERT INTO `food_material_category` VALUES (10,'鱼制品','包含各种鱼制品.',1);
INSERT INTO `food_material_category` VALUES (11,'蔬菜','蔬菜是指可以做菜、烹饪成为食品的一类植物或菌类,蔬菜是人们日常饮食中必不可少的食物之一.蔬菜可提供人体所必需的多种维生素和矿物质等营养物质.\r\n据国际物质粮农组织1990年统计,人体必需的维生素C的90%、维生素A的60%来自蔬菜.此外,蔬菜中还有多种多样的植物化学物质,是人们公认的对健康有效的成分,目前果蔬中的营养素可以有效预防慢性、退行性疾病的多种物质，正在被人们研究发现.',2);
INSERT INTO `food_material_category` VALUES (12,'豆制品','各种豆制品.',2);
INSERT INTO `food_material_category` VALUES (13,'谷物','\"谷物\"涵盖的范围较广,包括大米、小麦、小米、大豆等及其它杂粮.谷类包括大米、小麦、小米、大豆等,主要是植物种子和果实.是许多亚洲人民的传统主食.',2);
INSERT INTO `food_material_category` VALUES (14,'粮油','粮油是对谷类、豆类等粮食和油料及其加工成品和半成品的统称,是人类主要食物的统称.\r\n所谓民以食为天,粮食是我们人类赖以生存的必需品,是关系国计民生的特殊商品.\r\n对于粮食作物和粮油认识已是众所周知的事情.粮食作物的种子、果实以及块根、块茎及其加工产品统称为粮食.粮食按是否经过加工分为原粮、成品粮.',3);
INSERT INTO `food_material_category` VALUES (15,'调味品','调味品(flavouring,condiment,seasoning),是指能增加菜肴的色、香、味,促进食欲,有益于人体健康的辅助食品.它的主要功能是增进菜品质量,满足消费者的感官需要,从而刺激食欲,增进人体健康.从广义上讲,调味品包括咸味剂、酸味剂、甜味剂、鲜味剂和辛香剂等,像食盐、酱油、醋、味精、糖（另述）、八角、茴香、花椒、芥末等都属此类.',3);
INSERT INTO `food_material_category` VALUES (16,'猪肉(豚肉)','家畜类第一大分支,性寒,中国普遍主食的肉类,多食易肥胖,属于红肉.',4);
INSERT INTO `food_material_category` VALUES (17,'牛肉','家畜类第二大分支,性温,多食不易肥胖,属于红肉.',4);
INSERT INTO `food_material_category` VALUES (18,'羊肉','家畜类第三大分支,性温,它能御风寒,多食易上火,属于红肉.',4);
INSERT INTO `food_material_category` VALUES (19,'兔肉','家畜类第四大分支,性寒,蛋白质含量高达70%,且脂肪和胆固醇含量却低于所有肉类,故对它有\"荤中之素\"的说法,属于红肉.',4);
INSERT INTO `food_material_category` VALUES (20,'其他家畜','其他家禽聚集地.',4);
INSERT INTO `food_material_category` VALUES (21,'鲜牛奶','也称巴氏杀菌奶,是以鲜牛乳为原料,巴氏杀菌鲜牛奶是经过85℃低温加热处理的生鲜牛奶.',5);
INSERT INTO `food_material_category` VALUES (22,'纯牛奶','经瞬时高温灭菌处理的超高温灭菌乳,这种奶能在常温下保存而超高温灭菌纯牛奶灭菌的瞬时温度至少132℃,这种灭菌方法能杀灭牛奶中的所有微生物.',5);
INSERT INTO `food_material_category` VALUES (23,'纯羊奶','经瞬时高温灭菌处理的超高温灭菌乳,这种奶能在常温下保存而超高温灭菌纯羊奶灭菌的瞬时温度至少132℃,这种灭菌方法能杀灭羊奶中的所有微生物.',5);
INSERT INTO `food_material_category` VALUES (24,'低温酸奶','在生牛乳状态时经过一道灭菌处理度,发酵后不再进行灭菌处理,乳酸菌可以存活其中.',5);
INSERT INTO `food_material_category` VALUES (25,'常温酸奶','进行\"巴氏灭菌热处理\",该处理方式会杀灭大部分细菌.',5);
INSERT INTO `food_material_category` VALUES (26,'进口奶','国外进口的奶',5);
INSERT INTO `food_material_category` VALUES (27,'乳酸菌饮料','以乳或乳制品为原料,经乳酸菌发酵制得的乳液中加入水,以及食糖和（或）甜味剂、酸味剂、果汁、茶、咖啡、植物提取液等的一种或几种调制而成的饮料.根据其是否经过杀菌处理而区分为杀菌（非活菌）型和未杀菌（活菌）型.',5);
INSERT INTO `food_material_category` VALUES (28,'奶油','奶油(Cream)是指乳经离心分离后得到稀奶油,经成熟、搅拌、压炼而制成的乳制品.奶油是以乳脂肪为主要成分,营养丰富,可直接食用或作为其他食品如冰淇淋等的原料.',5);
INSERT INTO `food_material_category` VALUES (29,'奶酪','酪(cheese),又名干酪,是一种发酵的牛奶制品,其性质与常见的酸牛奶有相似之处,都是通过发酵过程来制作的,也都含有可以保健的乳酸菌,但是奶酪的浓度比酸奶更高,近似固体食物,营养价值也因此更加丰富.\r\n每公斤奶酪制品都是由10公斤的牛奶浓缩而成,含有丰富的蛋白质、钙、脂肪、磷和维生素等营养成分,是纯天然的食品.就工艺而言,奶酪是发酵的牛奶,就营养而言,奶酪是浓缩的牛奶.',5);
INSERT INTO `food_material_category` VALUES (30,'黄油','黄油(Butter)是用牛奶加工出来的一种固态油脂,是把新鲜牛奶加以搅拌之后上层的浓稠状物体滤去部分水分之后的产物.主要用作调味品,营养丰富但含脂量很高,所以不要过分食用.\r\n公元前5世纪,匈奴人就已经因为以牧业为主,奶制品各种制作技术成熟并传播国内外.外国人称为黄油,就是中国人称为奶油的奶中炼制食用油品.',5);
INSERT INTO `food_material_category` VALUES (31,'其他乳制品','其他乳制品聚集地.',5);
INSERT INTO `food_material_category` VALUES (32,'鸡','鸡是一种家禽,家鸡源出于野生的原鸡,其驯化历史至少约4000年,但直到1800年前后鸡肉和鸡蛋才成为大量生产的商品.鸡的种类有火鸡、乌鸡、野鸡等.而且鸡也是12生肖中的一属.\r\n',6);
INSERT INTO `food_material_category` VALUES (33,'鸭','鸭是雁形目鸭科(Anatidae)鸭亚科(Anatinae)水禽的统称,或称真鸭.鸭的体型相对较小,颈短,一些属的嘴要大些.腿位于身体后方(如同天鹅一样),因而步态蹒跚.大多数真鸭(包括由于个体大小和体形原因而被不正确地称为雁的几种鸟)与天鹅、雁不同,具有下列特征:雄鸟每年换羽两次,雌鸟每窝产卵数亦较多,卵壳光滑;腿上覆盖著相搭的鳞片;叫声则显示出某种程度的性别差异.',6);
INSERT INTO `food_material_category` VALUES (34,'鹅','鹅是食草禽,全身都是宝,羽毛是富贵华丽的服装,鹅肝是高等餐桌的美味,鹅肉营养丰富、氨基酸完全、脂肪是单一不饱和脂肪酸,价值敢与羊肉相媲美,是高档餐馆的必备.\r\n鹅作为一种常见的家禽,其生活习性比较特殊,例如,具有喜水性、警觉性、耐寒性、生活规律性等.鹅抗病能力强,饲养污染小,作为绿色食物,越来越受到人们的喜爱.',6);
INSERT INTO `food_material_category` VALUES (35,'鸽子','鸽,一种十分常见的鸟,世界各地广泛饲养,鸽是鸽形目鸠鸽科数百种鸟类的统称.我们平常所说的鸽子只是鸽属中的一种,而且是家鸽,家鸽中最常见的是信鸽,主要用于通讯和竞翔.鸽子和人类伴居已经有上千年的历史了,考古学家发现的第一幅鸽子图像,来自于公元前3000年的美索不达米亚,也就是伊拉克.',6);
INSERT INTO `food_material_category` VALUES (36,'鹌鹑','鹌鹑属(学名：Coturnix):体型较小而滚圆,羽色多较暗淡,通常雌雄相差不大.体小褐色带明显的草黄色矛状条纹及不规则斑纹,雄雌两性上体均具红褐色及黑色横纹.雄鸟颏深褐,喉中线向两侧上弯至耳羽,紧贴皮黄色项圈.皮黄色眉纹与褐色头顶及贯眼纹成明显对照.雌鸟亦有相似图纹但对照不甚明显.\r\n常成对而非成群活动.经常活动在生长着茂密的野草或矮树丛的平原、荒地、溪边及山坡丘陵一带,有时也到耕地附近活动.主要吃杂草种子、豆类、谷物及浆果、嫩叶、嫩芽等,夏天吃大量的昆虫及幼虫,以及小型无脊椎动物等.分布于欧洲、非洲、亚洲和澳洲等.',6);
INSERT INTO `food_material_category` VALUES (37,'其他家禽','其他家禽聚集地.',6);
INSERT INTO `food_material_category` VALUES (38,'鸡蛋','鸡蛋,又名鸡卵、鸡子，是母鸡所产的卵.其外有一层硬壳,内则有气室、卵白及卵黄部分.富含胆固醇,营养丰富.一个鸡蛋重约50克,含蛋白质7-8克,脂肪5-6克.鸡蛋蛋白质的氨基酸比例很适合人体生理需要、易为机体吸收,利用率高达98%以上,营养价值很高,是人类常食用的食物之一.含有很高的蛋白质.',7);
INSERT INTO `food_material_category` VALUES (39,'鸭蛋','鸭蛋,又名鸭子、鸭卵、太平、鸭春、青皮等,为鸭科动物家鸭的卵,受精卵可孵化成小鸭.主要含蛋白质、脂肪、钙、磷、铁、钾、钠、氯等营养成分.',7);
INSERT INTO `food_material_category` VALUES (40,'鹅蛋','鹅蛋,是家禽鹅生下的卵.鹅蛋成椭圆形,个体很大,味道有些油,新鲜的鹅蛋必须烹饪后食用.鹅蛋中含有丰富的营养成分,如蛋白质、脂肪、矿物质和维生素等.\r\n因为鹅蛋有一种叫卵磷脂的物质,能帮助消化,还富含蛋白质.此外,鹅蛋有一种碱性物质,对内脏有损坏.',7);
INSERT INTO `food_material_category` VALUES (41,'鸽子蛋','鸽子蛋,是家禽鸽子生下的卵,鸽子蛋的口感比较细腻,营养价值相对来说也比较高.',7);
INSERT INTO `food_material_category` VALUES (42,'鹌鹑蛋','鹌鹑蛋又名鹑鸟蛋、鹌鹑卵.鹌鹑蛋被认为是\"动物中的人参\".宜常食为滋补食疗品.鹌鹑蛋在营养上有独特之处,故有\"卵中佳品\"之称.\r\n近圆形,个体小,一般有10g左右,表面有棕褐色斑点.鹌鹑蛋的营养价值不亚于鸡蛋,有较好护肤、美肤作用.',7);
INSERT INTO `food_material_category` VALUES (43,'其他蛋','其他蛋聚集地.',7);
INSERT INTO `food_material_category` VALUES (44,'鲜活水产','水产类第一大分支,包含淡水鱼和海水鱼以及虾蟹贝蛙.',8);
INSERT INTO `food_material_category` VALUES (45,'淡水鱼','广义的说,系指能生活在盐度为千分之三的淡水中的鱼类就可称为淡水鱼.狭义的说,系指在其生活史中部分阶段如只有「幼鱼期」或「成鱼期」,或是终其一生都必须在淡水域中渡过的鱼类.世界上已知鱼类约有26000多种,淡水鱼约有8600余种.我国现有鱼类近3千种,其中淡水鱼有1000余种.\r\n世界上已知鱼类约有26000多种,是脊椎动物中种类最多的一大类,约占脊椎动物总数的48.1%.它们绝大多数生活在海洋里,淡水鱼约有8600余种.我国现有鱼类近3千种,其中淡水鱼有1000余种.',44);
INSERT INTO `food_material_category` VALUES (46,'海水鱼','海水鱼主要是指产自热带地区的海鱼,它们色彩特别艳丽,形状奇特,是观赏鱼产业未来的发展方向.人工饲养需要一定方法和技巧.',44);
INSERT INTO `food_material_category` VALUES (47,'鱿鱼','鱿鱼,也称柔鱼、枪乌贼,是软体动物门头足纲鞘亚纲十腕总目管鱿目开眼亚目的动物.体圆锥形,体色苍白,有淡褐色斑,头大,前方生有触足10条,尾端的肉鳍呈三角形,常成群游弋于深约20米的海洋中.',44);
INSERT INTO `food_material_category` VALUES (48,'墨鱼','墨鱼是温带和亚热带、热带海域的软体动物,当遇到敌人时会喷射墨汁逃生,趁浑浊污水而伺机离开.它的皮肤中有色素小囊,会随其情绪变化而改变颜色和大小.春末交配,并把受精卵产在木片或海上待孵化成小墨鱼.分布于中国、韩国、日本、新加坡、中国台湾及中国香港地区.',44);
INSERT INTO `food_material_category` VALUES (49,'章鱼','章鱼(Octopus):为章鱼科26属252种海洋软体动物的通称.为头足纲最大科,可分为深海多足蛸亚科(Bathypolypodinae)、爱尔斗蛸亚科(Eledoninae)、谷蛸亚科(Graneledoninae)和蛸亚科(Octopodinae).体卵形或卵圆形,肌肉强健,外套腔开口窄,体表一般不具水孔.腕吸盘1列或2列.雄性左侧或右侧第3腕茎化,腕腹缘具精沟,末端具勺状舌叶;茎化腕不能自断.漏斗外套锁退化.具1对退化针状内壳或无内壳.若具齿舌,齿舌侧齿一般单尖.胃和盲肠位于消化腺后部.\r\n该科是重要的商业性头足类,中国南部沿海的真蛸(普通章鱼)和北部沿海的短蛸均有一定产量.蛸的干制品称\"八蛸干\"或\"章鱼干\",除食用外,在医药上尚有补血益气、收敛生肌的作用.\r\n为温带性软体动物,生活在水下,适应水温不能低于7℃,海水比重1.021最为适宜,低盐度的环境会死亡.能摄食大型动物性浮游生物而成长.广泛分布于世界各大洋的热带及温带海域.',44);
INSERT INTO `food_material_category` VALUES (50,'虾','虾(Shrimp),是一种生活在水中的节肢动物,属节肢动物甲壳类,种类很多,包括南极红虾、青虾、河虾、草虾、对虾、明虾、龙虾等.虾具有很高的食疗营养价值,可以有蒸、炸等做法,并可以用做于中药材.',44);
INSERT INTO `food_material_category` VALUES (51,'虾仁','虾仁,一种食品,选用活虾为原料,用清水洗净虾体,去掉虾头、虾尾和虾壳.剥壳后的纯虾肉即为虾仁.\r\n虾仁菜肴因为清淡爽口,易于消化,老幼皆宜,而深受食客欢迎.',44);
INSERT INTO `food_material_category` VALUES (52,'蟹','蟹(学名：crab),是十足目短尾次目的甲壳动物,尤指短尾族的种类(真蟹).亦包括其他一些类型,如歪尾族的种类约有4700种.其分布见于所有海洋、河流及陆地.蟹的尾部与其他十足目（如虾、龙虾、螯虾）不同,卷曲于胸部下方,背甲通常宽阔.第一对胸足特化为螯足.通常以步行或爬行的方式移动.普通滨蟹的横行步态为人们所熟悉,亦为多数蟹类的特征.梭子蟹科的种类及其他一些类型,用扁平桨状的附肢游泳,动作灵巧,大钳子很有力.我国蟹的资源十分丰富,其中以长江下游的太湖大闸蟹、高邮湖大闸蟹、阳澄湖大闸蟹出产的大闸蟹为上品.\r\n蟹有很多种类,大部分蟹类可以食用.大部分吃得最多的都来源于大海或者淡水湖泊区域.',44);
INSERT INTO `food_material_category` VALUES (53,'蛙','任何无尾目(Anura)两生类.在严格的意义上仅指蛙科(Ranidae,即赤蛙科)动物,但蛙一词常泛指皮肤光滑、善跳的无尾目动物,以区别体肥、皮肤多疣、齐足跳的种类(称为蟾蜍).',44);
INSERT INTO `food_material_category` VALUES (54,'贝','贝类,即软体动物中的一类.是三胚层、两侧对称,具有真体腔的动物.软体动物的真体腔是由裂腔法形成,也就是中胚层所形成的体腔.但软体动物的真体腔不发达,仅存在于围心腔及生殖腺腔中.软体动物在形态上变化很大,但在结构上都可以分为头、足、内脏囊及外套膜4部分.头位于身体的前端,足位于头后、身体腹面,是由体壁伸出的一个多肌肉质的运动器官,内脏囊位于身体背面,是由柔软的体壁包围着的内脏器官,外套膜是由身体背部的体壁延伸下垂形成的一个或一对膜,外套膜与内脏囊之间的空腔即为外套腔.由外套膜向体表分泌碳酸钙,形成一个或两个外壳包围整个身体,少数种类壳被体壁包围或壳完全消失.这些基本结构在不同的纲中有很大的变化与区别.软体动物具有完整的消化道,出现了呼吸与循环系统,也出现了比原肾更进化的后肾(metanephridium).软体动物种类繁多,分布广泛.现存的有11万种以上,还有35000化石种,是动物界中仅次于节肢动物的第二大门类.特别是一些软体动物利用\"肺\"进行呼吸,身体具有调节水分的能力,使软体动物与节肢动物构成了仅有的适合于地面上生活的陆生无脊椎动物.',44);
INSERT INTO `food_material_category` VALUES (55,'生蚝','牡蛎(ostrea gigas tnunb)俗称海蛎子、蚝等,隶属软体动物门,双壳纲,珍珠贝目,是世界上第一大养殖贝类,是人类可利用的重要海洋生物资源之一,为全球性分布种类.牡蛎不仅肉鲜味美、营养丰富,而且具有独特的保健功能和药用价值,是一种营养价值很高的海产珍品.牡蛎的含锌量居人类食物之首.古今中外均认为牡蛎有治虚弱、解丹毒、降血压、滋阴壮阳的功能.\r\n牡蛎作为一种优质的海产养殖贝类,不仅具有肉味鲜美的食用价值,而且其肉与壳均可入药,具有较高的药用价值.',54);
INSERT INTO `food_material_category` VALUES (56,'鲍鱼','鲍鱼是名贵的\"海珍品\"之一,味道鲜美,营养丰富,被誉为海洋\"软黄金\".鲍鱼是名贵的海洋食用贝类,被誉为\"餐桌黄金\",海珍之冠”,其肉质细嫩、营养丰富.\r\n鲜品可食部分蛋白质24%、脂肪0.44%;干品含蛋白质40%、糖元33.7%、脂肪0.9%以及多种维生素和微量元素,是一种对人体非常有利的高蛋白、低脂肪食物.鲍鱼因富含谷氨酸,味道非常鲜美.\r\n鲍鱼(Abalone),其名为鱼,实则非鱼,种属原始海洋贝类,单壳软体动物.由于其形状恰似人的耳朵,所以也叫它\"海耳\"(Sea-ear).鲍鱼通常生长在水温较低的海底,足迹遍及太平洋、大西洋和印度洋,公认最佳产地为日本北部和墨西哥,我国东北部也是传统产区.全世界已命名的216种鲍鱼中,分布在我国沿海的鲍鱼有7种,其中又以北部渤海湾出产的皱纹盘鲍和东南沿海的杂色鲍最为多见.',54);
INSERT INTO `food_material_category` VALUES (57,'螺类','螺类是软体动物腹足类的通称.主要形态特征是身体分头、足、内脏囊三部分.螺包括一些贝类,内脏囊在发育过程中经过旋转成为左右不对称,并缩在一个螺旋形的贝壳内,又称单壳类或螺类.',54);
INSERT INTO `food_material_category` VALUES (58,'蛏/蛤','蛏(chēng)子 razor clam为海产贝类.软体动物.介壳两扇,形状狭而长,外面蛋黄色,里面白色,生活在近岸的海水里,也可人工养殖,肉味鲜美.有缢蛏、竹蛏等种类.chēng,在闽南语里读音类似\"摊\",在瓯语里读音类似\"青\".蛏子常见於潮间带的泥沙中(尤其在温带).壳窄长,剃刀状,长可达20公分(8吋).斧足大而活跃,能在洞穴中迅速上下移动,受惊时很快缩入洞内.以短水管摄食海水中食物颗粒.有的种可藉水管喷水而作短距离游泳.北美太平洋沿岸的荚蛏(Siliqua patula)不栖息在固定的洞穴中,而生活在不断受海浪冲刷的海滩的流沙中.\r\n蛤,一种对于可食用双壳贝类的泛称,也被叫做蛤蛎、蛤、文蛤、西施舌、蚌、花甲.已知12 000种,其中约500种栖于淡水,其余的为海栖.通常栖于砂质或泥质的水底.',54);
INSERT INTO `food_material_category` VALUES (59,'扇贝/贻贝','扇贝属于软体动物门,扇贝科,是我国重要的贝类养殖品种.扇贝可食部分的主要营养成分为蛋白质,与鱼类、虾类相似,是一种集食、药、滋补为一体的重要水产食物.扇贝广泛分布于世界各海域.扇贝柱的干制品称为\"干贝\",为名贵海珍品.\r\n贻贝(学名：Mytilus edulis)亦称海虹,煮熟后加工成干品——淡菜,是一种双壳类软体动物,壳黑褐色,生活在海滨岩石上.分布于中国黄海、渤海及东海沿岸.贻贝壳呈楔形,前端尖细,后端宽广而圆.一般壳长6～8厘米,壳长小于壳高的2倍.壳薄.壳顶近壳的最前端.两壳相等,左右对称,壳面紫黑色,具有光泽,生长纹细密而明显,自顶部起呈环形生长.',54);
INSERT INTO `food_material_category` VALUES (60,'其他贝类','其他贝聚集地.',54);
INSERT INTO `food_material_category` VALUES (61,'其他鲜活水产','其他鲜活水产聚集地',44);
INSERT INTO `food_material_category` VALUES (62,'冷冻水产','水产类第二大分支,冻淡水鱼和冻海水鱼以及冻虾冻蟹冻贝冻蛙.',8);
INSERT INTO `food_material_category` VALUES (63,'冻淡水鱼','冷冻的淡水鱼.',62);
INSERT INTO `food_material_category` VALUES (64,'冻海水鱼','冷冻的海水鱼.',62);
INSERT INTO `food_material_category` VALUES (65,'冻鱿鱼','冷冻的鱿鱼.',62);
INSERT INTO `food_material_category` VALUES (66,'冻墨鱼','冷冻的墨鱼.',62);
INSERT INTO `food_material_category` VALUES (67,'冻章鱼','冷冻的章鱼.',62);
INSERT INTO `food_material_category` VALUES (68,'冻虾','冷冻的虾.',62);
INSERT INTO `food_material_category` VALUES (69,'冻虾仁','冷冻的虾仁.',62);
INSERT INTO `food_material_category` VALUES (70,'冻蟹','冷冻的蟹.',62);
INSERT INTO `food_material_category` VALUES (71,'冻贝','冷冻的贝.',62);
INSERT INTO `food_material_category` VALUES (72,'其他冷冻水产','其他冷冻水产聚集地.',62);
INSERT INTO `food_material_category` VALUES (73,'叶菜','各种叶菜.',11);
INSERT INTO `food_material_category` VALUES (74,'瓜','各种瓜.',11);
INSERT INTO `food_material_category` VALUES (75,'茄果','各种茄果.',11);
INSERT INTO `food_material_category` VALUES (76,'根茎','各种根茎.',11);
INSERT INTO `food_material_category` VALUES (77,'豆菽','各种豆菽.',11);
INSERT INTO `food_material_category` VALUES (78,'菌类','各种菌类.',11);
INSERT INTO `food_material_category` VALUES (79,'葱蒜','各种葱蒜.',11);
INSERT INTO `food_material_category` VALUES (80,'其他蔬菜','其他蔬菜聚集地.',11);
INSERT INTO `food_material_category` VALUES (81,'稻谷','各种稻谷.',13);
INSERT INTO `food_material_category` VALUES (82,'麦类','各种麦类.',13);
INSERT INTO `food_material_category` VALUES (83,'其他谷物','其他谷物聚集地.',13);
INSERT INTO `food_material_category` VALUES (84,'米','各种米.',14);
INSERT INTO `food_material_category` VALUES (85,'面条','各种面条.',14);
INSERT INTO `food_material_category` VALUES (86,'米线','各种米线.',14);
INSERT INTO `food_material_category` VALUES (87,'面粉','各种面粉.',14);
INSERT INTO `food_material_category` VALUES (88,'食用油','各种食用油.',14);
INSERT INTO `food_material_category` VALUES (89,'其他粮油','其他粮油聚集地.',14);
INSERT INTO `food_material_category` VALUES (90,'调味料','各种调味料.',15);
INSERT INTO `food_material_category` VALUES (91,'调味酱','各种调味酱.',15);
INSERT INTO `food_material_category` VALUES (92,'发酵粉','各种发酵粉.',15);
INSERT INTO `food_material_category` VALUES (93,'汤料/底料','各种汤料/底料.',15);
INSERT INTO `food_material_category` VALUES (94,'其他调味','其他调味聚集地.',15);

--
-- Table structure for table `food_material_model`
--

DROP TABLE IF EXISTS `food_material_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_material_model` (
  `mid` int(11) NOT NULL AUTO_INCREMENT COMMENT '食材表主键',
  `food_name` varchar(255) NOT NULL COMMENT '食材名称',
  `fid` int(11) DEFAULT NULL COMMENT '上级id',
  `food_description` text,
  `process_awarded_marks` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '食材处理过程分值,加分越多处理越麻烦,加分越少处理越简单',
  `health_awarded_marks` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '食材的清淡程度分值,加分越多越重口味,加分越少越清淡',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='食材模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_material_model`
--

INSERT INTO `food_material_model` VALUES (1,'猪',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (2,'猪头肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (3,'核桃肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (4,'猪脑花',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (5,'猪脸肉(猪脸颊肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (6,'猪鼻',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (7,'猪耳',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (8,'猪嘴',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (9,'猪舌',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (10,'梅花肉(猪梅肉,眉毛肉,风头皮肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (11,'槽头肉(朝头肉,猪颊肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (12,'猪前腿肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (13,'猪前肘肉(猪前大腿肉,猪大腱子肉,猪前蹄膀)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (14,'猪小腱子肉(猪前小腿肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (15,'前猪蹄(前脚爪,前猪脚,猪手)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (16,'猪里脊肉(猪内里脊肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (17,'猪大里脊肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (18,'猪小里脊肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (19,'宝肋肉(猪外里脊肉,正保肋)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (20,'五花肉(肋条肉,三层肉,二刀保肋)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (21,'奶脯肉(下五花,拖泥肉,软窝)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (22,'猪蛋蛋(公猪睾丸)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (23,'猪鞭(公猪生殖器)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (24,'猪后臀尖(坐墩肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (25,'猪尾巴',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (26,'猪二刀后臀尖(二刀肉,坐臀肉,坐板肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (27,'猪后腿肉(弹子肉,拳头肉,元宝肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (28,'猪大腱子肉(猪后大腿肉,猪后肘肉,后蹄膀)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (29,'猪小腱子肉(猪后小腿肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (30,'后猪蹄(后脚爪,后猪脚)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (31,'猪血',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (32,'猪黄喉(猪主动脉弓,猪心管)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (33,'猪心',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (34,'猪肺',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (35,'猪肝',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (36,'猪肚(猪胃)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (37,'猪腰子(猪肾)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (38,'猪横脷(猪脾脏)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (39,'猪小肚(猪膀胱,猪尿脬,猪脬子)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (40,'猪小肠',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (41,'猪粉肠(猪小肠前段)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (42,'猪苦肠(猪小肠后段)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (43,'猪肥肠(猪大肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (44,'猪生肠(母猪子宫,猪花肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (45,'猪扇骨(猪肩胛骨)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (46,'猪大排(猪通脊)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (47,'猪肋排(猪排骨,猪小排,猪仔排)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (48,'猪脊骨(猪脊椎,猪龙骨)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (49,'猪大骨(猪筒骨,猪腿骨)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (50,'牛',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (51,'牛头肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (52,'牛脑花',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (53,'牛面颊肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (54,'牛鼻',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (55,'牛耳',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (56,'牛嘴',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (57,'牛舌',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (58,'牛前腱(牛金钱腱)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (59,'牛前蹄(牛前爪)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (60,'牛脖肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (61,'牛颈部肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (62,'牛前胸肉(肥牛)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (63,'牛上脑(牛梅花肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (64,'牛肩肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (65,'牛辣椒条肉(牛前柳)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (66,'牛后胸肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (67,'牛眼肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (68,'牛外脊(西冷,沙朗,肋眼)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (69,'牛里脊(牛柳,菲力)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (70,'牛肋条肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (71,'牛腹肉(牛腩肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (72,'牛蛋蛋(公牛睾丸,牛宝)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (73,'牛鞭(公牛生殖器,牛冲)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (74,'牛臀肉(尾龙扒)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (75,'牛尾',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (76,'牛大米龙(牛三岔肉,针扒)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (77,'牛小米龙(烩扒)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (78,'牛大黄瓜条(底板)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (79,'牛小黄瓜条(白板,鲤鱼管)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (80,'牛霖肉(圆霖,和尚头,膝圆,牛林)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (81,'牛后腱',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (82,'牛后蹄(牛后爪)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (83,'牛血',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (84,'牛黄喉(牛主动脉弓,牛心管)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (85,'牛心',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (86,'牛肺',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (87,'牛肝',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (88,'牛毛肚(牛瘤胃,牛肚板,阳扇,草肚)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (89,'牛金钱肚(牛网胃,蜂巢胃,麻肚)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (90,'牛百叶肚(牛瓣胃,牛千层肚,肚尖)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (91,'牛肚(牛皱胃,阴扇)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (92,'牛腰子(牛肾)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (93,'牛横脷(牛脾脏)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (94,'牛小肚(牛膀胱,牛尿脬,牛脬子)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (95,'牛小肠',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (96,'牛粉肠(牛小肠前段)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (97,'牛苦肠(牛小肠后段)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (98,'牛肥肠(牛大肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (99,'牛生肠(母牛子宫,牛花肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (100,'牛扇骨(牛肩胛骨)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (101,'牛大排',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (102,'牛肋排(牛排骨,牛小排,牛仔排)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (103,'牛脊骨(牛脊椎,牛龙骨,牛腔骨)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (104,'牛T骨排(牛丁骨排)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (105,'牛大骨(牛筒骨,牛腿骨)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (106,'羊',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (107,'羊头肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (108,'羊脑花',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (109,'羊面颊肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (110,'羊鼻',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (111,'羊耳',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (112,'羊嘴',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (113,'羊舌',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (114,'羊前腱(羊金钱腱)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (115,'羊前蹄(羊前爪)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (116,'羊脖肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (117,'羊颈部肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (118,'羊前胸肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (119,'羊上脑(羊梅花肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (120,'羊肩肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (121,'羊辣椒条肉(羊前柳)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (122,'羊后胸肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (123,'羊眼肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (124,'羊外脊(羊纽约克,羊沙朗,羊肋眼)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (125,'羊里脊(羊柳,羊菲力)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (126,'羊腹肋肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (127,'羊腹肉(羊腩肉)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (128,'羊蛋蛋(公羊睾丸,羊宝)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (129,'羊鞭(公羊生殖器,羊冲)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (130,'羊臀肉(尾羊扒)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (131,'羊尾',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (132,'羊大米龙(羊三岔肉,针扒)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (133,'羊小米龙(烩扒)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (134,'羊大黄瓜条(底板)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (135,'羊小黄瓜条(白板,鲤鱼管)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (136,'羊霖肉(圆霖,和尚头,膝圆,羊林)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (137,'羊后腱',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (138,'羊后蹄(羊后爪)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (139,'羊血',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (140,'羊黄喉(羊主动脉弓,羊心管)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (141,'羊心',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (142,'羊肺',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (143,'羊肝',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (144,'羊毛肚(羊瘤胃,羊肚板,阳扇,草肚)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (145,'羊金钱肚(羊网胃,蜂巢胃,麻肚)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (146,'羊百叶肚(羊瓣胃,羊千层肚,肚尖)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (147,'羊肚(羊皱胃,阴扇)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (148,'羊腰子(羊肾)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (149,'羊横脷(羊脾脏)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (150,'羊小肚(羊膀胱,羊尿脬,羊脬子)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (151,'羊小肠',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (152,'羊粉肠(羊小肠前段)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (153,'羊苦肠(羊小肠后段)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (154,'羊肥肠(羊大肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (155,'羊生肠(母羊子宫,羊花肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (156,'羊扇骨(羊肩胛骨)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (157,'羊大排',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (158,'羊肋排(羊排骨,羊小排,羊仔排)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (159,'羊脊骨(羊脊椎,羊龙骨,羊蝎子,羊腔骨)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (160,'羊T骨排(羊丁骨排)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (161,'羊大骨(羊筒骨,羊腿骨)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (162,'兔',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (163,'兔头',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (164,'兔前腿',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (165,'兔身',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (166,'兔里脊',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (167,'兔腩',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (168,'兔睾丸',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (169,'兔后腿',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (170,'兔皮',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (171,'兔血',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (172,'兔心',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (173,'兔肺',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (174,'兔肝',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (175,'兔肚(兔胃)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (176,'兔腰子(兔肾)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (177,'兔小肠',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (178,'兔粉肠(兔小肠前段)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (179,'兔肥肠(兔大肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (180,'兔架',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (181,'兔排',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (182,'鸡',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (183,'鸡血',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (184,'鸡头',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (185,'鸡脖',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (186,'鸡胸',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (187,'鸡架',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (188,'鸡肾(鸡睾丸)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (189,'鸡杂(包含:鸡心,鸡胗,鸡肝,鸡肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (190,'鸡心',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (191,'鸡胗(鸡肫,鸡郡肝,鸡胃)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (192,'鸡肝',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (193,'鸡肠',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (194,'鸡翅(包含:鸡翅根,鸡翅中,鸡翅尖)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (195,'鸡翅根',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (196,'鸡翅中',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (197,'鸡翅尖',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (198,'鸡大腿(包含:鸡小腿)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (199,'鸡小腿(琵琶腿)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (200,'鸡爪(鸡掌,凤爪,凤足)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (201,'鸭',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (202,'鸭血',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (203,'鸭头',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (204,'鸭舌',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (205,'鸭脖',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (206,'鸭胸',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (207,'鸭架',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (208,'鸭肾(鸭睾丸)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (209,'鸭杂(包含:鸭心,鸭胗,鸭肝,鸭肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (210,'鸭心',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (211,'鸭胗(鸭肫,鸭郡肝,鸭胃)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (212,'鸭肝',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (213,'鸭肠',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (214,'鸭翅(包含:鸭翅根,鸭翅中,鸭翅尖)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (215,'鸭翅根',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (216,'鸭翅中',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (217,'鸭翅尖',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (218,'鸭大腿(包含:鸭小腿)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (219,'鸭小腿',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (220,'鸭掌(鸭爪)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (221,'鹅',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (222,'鹅血',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (223,'鹅头',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (224,'鹅脖',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (225,'鹅胸',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (226,'鹅架',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (227,'鹅肾(鹅睾丸)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (228,'鹅杂(包含:鹅心,鹅胗,鹅肝,鹅肠)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (229,'鹅心',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (230,'鹅胗(鹅肫,鹅郡肝,鹅胃)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (231,'鹅肝(鹅肥肝)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (232,'鹅肠',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (233,'鹅翅(包含:鹅翅根,鹅翅中,鹅翅尖)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (234,'鹅翅根',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (235,'鹅翅中',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (236,'鹅翅尖',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (237,'鹅大腿(包含:鹅小腿)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (238,'鹅小腿',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (239,'鹅掌',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (240,'鱼头',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (241,'鱼身',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (242,'鱼肉',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (243,'鱼硬边',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (244,'鱼柳',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (245,'鱼骨',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (246,'鱼软边',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (247,'鱼腹',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (248,'鱼腩',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (249,'鱼籽(鱼蛋)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (250,'鱼鳔(鱼泡)',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (251,'鱼鳍',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (252,'鱼皮',NULL,NULL,0.0,0.0);
INSERT INTO `food_material_model` VALUES (253,'鱼尾',NULL,NULL,0.0,0.0);

--
-- Table structure for table `recipe_daqo`
--

DROP TABLE IF EXISTS `recipe_daqo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_daqo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜谱唯一主键',
  `dish_name` varchar(50) NOT NULL COMMENT '菜名',
  `meat_and_vegetable` int(1) NOT NULL COMMENT '荤素,荤为1,素为0',
  `style_of_cooking_id` int(11) NOT NULL COMMENT '菜系的外键',
  `classification_of_food_id` int(11) NOT NULL COMMENT '菜品分类外键',
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_daqo_dish_name_uindex` (`dish_name`),
  KEY `recipe_daqo_style_of_cooking_id_fk` (`style_of_cooking_id`),
  KEY `recipe_daqo_classification_of_food_id_fk` (`classification_of_food_id`),
  CONSTRAINT `recipe_daqo_classification_of_food_id_fk` FOREIGN KEY (`classification_of_food_id`) REFERENCES `classification_of_food` (`id`),
  CONSTRAINT `recipe_daqo_style_of_cooking_id_fk` FOREIGN KEY (`style_of_cooking_id`) REFERENCES `style_of_cooking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜谱大全';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_daqo`
--


--
-- Table structure for table `style_of_cooking`
--

DROP TABLE IF EXISTS `style_of_cooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `style_of_cooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜系主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜系名称',
  `description` text NOT NULL COMMENT '菜系描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜系分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style_of_cooking`
--

INSERT INTO `style_of_cooking` VALUES (1,'鲁菜','口味咸鲜为主，讲究原料质地优良，以盐提鲜，以汤壮鲜，调味讲求咸鲜纯正，突出本味。咸鲜为主火候精湛，精于制汤，善烹海味。');
INSERT INTO `style_of_cooking` VALUES (2,'川菜','口味麻辣为主，菜式多样，口味清鲜醇浓并重，以善用麻辣调味（鱼香、麻辣、辣子、陈皮、椒麻、怪味、酸辣诸味）。');
INSERT INTO `style_of_cooking` VALUES (3,'苏菜','口味清淡为主，用料严谨，注重配色，讲究造型，四季有别。烹调技艺以炖、焖、煨著称；重视调汤，保持原汁，口味平和。善用蔬菜。其中淮扬菜，讲究选料和刀工，擅长制汤；苏南菜口味偏甜，注重制酱油，善用香糟、黄酒调味。');
INSERT INTO `style_of_cooking` VALUES (4,'粤菜','口味鲜香为主，选料精细，清而不淡，鲜而不俗，嫩而不生，油而不腻。擅长小炒，要求掌握火候和油温恰到好处。还兼容许多西菜做法，讲究菜的气势、档次。');
INSERT INTO `style_of_cooking` VALUES (5,'浙菜','口味清淡为主，菜式小巧玲珑，清俊逸秀，菜品鲜美滑嫩，脆软清爽。运用香糟、黄酒调味。烹调技法丰富，尤为在烹制海鲜河鲜有其独到之处。口味注重清鲜脆嫩，保持原料的本色和真味。菜品形态讲究，精巧细腻，清秀雅丽。其中北部口味偏甜，西部口味偏辣，东南部口味偏咸。');
INSERT INTO `style_of_cooking` VALUES (6,'闽菜','口味鲜香为主，尤以“香”、“味”见长，其清鲜、和醇、荤香、不腻的风格。三大特色，一长于红糟调味，二长于制汤，三长于使用糖醋。');
INSERT INTO `style_of_cooking` VALUES (7,'湘菜','口味香辣为主，品种繁多。色泽上油重色浓，讲求实惠；香辣、香鲜、软嫩。重视原料互相搭配，滋味互相渗透。湘菜调味尤重香辣。相对而言，湘菜的煨功夫更胜一筹，几乎达到炉火纯青的地步。煨，在色泽变化上可分为红煨、白煨，在调味方面有清汤煨、浓汤煨和奶汤煨。小火慢炖，原汁原味。');
INSERT INTO `style_of_cooking` VALUES (8,'徽菜','口味鲜辣为主，擅长烧、炖、蒸，而爆、炒菜少，重油、重色，重火功。重火工是历来的，其独到之处集中体现于擅长烧、炖、熏、蒸类的功夫菜上，不同菜肴使用不同的控火技术，形成酥、嫩、香、鲜独特风味，其中最能体现徽式特色的是滑烧、清炖和生熏法。');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-23 15:29:12
