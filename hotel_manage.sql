/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : hotel_manage

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-10-19 14:00:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookings
-- ----------------------------
DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customers` int(11) DEFAULT NULL COMMENT 'id khach hang ',
  `id_rooms` int(11) DEFAULT NULL,
  `checkin` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `checkout` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'thời điểm tạo booking',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bookings
-- ----------------------------

-- ----------------------------
-- Table structure for bookings_services
-- ----------------------------
DROP TABLE IF EXISTS `bookings_services`;
CREATE TABLE `bookings_services` (
  `id` int(11) NOT NULL,
  `id_bookings` int(11) DEFAULT NULL,
  `id_services` int(11) DEFAULT NULL,
  `num_services` int(11) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bookings_services
-- ----------------------------

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmnd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for hotels
-- ----------------------------
DROP TABLE IF EXISTS `hotels`;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `description` text COMMENT 'mota khach san',
  `create_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hotels
-- ----------------------------

-- ----------------------------
-- Table structure for hotel_floor
-- ----------------------------
DROP TABLE IF EXISTS `hotel_floor`;
CREATE TABLE `hotel_floor` (
  `id` int(11) NOT NULL,
  `id_hotels` int(11) DEFAULT NULL,
  `num_floor` int(11) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hotel_floor
-- ----------------------------

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `num_room` int(11) DEFAULT NULL COMMENT 'so phong',
  `id_type_room` int(11) DEFAULT NULL COMMENT 'id cua loai phong',
  `booked_flag` int(11) DEFAULT '0' COMMENT 'phong da duoc dat hay chua. 0 = phong ranh, 1 = phong da co khach',
  `id_hotels` int(11) DEFAULT NULL,
  `id_hotel_floor` int(11) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT 'mô tả phòng',
  `status` int(11) DEFAULT '1' COMMENT 'trạng thái đóng , mở phòng, có thể:  cho thuê or đang sửa chữa vv. 1 = dang hoat dong, 0 = da off',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rooms
-- ----------------------------

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_service` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ten dich vu',
  `price` int(11) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `udpate_date` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1 con cung cap, 0 = ngung cung cap',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of services
-- ----------------------------

-- ----------------------------
-- Table structure for type_room
-- ----------------------------
DROP TABLE IF EXISTS `type_room`;
CREATE TABLE `type_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_type_room` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ten Phong',
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of type_room
-- ----------------------------
