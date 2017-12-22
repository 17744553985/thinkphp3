/*
Navicat MySQL Data Transfer

Source Server         : stuinfor
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : shop_hm01

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-12 16:38:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sp_auth_copy`
-- ----------------------------
DROP TABLE IF EXISTS `sp_auth_copy`;
CREATE TABLE `sp_auth_copy` (
  `auth_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(20) NOT NULL COMMENT '权限名称',
  `auth_pid` smallint(6) unsigned NOT NULL COMMENT '父id',
  `auth_c` varchar(32) NOT NULL DEFAULT '' COMMENT '控制器',
  `auth_a` varchar(32) NOT NULL DEFAULT '' COMMENT '操作方法',
  `is_nav` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_auth_copy
-- ----------------------------
INSERT INTO `sp_auth_copy` VALUES ('1', '商品管理', '0', '', '', '1');
INSERT INTO `sp_auth_copy` VALUES ('2', '订单管理', '0', '', '', '1');
INSERT INTO `sp_auth_copy` VALUES ('3', '权限管理', '0', '', '', '1');
INSERT INTO `sp_auth_copy` VALUES ('4', '商品列表', '1', 'Goods', 'showlist', '1');
INSERT INTO `sp_auth_copy` VALUES ('5', '添加商品', '1', 'Goods', 'add', '1');
INSERT INTO `sp_auth_copy` VALUES ('6', '商品分类', '1', 'Category', 'showlist', '1');
INSERT INTO `sp_auth_copy` VALUES ('7', '订单列表', '2', 'Order', 'showlist', '1');
INSERT INTO `sp_auth_copy` VALUES ('8', '打印订单', '2', 'Order', 'print', '1');
INSERT INTO `sp_auth_copy` VALUES ('9', '添加订单', '2', 'Order', 'add', '1');
INSERT INTO `sp_auth_copy` VALUES ('10', '用户列表', '3', 'Manager', 'showlist', '1');
INSERT INTO `sp_auth_copy` VALUES ('11', '角色列表', '3', 'Role', 'showlist', '1');
INSERT INTO `sp_auth_copy` VALUES ('12', '权限列表', '3', 'Auth', 'showlist', '1');
INSERT INTO `sp_auth_copy` VALUES ('13', '商品促销', '0', 'Goods', 'promote', '1');
INSERT INTO `sp_auth_copy` VALUES ('14', '类型管理', '0', '', '', '1');
INSERT INTO `sp_auth_copy` VALUES ('15', '添加类型', '14', 'Type', 'add', '1');
INSERT INTO `sp_auth_copy` VALUES ('16', '类型列表', '14', 'Type', 'showList', '1');
INSERT INTO `sp_auth_copy` VALUES ('17', '属性管理', '0', '', '', '1');
INSERT INTO `sp_auth_copy` VALUES ('18', '添加属性', '17', 'Attribute', 'add', '1');
INSERT INTO `sp_auth_copy` VALUES ('19', '属性列表', '17', 'Attribute', 'showList', '1');
INSERT INTO `sp_auth_copy` VALUES ('20', '属性修改', '17', 'Attribute', 'edit', '1');
INSERT INTO `sp_auth_copy` VALUES ('21', '类型删除', '14', 'Type', 'del', '0');
INSERT INTO `sp_auth_copy` VALUES ('22', '权限删除', '12', 'Auth', 'del', '1');
INSERT INTO `sp_auth_copy` VALUES ('23', '权限添加', '3', 'Auth', 'add', '1');
INSERT INTO `sp_auth_copy` VALUES ('24', '权限分配', '3', 'Role', 'setAuth', '1');
INSERT INTO `sp_auth_copy` VALUES ('25', '商品类型', '0', '', '', '1');
INSERT INTO `sp_auth_copy` VALUES ('26', '商品类型', '0', '', '', '1');
