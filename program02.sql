/*
 Navicat MySQL Data Transfer

 Source Server         : dba
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : program02

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 26/12/2023 14:00:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cinema` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` double(255, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES (1, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (2, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (3, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (4, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (5, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (6, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (7, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (8, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (9, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (10, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (11, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (12, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (13, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (14, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (15, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (16, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (17, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (18, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (19, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (20, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (21, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (22, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (23, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (24, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (25, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (26, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (27, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (28, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (29, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (30, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (31, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (32, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (33, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (34, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (35, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (36, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (37, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (38, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (39, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (40, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (41, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (42, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (43, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (44, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (45, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (46, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (47, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (48, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (49, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (50, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (51, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (52, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (53, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (54, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (55, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (56, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (57, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (58, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (59, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (60, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (61, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (62, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (63, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (64, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (65, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (66, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (67, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (68, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (69, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (70, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (71, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (72, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (73, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (74, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (75, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (76, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (77, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (78, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (79, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (80, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (81, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (82, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (83, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (84, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (85, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (86, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (87, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (88, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (89, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (90, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (91, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (92, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (93, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (94, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (95, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (96, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (97, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (98, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);
INSERT INTO `cinema` VALUES (99, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 1.50);
INSERT INTO `cinema` VALUES (100, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 1.25);

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int NOT NULL,
  `movieName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `movieImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '志愿军', '1.jpg', 35.00);
INSERT INTO `movie` VALUES (2, '第八嫌疑人', '2.jpg', 37.00);
INSERT INTO `movie` VALUES (3, '封神榜第一部', '3.jpg', 30.00);
INSERT INTO `movie` VALUES (4, '敢死队4：最终章', '4.jpg', 35.00);
INSERT INTO `movie` VALUES (5, '奥本海默', '5.jpg', 35.00);
INSERT INTO `movie` VALUES (6, '威尼斯惊魂夜', '6.jpg', 30.00);
INSERT INTO `movie` VALUES (7, '孤注一掷', '7.jpg', 41.00);
INSERT INTO `movie` VALUES (8, '热血沸腾', '8.jpg', 36.00);

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `startTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reoVersion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `playAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int NULL DEFAULT NULL,
  `divClass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES (1, '18:30', '20:42散场', '国语2D', '六号厅', 38, '');
INSERT INTO `purchase` VALUES (2, '21:00', '23:12散场', '国语2D', '六号厅', 38, 'HeadColor');
INSERT INTO `purchase` VALUES (3, '21:50', '00:02散场', '国语2D', '二号厅', 38, '');
INSERT INTO `purchase` VALUES (4, '21:50', '23:24散场', '日语2D', '7厅(大)', 49, 'HeadColor');

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `playingId` int NULL DEFAULT NULL COMMENT '观影时间id，一个观影时间对应一个座位数据',
  `seat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES (1, 1, '[[0,1,1,0,1,1,0,0,1,1],[1,1,1,0,0,1,0,0,0,1],[1,1,1,1,0,0,1,1,0,1],[1,0,0,0,0,0,0,0,0,1],[1,0,0,1,0,1,0,0,0,0],[0,0,0,0,0,0,1,0,0,0],[1,1,0,1,1,1,1,1,0,0],[1,0,0,0,1,0,1,0,0,1],[0,1,1,0,1,1,0,0,0,0]]');
INSERT INTO `seat` VALUES (2, 2, '[[0,0,0,0,0,0,0,0,0,1],[0,1,0,0,1,0,0,0,0,0],[0,0,1,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,0,0,1],[0,0,0,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,1,0,0],[1,0,0,0,0,0,0,0,0,1],[0,0,0,1,0,0,0,0,0,1],[0,1,0,0,0,0,0,0,0,0]]');
INSERT INTO `seat` VALUES (3, 3, '[[0,0,0,0,1,0,0,0,0,1],[0,1,0,0,1,1,0,0,0,0],[1,1,0,0,0,1,0,0,0,1],[0,1,0,0,0,0,0,1,1,1],[1,1,0,0,1,0,1,0,0,0],[1,1,1,0,0,0,0,1,1,0],[1,0,0,0,0,0,0,0,0,0],[1,0,1,0,0,0,0,0,1,0],[0,0,0,0,0,0,1,0,0,1]]');
INSERT INTO `seat` VALUES (4, 4, '[[0,0,0,0,0,0,0,0,0,1],[0,1,0,0,1,0,0,0,0,0],[0,0,1,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,0,0,1],[0,0,0,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,1,0,0],[1,0,0,0,0,0,0,0,0,1],[0,0,0,1,0,0,0,0,0,1],[0,1,0,0,0,0,0,0,0,0]]');
INSERT INTO `seat` VALUES (5, 5, '[[0,1,1,0,0,1,0,0,1,0],[1,1,1,0,0,1,0,0,0,1],[1,1,1,1,0,0,1,1,0,1],[1,0,0,0,0,0,0,0,0,1],[0,0,0,1,0,1,0,0,0,0],[0,0,0,0,0,0,1,0,0,0],[1,1,0,1,1,1,1,1,0,0],[1,0,0,0,1,0,1,0,0,1],[0,1,1,0,1,1,0,0,0,0]]');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456');
INSERT INTO `user` VALUES (2, 'admin2', '123456');
INSERT INTO `user` VALUES (3, 'admin1', '111111');
INSERT INTO `user` VALUES (4, 'myself', '12345678');

-- ----------------------------
-- Table structure for yingting
-- ----------------------------
DROP TABLE IF EXISTS `yingting`;
CREATE TABLE `yingting`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `playing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '影厅名称',
  `cinemaId` int NULL DEFAULT NULL COMMENT '影院id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yingting
-- ----------------------------
INSERT INTO `yingting` VALUES (1, '一号厅', 1);
INSERT INTO `yingting` VALUES (2, '二号厅', 1);
INSERT INTO `yingting` VALUES (3, '三号厅', 1);
INSERT INTO `yingting` VALUES (4, '四号厅', 1);
INSERT INTO `yingting` VALUES (5, '一号厅', 2);
INSERT INTO `yingting` VALUES (6, '二号厅', 2);

-- ----------------------------
-- Table structure for yingting_movie
-- ----------------------------
DROP TABLE IF EXISTS `yingting_movie`;
CREATE TABLE `yingting_movie`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `yingtingId` int NULL DEFAULT NULL COMMENT '影厅id',
  `movieId` int NULL DEFAULT NULL COMMENT '电影id',
  `playingTime` timestamp(0) NULL DEFAULT NULL COMMENT '观影时间',
  `discount` double(255, 2) NULL DEFAULT NULL COMMENT '折扣',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yingting_movie
-- ----------------------------
INSERT INTO `yingting_movie` VALUES (1, 1, 1, '2023-11-25 09:06:08', 1.00);
INSERT INTO `yingting_movie` VALUES (2, 1, 1, '2023-11-25 12:06:35', 1.00);
INSERT INTO `yingting_movie` VALUES (3, 1, 1, '2023-11-25 18:06:51', 1.20);
INSERT INTO `yingting_movie` VALUES (4, 2, 1, '2023-11-25 09:07:08', 1.10);
INSERT INTO `yingting_movie` VALUES (5, 3, 1, '2023-11-25 11:07:22', 1.10);
INSERT INTO `yingting_movie` VALUES (6, 3, 2, '2023-11-25 09:07:43', 1.00);
INSERT INTO `yingting_movie` VALUES (7, 3, 2, '2023-11-25 19:08:07', 1.30);

SET FOREIGN_KEY_CHECKS = 1;
