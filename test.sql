/*
Navicat MySQL Data Transfer

Source Server         : 10.31.162.234
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2018-10-15 16:03:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `sid` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(999) CHARACTER SET utf8 NOT NULL,
  `title` varchar(999) CHARACTER SET utf8 NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 NOT NULL,
  `price` float(8,2) unsigned NOT NULL,
  `color` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `size` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'http://img11.360buyimg.com/N2/jfs/t22558/89/2343666456/198377/2e0dea9e/5b7b8cd1Nb4f33692.jpg,http://img11.360buyimg.com/N1/s450x450_jfs/t22558/89/2343666456/198377/2e0dea9e/5b7b8cd1Nb4f33692.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t24325/5/2306161300/172122/d45ccadb/5b7b8cd0N779941b4.jpg,http://img13.360buyimg.com/N1/s450x450_jfs/t25243/146/775299698/53866/a3485a46/5b7b8cceNb5025169.jpg,http://img13.360buyimg.com/N1/s450x450_jfs/t22915/344/2304466127/28018/22d0512f/5b7b8cceNa3148719.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t24040/363/2327743868/17997/61615faf/5b7b8ccfNe3ce9f5c.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t24661/176/770328665/24050/e7a3028d/5b7b8ccfNcbbf0783.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t25189/274/755311631/17410/d5f81ba7/5b7b8ccfN79ab5846.jpg', '360手机 N7 Lite  幻影黑', '\r\n360手机 N7 Lite 全网通 4GB+32GB 幻影黑 移动联通电信4G手机 双卡双待 全面屏 游戏手机', '1199.00', '幻影黑,银钻灰', '裸机版', '4GB+32GB,4GB+64GB,6GB+128GB');
INSERT INTO `goods` VALUES ('2', 'http://img11.360buyimg.com/N2/jfs/t24649/320/757379753/205734/6b7afbaf/5b7baabaNa301c5b2.jpg,http://img11.360buyimg.com/N1/s450x450_jfs/t24649/320/757379753/205734/6b7afbaf/5b7baabaNa301c5b2.jpg,http://img13.360buyimg.com/N1/s450x450_jfs/t24310/87/2256144496/178103/f61a4928/5b7baab9Nf000f09d.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t23395/120/2334447566/58460/b5397a13/5b7baab7Ne04129eb.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t25327/297/802252832/28640/1fae028a/5b7baab7N9dabde59.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t25831/316/788335298/20763/7d65ea93/5b7baab8N3756eb9f.jpg,http://img13.360buyimg.com/N1/s450x450_jfs/t23113/113/2359051971/24354/aa75de60/5b7baab8N5d30e8d1.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t24889/216/782946100/20672/25fb6c02/5b7baab8N99056b9f.jpg', ' 360手机 N7 Pro 6+64玛瑙黑', '360手机 N7 Pro 全网通 6GB+64GB 玛瑙黑 移动联通电信4G手机 双卡双待 全面屏 游戏手机', '1899.00', '珊瑚红,玛瑙黑', 'U盾安全套装,裸机版', '6GB+138GB,6GB+64GB');
INSERT INTO `goods` VALUES ('3', 'http://img11.360buyimg.com/N2/jfs/t19915/274/2624345163/198086/468e2dc5/5b7bc105Ne7347a49.jpg,http://img11.360buyimg.com/N1/s450x450_jfs/t19915/274/2624345163/198086/468e2dc5/5b7bc105Ne7347a49.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t22447/156/2321850924/162681/1dd38626/5b7bc105Na0a310b2.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t23599/121/2321948700/69167/1198bf07/5b7b91eeN83181518.jpg,http://img11.360buyimg.com/N1/s450x450_jfs/t22540/210/2287061635/40470/5f5e9ed7/5b7b91eeN25aaa3a2.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t25816/17/764433065/28598/ac669d0/5b7b91efN932c703b.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t24337/125/2316626982/31844/11eadf4/5b7b91efN49c5a244.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t23731/124/2295759697/29112/5d900a32/5b7b91efNf1efbabe.jpg', ' 360手机 N7  珊瑚红', '360手机 N7 Pro 全网通 6GB+128GB 珊瑚红 移动联通电信4G手机 双卡双待 全面屏 游戏手机', '2099.00', '珊瑚红,玛瑙黑', 'U盾安全套装,裸机版', '6GB+128GB,6GB+64GB');
INSERT INTO `goods` VALUES ('4', 'http://img14.360buyimg.com/N2/jfs/t16738/293/450474693/165314/7de5adfb/5a7c2888Na5f69fee.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t14746/75/1730477444/129482/86877cec/5a55b1c5Ne12745d7.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t12739/213/2511560944/81017/70ac4fe7/5a55b1c5N9ffad9d3.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t14983/8/1729113604/34774/eebb278e/5a55b1b9N7469ebfd.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t16426/79/1573006560/70943/63154791/5a55b1c4N322f501e.jpg,http://img11.360buyimg.com/N1/s450x450_jfs/t15844/184/1552593671/22011/2acabf5b/5a55b1c3N650d3588.jpg,http://img11.360buyimg.com/N1/s450x450_jfs/t15823/82/1598930151/17135/d7e26a5e/5a55b1a7Nb5341c62.jpg,http://img13.360buyimg.com/N1/s450x450_jfs/t15772/312/1398904580/19954/a8f02267/5a55b1c3N73c7b009.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t14773/131/1751345563/16817/aa7a7fda/5a55b1c4N779600ff.jpg', '360手机 N6 Pro  钛泽银', '360手机 N6 Pro 全网通 6GB+128GB 钛泽银 移动联通电信4G手机 双卡双待 全面屏 游戏手机', '1749.00', '极夜黑,钛泽银,深海蓝', '裸机版', '6GB+64GB,6GB+128GB,4GB+64GB');
INSERT INTO `goods` VALUES ('5', 'http://img14.360buyimg.com/N2/jfs/t16738/293/450474693/165314/7de5adfb/5a7c2888Na5f69fee.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t16738/293/450474693/165314/7de5adfb/5a7c2888Na5f69fee.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t18625/172/464846111/136525/3886a40c/5a7c2887Na3dfaeb8.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t13228/278/1147673879/115843/577dc3b3/5a1bc18fN85827ae6.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t11572/341/2657536650/78808/3f9ca654/5a1bc1a6N24d8c6d0.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t11092/335/2589237812/34223/41c0eef0/5a1bc1adNbac366c7.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t13327/219/1182825663/24648/1c020234/5a1bc1adNefd08b3f.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t12940/246/1155837091/23596/46af6074/5a1bc1adNbca019d6.jpg,http://img13.360buyimg.com/N1/s450x450_jfs/t13831/268/1164579666/37426/2be26ab1/5a1bc1a8Ne4829c24.jpg', '360手机 N6 Pro 深海蓝', '360手机 N6 Pro 全网通 6GB+128GB 深海蓝 移动联通电信4G手机 双卡双待 全面屏 游戏手机', '1749.00', '极夜黑,钛泽银,深海蓝', '裸机版', '6GB+64GB,6GB+128GB,4GB+64GB');
INSERT INTO `goods` VALUES ('6', 'http://img14.360buyimg.com/N2/jfs/t23914/350/2313291650/181264/a8e72285/5b7b91bbN87b0962a.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t23914/350/2313291650/181264/a8e72285/5b7b91bbN87b0962a.jpg,http://img13.360buyimg.com/N1/s450x450_jfs/t23266/66/2352910744/153649/6de6e953/5b7b91baN64db3a7b.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t24379/72/2357521918/58460/b5397a13/5b7b91b8Nfd57e2ca.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t22894/323/2326631090/28640/1fae028a/5b7b91b9Naee35b85.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t19810/362/2542785735/20763/7d65ea93/5b7b91b9Nae21055e.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t22564/154/2295315436/24354/aa75de60/5b7b91b9N9e7fc43e.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t23269/270/2282281925/20672/25fb6c02/5b7b91baNb802355b.jpg', '360手机 N7 Pro 玛瑙黑', '\r\n360手机 N7 Pro 全网通 6GB+128GB 玛瑙黑 移动联通电信4G手机 双卡双待 全面屏 游戏手机', '2099.00', '珊瑚红,玛瑙黑', 'U盾安全套装,裸机版', '6GB+128GB,6GB+64GB');
INSERT INTO `goods` VALUES ('7', 'http://img12.360buyimg.com/N2/jfs/t15817/179/2112984449/213492/ad7d0774/5a7c3369Nbda10159.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t15817/179/2112984449/213492/ad7d0774/5a7c3369Nbda10159.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t15499/271/2091187423/197545/9daf8a9a/5a7c3368N215c2f54.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t15031/65/330790133/30922/cfb52202/5a2a43fbN03d44bc0.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t13024/334/434949884/16316/d055c426/5a2a43cdNce0f9c85.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t15976/207/210509657/16726/62f8014d/5a2a43fbN8a6070ab.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t13132/266/1798440971/20362/805c9a5b/5a2a43f5N557b332a.jpg,http://img13.360buyimg.com/N1/s450x450_jfs/t16423/24/198216759/17906/bcd74ddb/5a2a43f4N868d6726.jpg', '360手机 N6 燧石黑色', '360手机 N6 全网通 6GB+64GB 燧石黑色 移动联通电信4G手机 双卡双待', '1199.00', '琉璃蓝,燧石黑,璀璨金', '音乐套装,裸机版,保护套装', '6+64GB,4+64GB');
INSERT INTO `goods` VALUES ('8', 'http://img14.360buyimg.com/N2/jfs/t16738/293/450474693/165314/7de5adfb/5a7c2888Na5f69fee.jpg,http://img14.360buyimg.com/N1/s450x450_jfs/t16738/293/450474693/165314/7de5adfb/5a7c2888Na5f69fee.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t18625/172/464846111/136525/3886a40c/5a7c2887Na3dfaeb8.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t13228/278/1147673879/115843/577dc3b3/5a1bc18fN85827ae6.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t11572/341/2657536650/78808/3f9ca654/5a1bc1a6N24d8c6d0.jpg,http://img10.360buyimg.com/N1/s450x450_jfs/t11092/335/2589237812/34223/41c0eef0/5a1bc1adNbac366c7.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t13327/219/1182825663/24648/1c020234/5a1bc1adNefd08b3f.jpg,http://img12.360buyimg.com/N1/s450x450_jfs/t12940/246/1155837091/23596/46af6074/5a1bc1adNbca019d6.jpg,http://img13.360buyimg.com/N1/s450x450_jfs/t13831/268/1164579666/37426/2be26ab1/5a1bc1a8Ne4829c24.jpg', ' 360手机 N6 Pro 深海蓝色', '\r\n360手机 N6 Pro 全网通 6GB+128GB 深海蓝色 移动联通电信4G手机 双卡双待 全面屏 游戏手机', '1899.00', '钛泽银,深海蓝,极夜黑', '裸机版碎屏险套装音乐套装', '6+128GB,6+64GB,4+64GB');

-- ----------------------------
-- Table structure for `useri360`
-- ----------------------------
DROP TABLE IF EXISTS `useri360`;
CREATE TABLE `useri360` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(11) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of useri360
-- ----------------------------
INSERT INTO `useri360` VALUES ('1', '13330127583', '6e7475d5c23caf8ec1e8e3e9230035f3', '2018-10-10 21:27:05');
INSERT INTO `useri360` VALUES ('2', '15807058383', '25f9e794323b453885f5181f1b624d0b', '2018-10-10 21:31:46');
INSERT INTO `useri360` VALUES ('3', '13330127584', '1bbd886460827015e5d605ed44252251', '2018-10-11 09:01:32');
INSERT INTO `useri360` VALUES ('4', '15811111111', 'd720c41252bbdd5a7d06b1d64aa7bc13', '2018-10-11 09:35:15');
INSERT INTO `useri360` VALUES ('5', '12211111111', '2467d3744600858cc9026d5ac6005305', '2018-10-11 11:25:15');
INSERT INTO `useri360` VALUES ('6', '11111111111', '1bbd886460827015e5d605ed44252251', '2018-10-13 21:55:21');
