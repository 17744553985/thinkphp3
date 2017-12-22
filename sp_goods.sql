/*
Navicat MySQL Data Transfer

Source Server         : stuinfor
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : shop_hm01

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-12 16:36:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sp_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sp_goods`;
CREATE TABLE `sp_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_name` varchar(128) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_number` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `goods_weight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品重量',
  `type_id` smallint(3) NOT NULL DEFAULT '0' COMMENT '类型id',
  `goods_introduce` text COMMENT '商品详情介绍',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品所属品牌',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商品所属分类',
  `goods_big_logo` char(128) NOT NULL DEFAULT '' COMMENT '图片logo大图',
  `goods_small_logo` char(128) NOT NULL DEFAULT '' COMMENT '图片logo小图',
  `sale_time` int(11) NOT NULL DEFAULT '0' COMMENT '商品上架时间',
  `is_del` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0:正常  1:删除',
  `add_time` int(11) NOT NULL COMMENT '添加商品时间',
  `upd_time` int(11) NOT NULL COMMENT '修改商品时间',
  PRIMARY KEY (`goods_id`),
  UNIQUE KEY `goods_name` (`goods_name`),
  KEY `goods_price` (`goods_price`),
  KEY `add_time` (`add_time`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of sp_goods
-- ----------------------------
INSERT INTO `sp_goods` VALUES ('1', '三星', '4999.00', '1', '120', '0', '物美价廉 还有一个响', '0', '0', '', '', '0', '1', '1483945990', '1483945990');
INSERT INTO `sp_goods` VALUES ('2', '苹果', '5999.00', '1', '129', '0', '&lt;p&gt;乔布斯说是我创造的&lt;/p&gt;', '0', '0', './public/Upload/2017-01-13/5878d4f467080.gif', './public/Upload/2017-01-13/thomb_5878d4f467080.gif', '0', '1', '1484313842', '1484313842');
INSERT INTO `sp_goods` VALUES ('6', '红米', '1.00', '1', '1', '1', '<p>啊啊啊啊<br /></p>', '0', '0', './public/Upload/2017-01-16/587c8f488c8ee.gif', './public/Upload/2017-01-16/thomb_587c8f488c8ee.gif', '0', '1', '1484558151', '1484558151');
INSERT INTO `sp_goods` VALUES ('7', '格力', '2222.00', '1', '1200', '5', '<p>$parent=M(\'Auth\')-&gt;where(\'auth_pid = 0\')-&gt;select();<br />        $this-&gt;assign(\'parent\',$parent);<br />        $this-&gt;display();<br />        }<br />    }<br />    public function del(){<br />        $auth_id=I(\'get.auth_id\');<br />        if(M(\'Auth\')-&gt;delete($auth_id)){<br />             $this-&gt;success(\'删除权限成功\',U(\'showList\'),3);<br />          }else{<br />            $this-&gt;error(\'删除权限失败\');<br />          }</p>', '0', '0', './public/Upload/2017-02-11/589eed14a33ec.jpg', './public/Upload/2017-02-11/thomb_589eed14a33ec.jpg', '0', '1', '1486810387', '1486810387');
INSERT INTO `sp_goods` VALUES ('8', '小米', '1333.00', '1', '1', '0', '', '0', '0', '', '', '0', '0', '1490514699', '1490514699');
