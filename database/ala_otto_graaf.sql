/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : ala_otto_graaf

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 17/05/2019 16:47:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for catogory
-- ----------------------------
DROP TABLE IF EXISTS `catogory`;
CREATE TABLE `catogory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catogory
-- ----------------------------
BEGIN;
INSERT INTO `catogory` VALUES (1, 'nieuws');
INSERT INTO `catogory` VALUES (2, 'modellen');
INSERT INTO `catogory` VALUES (3, 'landen');
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `productid` int(10) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productid(comments)` (`productid`),
  KEY `userid(comments)` (`userid`),
  CONSTRAINT `productid(comments)` FOREIGN KEY (`productid`) REFERENCES `products` (`id`),
  CONSTRAINT `userid(comments)` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for login_actions
-- ----------------------------
DROP TABLE IF EXISTS `login_actions`;
CREATE TABLE `login_actions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` timestamp NULL DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT NULL,
  `productid` int(10) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid(order_items)` (`orderid`),
  KEY `productid(order_items)` (`productid`),
  CONSTRAINT `orderid(order_items)` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`),
  CONSTRAINT `productid(order_items)` FOREIGN KEY (`productid`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_items
-- ----------------------------
BEGIN;
INSERT INTO `order_items` VALUES (5, 2, 2, '1');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid(orders)` (`userid`),
  CONSTRAINT `userid(orders)` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (1, NULL, 1558098811, NULL);
INSERT INTO `orders` VALUES (2, NULL, 1558103740, NULL);
INSERT INTO `orders` VALUES (3, NULL, 1558103779, NULL);
INSERT INTO `orders` VALUES (4, NULL, 1558103802, NULL);
INSERT INTO `orders` VALUES (5, NULL, 1558103814, NULL);
INSERT INTO `orders` VALUES (6, NULL, 1558103824, NULL);
INSERT INTO `orders` VALUES (7, NULL, 1558103860, NULL);
INSERT INTO `orders` VALUES (8, NULL, 1558103865, NULL);
INSERT INTO `orders` VALUES (9, NULL, 1558104056, NULL);
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `catogory_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (1, 'Mountain', 'Deze prachtige foto laat de schoonheid van de natuur zien!', '-1', '16,00', 'images/jordan-arnold-1513926-unsplash.jpg', 3);
INSERT INTO `products` VALUES (2, 'Mountain night', 'Deze prachtige foto laat een berg zien in het donker met een prachtig uitzicht!', '-1', '16,00', 'images/benjamin-voros-575800-unsplash.jpg', 3);
INSERT INTO `products` VALUES (3, 'Mountain water', 'Deze prachtige foto laat een rivier zien die zo helder is dat je de reflectie van kunt zien!', '-1', '16,00', 'images/chi-liu-1552956-unsplash.jpg', 3);
INSERT INTO `products` VALUES (4, 'Mountain savanna', 'Deze prachtige foto laat de bergen zien in het midden van de savanne!', '-1', '16,00', 'images/dimitry-anikin-1461827-unsplash.jpg', 3);
INSERT INTO `products` VALUES (5, 'Island picture', 'Deze prachtige drone foto laat een eiland zien vanaf de bovenkant', '-1', '16,00', 'images/dominic-krainer-1381989-unsplash.jpg', 3);
INSERT INTO `products` VALUES (6, 'Snow', 'Deze prachtige foto laat een landschap zijn die is bedekt met sneeuw!', '-1', '16,00', 'images/erzsebet-vehofsics-1401802-unsplash.jpg', 3);
INSERT INTO `products` VALUES (7, 'Beach', 'Deze prachtige foto laat een strandje zien aan het water!', '-1', '16,00', 'images/sebastien-jermer-27003-unsplash.jpg', 3);
INSERT INTO `products` VALUES (8, 'Mountain top', 'Deze prachtige foto laat bergen zien vanaf de top van een berg!', '-1', '16,00', 'images/james-mckellar-1293717-unsplash.jpg', 3);
INSERT INTO `products` VALUES (9, 'Tree in the woods', 'Deze prachtige foto laat een mooie boom zien in het bos!', '-1', '16,00', 'images/michael-liao-1508603-unsplash.jpg', 3);
INSERT INTO `products` VALUES (10, 'Desert', 'Deze prachtige foto laat een woestijn zien op een berg!', '-1', '16,00', 'images/mark-mathew-1289706-unsplash.jpg', 3);
INSERT INTO `products` VALUES (11, 'Water', 'Deze prachtige foto is gemaakt vanaf het water en laat een berg zien in de verte', '-1', '16,00', 'images/pablo-guerrero-1308486-unsplash.jpg', 3);
INSERT INTO `products` VALUES (12, 'Desert night', 'Deze prachtige foto laat een berg in de woestijn zien net toen de zon onderging!', '-1', '16,00', 'images/luca-micheli-455516-unsplash.jpg', 3);
INSERT INTO `products` VALUES (13, 'Gebergte', 'Deze prachtige foto laat een gebergte zien met een plas water in het midden!', '-1', '16,00', 'images/maarten-deckers-234714-unsplash.jpg', 3);
INSERT INTO `products` VALUES (14, 'Waterfall', 'Deze prachtige foto laat een waterval zien bij een berg!', '-1', '16,00', 'images/oliver-ash-1279414-unsplash.jpg', 3);
INSERT INTO `products` VALUES (15, 'Mountain snow', 'Deze prachtige foto laat een berg zien die vol met sneeuw zit!', '-1', '16,00', 'images/daniel-ferrandiz-mont-1316873-unsplash.jpg', 3);
INSERT INTO `products` VALUES (16, 'Island top', 'Deze prachtige foto laat een eiland zien vanaf de bovenkant!', '-1', '16,00', 'images/manuel-boxler-1308013-unsplash.jpg', 3);
INSERT INTO `products` VALUES (17, 'Woman red shirt', 'Deze prachtige foto laat een vrouw zien die een rood shirt aan heeft!', '-1', '16,00', 'images/tamara-bellis-456952-unsplash.jpg', 2);
INSERT INTO `products` VALUES (18, 'Woman blue cardigan', 'Deze prachtige foto laat een vrouw zien die een blauw vest aan heeft!', '-1', '16,00', 'images/matheus-ferrero-334418-unsplash.jpg', 2);
INSERT INTO `products` VALUES (19, 'Male black shirt', 'Deze prachtige foto laat een man zien die een zwart shirt aan heeft!', '-1', '16,00', 'images/ivana-cajina-322968-unsplash.jpg', 2);
INSERT INTO `products` VALUES (20, 'Woman blond', 'Deze prachtige foto laat een vrouw zien met blond haar!', '-1', '16,00', 'images/ilya-pavlov-468286-unsplash.jpg', 2);
INSERT INTO `products` VALUES (21, 'Woman skeleton shirt', 'Deze prachtige foto laat een vrouw zien met een skelet shirt aan!', '-1', '16,00', 'images/ian-dooley-347962-unsplash.jpg', 2);
INSERT INTO `products` VALUES (22, 'Woman white shirt', 'Deze prachtige foto laat een vrouw zien met een wit t-shirt aan!', '-1', '16,00', 'images/averie-woodard-319832-unsplash.jpg', 2);
INSERT INTO `products` VALUES (23, 'Woman blond ', 'Deze prachtige foto laat een vrouw zien die kijkt in de camera!', '-1', '16,00', 'images/avi-richards-311141-unsplash.jpg', 2);
INSERT INTO `products` VALUES (24, 'Woman looking up', 'Deze prachtige foto laat een vrouw zien die naar boven kijkt!', '-1', '16,00', 'images/brooke-cagle-336467-unsplash.jpg', 2);
INSERT INTO `products` VALUES (25, 'Woman sport', 'Deze prachtige foto laat een vrouw zien in haar sport kleding!', '-1', '16,00', 'images/christopher-campbell-109722-unsplash.jpg', 2);
INSERT INTO `products` VALUES (26, 'Woman red hair', 'Deze prachtige foto laat een vrouw zien met rood haar!', '-1', '16,00', 'images/jordan-whitfield-525164-unsplash.jpg', 2);
INSERT INTO `products` VALUES (27, 'Woman birds', 'Deze prachtige foto laat een vrouw zien met vogels in de achtergrond!', '-1', '16,00', 'images/raymond-perez-482104-unsplash.jpg', 2);
INSERT INTO `products` VALUES (28, 'Woman looking in the camera', 'Deze prachtige foto laat een vrouw zien die met haar ogen in de camera kijkt!', '-1', '16,00', 'images/atikh-bana-116533-unsplash.jpg', 2);
INSERT INTO `products` VALUES (29, 'Woman in the forest', 'Deze prachtige foto laat een vrouw zien die in de camera kijkt op de grond in het bos!', '-1', '16,00', 'images/erik-lucatero-254008-unsplash.jpg', 2);
INSERT INTO `products` VALUES (30, 'Woman blond with piercing', 'Deze prachtige foto laat een vrouw zien met een peircing in haar neus!', '-1', '16,00', 'images/atikh-bana-90647-unsplash.jpg', 2);
INSERT INTO `products` VALUES (31, 'Woman with red lipstick', 'Deze prachtige foto laat een vrouw zien die in de camera kijkt met rode lipstick!', '-1', '16,00', 'images/HvE-20170714-0434-3-863x521.jpg', 2);
INSERT INTO `products` VALUES (32, 'Woman with dark hair', 'Deze prachtige foto laat een vrouw zien met donker haar!', '-1', '16,00', 'images/62b498665945479a576408b40ed8be6b.jpg', 2);
INSERT INTO `products` VALUES (33, NULL, NULL, '-1', '16,00', 'images/roman-kraft-260082-unsplash.jpg', 1);
INSERT INTO `products` VALUES (34, NULL, NULL, '-1', '16,00', 'images/absolutvision-365898-unsplash.jpg', 1);
INSERT INTO `products` VALUES (35, NULL, NULL, '-1', '16,00', 'images/matthew-guay-148463-unsplash.jpg', 1);
INSERT INTO `products` VALUES (36, NULL, NULL, '-1', '16,00', 'images/claudio-schwarz-purzlbaum-1542850-unsplash.jpg', 1);
INSERT INTO `products` VALUES (37, NULL, NULL, '-1', '16,00', 'images/randy-colas-1446907-unsplash.jpg', 1);
INSERT INTO `products` VALUES (38, NULL, NULL, '-1', '16,00', 'images/ev-1566905-unsplash.jpg', 1);
INSERT INTO `products` VALUES (39, NULL, NULL, '-1', '16,00', 'images/austin-distel-1590561-unsplash.jpg', 1);
INSERT INTO `products` VALUES (40, NULL, NULL, '-1', '16,00', 'images/austin-distel-1590560-unsplash.jpg', 1);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
