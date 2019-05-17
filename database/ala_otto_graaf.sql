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

 Date: 16/05/2019 23:35:14
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid(orders)` (`userid`),
  CONSTRAINT `userid(orders)` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

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
INSERT INTO `products` VALUES (7, 'Strand', 'Deze prachtige foto laat een strandje zien aan het water!', '-1', '16,00', 'images/sebastien-jermer-27003-unsplash.jpg', 3);
INSERT INTO `products` VALUES (8, NULL, NULL, '-1', '16,00', 'images/jordan-arnold-1513926-unsplash.jpg', 3);
INSERT INTO `products` VALUES (9, NULL, NULL, '-1', '16,00', 'images/michael-liao-1508603-unsplash.jpg', 3);
INSERT INTO `products` VALUES (10, NULL, NULL, '-1', '16,00', 'images/mark-mathew-1289706-unsplash.jpg', 3);
INSERT INTO `products` VALUES (11, NULL, NULL, '-1', '16,00', 'images/pablo-guerrero-1308486-unsplash.jpg', 3);
INSERT INTO `products` VALUES (12, NULL, NULL, '-1', '16,00', 'images/luca-micheli-455516-unsplash.jpg', 3);
INSERT INTO `products` VALUES (13, NULL, NULL, '-1', '16,00', 'images/maarten-deckers-234714-unsplash.jpg', 3);
INSERT INTO `products` VALUES (14, NULL, NULL, '-1', '16,00', 'images/oliver-ash-1279414-unsplash.jpg', 3);
INSERT INTO `products` VALUES (15, NULL, NULL, '-1', '16,00', 'images/daniel-ferrandiz-mont-1316873-unsplash.jpg', 3);
INSERT INTO `products` VALUES (16, NULL, NULL, '-1', '16,00', 'images/anton-repponen-99530-unsplash.jpg', 3);
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
