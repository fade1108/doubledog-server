SET NAMES UTF8;
DROP DATABASE IF EXISTS doubledog;
CREATE DATABASE doubledog CHARSET=UTF8;
USE doubledog;
/**用户信息**/
CREATE TABLE dg_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);
CREATE TABLE dg_watch_product(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  watch_id VARCHAR(64),
  title VARCHAR(128),
  details VARCHAR(128),
  family VARCHAR(64),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  type VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT 
);
/**手表详情页面**/
CREATE TABLE watch_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  watch_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  details VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  family VARCHAR(64),        #表款编码
  watchcase VARCHAR(64),      #表壳材质
  watchband VARCHAR(64),      #表带材质
  dial_plate VARCHAR(64),     #表盘指针
  scale VARCHAR(64),         #表盘刻度
  dial_color VARCHAR(64),     #表盘颜色
  movement_type VARCHAR(64),     #机芯类型
  shelf_time BIGINT,          #上架时间
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN           #是否促销中
);
/**手表型号家族**/
CREATE TABLE dg_watch_family(
  wid INT PRIMARY KEY AUTO_INCREMENT,
  watchname VARCHAR(32)
);
/**手表型号家族**/
INSERT INTO dg_watch_family VALUES
(NULL,'康卡斯潜水系列'),
(NULL,'浪琴表名匠系列'),
(NULL,'经典复刻'),
(NULL,'石英女士腕表'),
(NULL,'时尚系列'),
(NULL,'浪琴表嘉岚系列'),
(NULL,'浪琴表律雅系列'),
(NULL,'开创者系列'),
(NULL,'浪琴表心月系列'),
(NULL,'马术系列');
/**-----------------------------------------------------------**/

INSERT INTO dg_watch_product VALUES
(NULL,'1', '康卡斯潜水系列', '自动机械男士腕表','L3.783.4.56.6', 'images/watch-body1.jpg',19100, 'product_details.html?lid=1','L888 自动上链机械机芯 自动上链机械机芯，每小时振动25,200次，提供64小时动力储存',1,1,1),
(NULL,'2', '浪琴名将系列', '自动机械男士腕表','L2.793.4.92.6', 'images/watch-body2.jpg', 16000, 'product_details.html?lid=2','自动上链机械机芯，每小时振动28,800次，提供42小时动力储存。',2,2,2),
(NULL,'3', '经典复刻', '自动机械男士腕表','L2.813.4.66.6', 'images/watch-body3.jpg',14100 , 'product_details.html?lid=3','L888 自动上链机械机芯 自动上链机械机芯，每小时振动25,200次，提供64小时动力储存。',3,3,3),
(NULL,'4', '浪琴表黛绰维纳系列', '石英女士腕表','L5.255.4.71.5', 'images/watch-body4.jpg',10000, 'product_details.html?lid=4','L591 自动上链机械机芯 自动上链机械机芯，每小时振动28,800次，提供40小时动力储存。',4,4,4),
(NULL,'5', '时尚系列', '自动机械男士腕表','L4.921.4.11.2', 'images/watch-body5.jpg',9200, 'product_details.html?lid=5','L615 自动上链机械机芯 自动上链机械机芯，每小时振动28,800次，提供42小时动力储存。',5,5,5),
(NULL,'6', '浪琴嘉岚系列', '自动机械男士腕表','L4.908.2.11.2', 'images/watch-body6.jpg',12600, 'product_details.html?lid=6','自动上链机械机芯',6,6,6),
(NULL,'6', '浪琴嘉岚系列', '石英女士腕表','L4.209.4.11.6', 'images/watch-body7.jpg',8300, 'product_details.html?lid=7','自动上链机械机芯',6,6,6),
(NULL,'7', '浪琴表律雅系列', '石英女士腕表','L4.259.4.72.6', 'images/watch-body8.jpg',7100, 'product_details.html?lid=8','自动上链机械机芯',7, 7, 7),
(NULL,'3', '经典复刻', '自动机械男士腕表','L4.795.4.78.2', 'images/watch-body9.jpg',12600, 'product_details.html?lid=9','自动上链机械机芯',3, 3, 3),
(NULL,'8', '开创者系列', '自动机械男士腕表','L4.820.4.11.6', 'images/watch-body10.jpg',16500, 'product_details.html?lid=10','自动上链机械机芯',8,8,8),
(NULL,'2', '浪琴表名匠系列', '自动机械男士腕表','L2.628.4.78.3', 'images/watch-body11.jpg',15000, 'product_details.html?lid=11','自动上链机械机芯',2,2,2),
(NULL,'9', '浪琴表心月系列', '石英女士腕表','L8.110.4.87.6', '0images/watch-body12.jpg',10400, 'product_details.html?lid=12','自动上链机械机芯',9,9,9),
(NULL,'2', '浪琴名将系列', '自动机械男士腕表','L2.673.4.78.3', 'images/watch-body13.jpg',25000, 'product_details.html?lid=13','自动上链机械机芯',2,2,2),
(NULL,'2', '浪琴名将系列', '自动机械男士腕表','L2.629.4.78.6', 'images/watch-body14.jpg',21300, 'product_details.html?lid=14','自动上链机械机芯',2,2,2),
(NULL,'3', '经典复刻', '自动机械男士腕表','L2.816.4.53.2', 'images/watch-body15.jpg',20800, 'product_details.html?lid=15','自动上链机械机芯',3,3,3),
(NULL,'10', '马术系列', '石英女士腕表','L6.130.0.71.2', 'images/watch-body16.jpg',20800, 'product_details.html?lid=16','自动上链机械机芯',10,10,10),
(NULL,'6', '浪琴嘉岚系列', '石英男士腕表','L4.512.4.97.6', 'images/watch-body17.jpg',10400, 'product_details.html?lid=17','自动上链机械机芯',6,6,6),
(NULL,'6', '浪琴嘉岚系列', '石英女士腕表','L4.209.4.97.6', 'images/watch-body18.jpg',10400, 'product_details.html?lid=18','自动上链机械机芯',6,6,6),
(NULL,'7', '浪琴表律雅系列', '石英男士腕表','L4.759.4.12.6', 'images/watch-body19.jpg',7100, 'product_details.html?lid=19','自动上链机械机芯',7,7,7),
(NULL,'7', '浪琴表律雅系列', '石英女士腕表','L4.259.4.12.6', 'images/watch-body20.jpg',7100, 'product_details.html?lid=20','自动上链机械机芯',7,7,7);
#插入手表详情页
INSERT INTO watch_laptop VALUES
(1,1,'康卡斯潜水系列','自动机械男士腕表',19100,'L3.783.4.56.6','精钢及陶瓷','精钢','镀银抛光指针','Swiss Super-LumiNova','黑色太阳饰纹','自动上链机械机芯',150123456789,2968,TRUE),
(2,2,'浪琴名将系列','40.00 mm  自动机械男士腕表',16000,'L2.793.4.92.6','精钢','精钢','镀银抛光指针','镶嵌时标','蓝色太阳饰纹','L888 自动上链机械机芯 自动上链机械机芯，每小时振动25,200次，提供64小时动力储存。',150123456789,2968,TRUE),
(3,3,'金典复刻','自动机械男士腕表',14100,'L2.813.4.66.0','精钢','皮表带','蓝钢指针','漆绘阿拉伯数字和时标','铜色','自动上链机械机芯，每小时振动28,800次，提供42小时动力储存。',150123456789,2968,TRUE),
(4,4,'浪琴表黛绰维纳系列','20.80 X 32.00 mm  石英女士腕表',10000,'L5.255.4.71.5','精钢','鳄鱼皮表带','蓝钢指针','漆绘罗马数字','银色"flinqué"饰纹','L178 石英机芯',150123456789,2968,TRUE),
(5,5,'时尚系列','38.50 mm  自动机械男士腕表',9200,'L4.921.4.11.2','精钢','皮表带','黑色指针','绘罗马数字','白色哑光','L888 自动上链机械机芯 自动上链机械机芯，每小时振动25,200次，提供64小时动力储存。',150123456789,2968,TRUE),
(6,6,'浪琴表嘉岚系列','36.00 mm  自动机械男士腕表',12600,'L4.908.2.11.2','黄色PVD涂层','鳄鱼皮表带','黑色指针','漆绘罗马数字','白色','L591 自动上链机械机芯 自动上链机械机芯，每小时振动28,800次，提供40小时动力储存。',150123456789,2968,TRUE),
(7,6,'浪浪琴表嘉岚系列','24.00 mm  石英女士腕表',8300,'L4.209.4.11.6','精钢','精钢','黑色指针','漆绘罗马数字','白色','L209 石英机芯',150123456789,2968,TRUE),
(8,7,'浪琴表律雅系列','25.00 mm  石英女士腕表',7100,'L4.259.4.72.6','精钢','精钢','镀银抛光指针','镶嵌时标','银色太阳饰纹','L152 石英机芯dg_watch_product',150123456789,2968,TRUE),
(9,3,'经典复刻','38.50 mm  自动机械男士腕表',12600,' L4.795.4.78.2','精钢','鳄鱼皮表带','镀金指针','镶嵌时标','银色','L615 自动上链机械机芯 自动上链机械机芯，每小时振动28,800次，提供42小时动力储存。',150123456789,2968,TRUE),
(10,8,'开创者系列','38.50 mm  自动机械男士腕表',16500,'L2.820.4.11.6','精钢','精钢','蓝钢指针','漆绘罗马数字','白色哑光','L888.4 自动上链机械机芯 自动上链机械机芯，每小时振动25,200次，提供64小时动力储存，并设有单晶硅摆轮游丝',150123456789,2968,TRUE),
(11,2,'浪琴表名匠系列','38.50 mm  自动机械男士腕表',15000,'L2.628.4.78.3','精钢','鳄鱼皮表带','蓝钢指针','漆绘阿拉伯数字','银色"麦粒"饰纹','L888 自动上链机械机芯 自动上链机械机芯，每小时振动25,200次，提供64小时动力储存。',150123456789,2968,TRUE),
(12,9,'浪琴表心月系列','26.50 mm  石英女士腕表',10400,'L8.110.4.87.6','精钢','精钢','蓝钢指针','钻石时标','白色珍珠母贝','L250 石英机芯',150123456789,2968,TRUE),
(13,2,'浪琴表名匠系列','40.00 mm  自动机械男士腕表',25000,'L2.673.4.78.3','精钢','鳄鱼皮表带','蓝钢指针','漆绘阿拉伯数字','银色"麦粒"饰纹','L687 自动上链机械机芯 自动上链机械机芯，每小时振动28,800次，提供54小时动力储存。 导柱轮计时码表',150123456789,2968,TRUE),
(14,2,'浪琴表名匠系列','40.00 mm  自动机械男士腕表',21300,'L2.629.4.78.6','精钢','精钢','蓝钢指针','漆绘阿拉伯数字','银色"麦粒"饰纹',' L651 自动上链机械机芯 自动上链机械机芯，每小时振动28,800次，提供42小时动力储存。',150123456789,2968,TRUE),
(15,10,'经典复刻','41.00 mm  自动机械男士腕表',20800,'L2.816.4.53.2','精钢','皮表带','镀银沙色指针','漆绘阿拉伯数字','黑色','L688 自动上链机械机芯 自动上链机械机芯，每小时振动28,800次，提供54小时动力储存。 导柱轮计时码表',150123456789,2968,TRUE),
(16,3,'马术系列','26.50 mm  石英女士腕表',20800,'L6.130.0.71.2','精钢','皮表带','蓝钢指针','漆绘阿拉伯数字','银色"麦粒"饰纹','L152石英机芯',150123456789,2968,TRUE),
(17,6,'浪琴表嘉岚系列','29.00 mm  石英男士腕表',10400,'L4.512.4.97.6','精钢','精钢','镀银抛光指针','钻石时标','抗磨损合成蓝宝石','L420 石英机芯',150123456789,2968,TRUE),
(18,6,'浪琴表嘉岚系列','24.00 mm  石英女士腕表',10400,'L4.209.4.97.6','精钢','精钢','镀银抛光指针','钻石时标','蓝色太阳饰纹','L209 石英芯',150123456789,2968,TRUE),
(19,7,'浪琴表律雅系列','35.00 mm  石英男士腕表',7100,' L4.759.4.12.6','精钢','精钢','镀银抛光指针','镶嵌时标','白色哑光','L157 石英机芯',150123456789,2968,TRUE),
(20,7,'浪琴表律雅系列','25.00 mm  石英女士腕表',7100,'L4.259.4.12.6','精钢','精钢','蓝钢指针','镶嵌时标','白色哑光','L152 石英机芯',150123456789,2968,TRUE);

#功能一:创建表xz_login 用户登录表
USE doubledog;
CREATE TABLE dg_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32),
  tel   VARCHAR(64)
);
#功能二:添加二条测试数据 
INSERT INTO dg_login VALUES(NULL,'tom',MD5('123'),'15504730774');
INSERT INTO dg_login VALUES(NULL,'jerry',MD5('123'),'15504730774');
INSERT INTO dg_login VALUES(NULL,'fade',MD5('4882485'),'15504730774');
ALTER TABLE dg_watch_product ADD img_url VARCHAR(255);
#更新商品表图片 01.jpg 02.jpg
UPDATE dg_watch_product SET img_url='watch-body1.jpg'
WHERE lid = 1;
UPDATE dg_watch_product SET img_url='watch-body2.jpg'
WHERE lid = 2;
UPDATE dg_watch_product SET img_url='watch-body3.jpg'
WHERE lid = 3;
UPDATE dg_watch_product SET img_url='watch-body4.jpg'
WHERE lid = 4;
UPDATE dg_watch_product SET img_url='watch-body5.jpg'
WHERE lid = 5;
UPDATE dg_watch_product SET img_url='watch-body6.jpg'
WHERE lid = 6;
UPDATE dg_watch_product SET img_url='watch-body7.jpg'
WHERE lid = 7;
UPDATE dg_watch_product SET img_url='watch-body8.jpg'
WHERE lid = 8;
UPDATE dg_watch_product SET img_url='watch-body9.jpg'
WHERE lid = 9;
UPDATE dg_watch_product SET img_url='watch-body10.jpg'
WHERE lid = 10;
UPDATE dg_watch_product SET img_url='watch-body11.jpg'
WHERE lid = 11;
UPDATE dg_watch_product SET img_url='watch-body12.jpg'
WHERE lid = 12;
UPDATE dg_watch_product SET img_url='watch-body13.jpg'
WHERE lid = 13;
UPDATE dg_watch_product SET img_url='watch-body14.jpg'
WHERE lid = 14;
UPDATE dg_watch_product SET img_url='watch-body15.jpg'
WHERE lid = 15;
UPDATE dg_watch_product SET img_url='watch-body16.jpg'
WHERE lid = 16;
UPDATE dg_watch_product SET img_url='watch-body17.jpg'
WHERE lid = 17;
UPDATE dg_watch_product SET img_url='watch-body18.jpg'
WHERE lid = 18;
UPDATE dg_watch_product SET img_url='watch-body19.jpg'
WHERE lid = 19;
UPDATE dg_watch_product SET img_url='watch-body20.jpg'
WHERE lid = 20;


#创建表 购物车
#DECIMAL 高精度浮点数 2.00-1.99=0.01
#INT     199分 /100  无误差
#lid 商品编号/price 价格/count数量
#lname 商品名称/uid用户编号
CREATE TABLE dg_cart(
  id     INT PRIMARY KEY AUTO_INCREMENT,
  lid    INT,
  price  DECIMAL(10,2),
  COUNT  INT,
  lname  VARCHAR(255),
  uid    INT
);

#创建 浪琴手表详情页
CREATE TABLE watch_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #笔记本电脑编号
  lg VARCHAR(128)             #大图片路径
);
INSERT INTO watch_laptop_pic VALUES
(NULL,1,'watch_de1.png'),
(NULL,2,'watch_de2.png'),
(NULL,3,'watch_de3.png'),
(NULL,4,'watch_de4.png'),
(NULL,5,'watch_de5.png'),
(NULL,6,'watch_de6.png'),
(NULL,7,'watch_de7.png'),
(NULL,8,'watch_de8.png'),
(NULL,9,'watch_de9.png'),
(NULL,10,'watch_de10.png'),
(NULL,11,'watch_de11.png'),
(NULL,12,'watch_de12.png'),
(NULL,13,'watch_de13.png'),
(NULL,14,'watch_de14.png'),
(NULL,15,'watch_de15.png'),
(NULL,16,'watch_de16.png'),
(NULL,17,'watch_de17.png'),
(NULL,18,'watch_de18.png'),
(NULL,19,'watch_de19.png'),
(NULL,20,'watch_de20.png');

#创建鞋类
CREATE TABLE shoes_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),
  #标题
  price DECIMAL(10, 2),
  #价格
  color VARCHAR(20),
  #颜色
  size VARCHAR(10),
  #码
  soli_count INT,
  #本月已售
  is_onsale BOOLEAN,
  #是否促销
  shoesname VARCHAR(32),
  #牌名
  img_url VARCHAR(32)
);
INSERT INTO
  shoes_laptop
VALUES
  (
    1,
    "由浅入深女子跑鞋",
    699.99,
    "红色",
    40,
    999,
    FALSE,
    "李宁",
    "1.jpg"
  ),
  (
    2,
    "先橘后紫新款空军",
    799.99,
    "红色",
    40,
    999,
    FALSE,
    "李宁",
    "2.jpg"
  ),
  (
    3,
    "尊贵黄色奢侈AJ",
    1999.99,
    "红色",
    40,
    999,
    FALSE,
    "李宁",
    "3.jpg"
  ),
  (
    4,
    "增高气垫矮人专属",
    599.99,
    "红色",
    40,
    999,
    FALSE,
    "李宁",
    "4.jpg"
  ),
  (
    5,
    "欣赏不来无敌跑鞋",
    3399.99,
    "红色",
    40,
    999,
    FALSE,
    "李宁",
    "5.jpg"
  ),
  (
    6,
    "AIT VI男子",
    499.00,
    "红色",
    40,
    999,
    FALSE,
    "李宁",
    "6.jpg"
  );
#眼镜创建表
  CREATE TABLE glass_index(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  glass_id VARCHAR(64),
  title VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);
#眼镜首页插入数据
INSERT INTO glass_index VALUES
(NULL,'1', '经典贾斯丁', 'Mj-01.jpg','1280', 'glass_index.html?lid=1',1,1,1),
(NULL,'2', '经典飞行员', 'Mj-02.jpg','1680', 'glass_index.html?lid=2',1,1,1),
(NULL,'3', '户外人', 'Mj-03.jpg','1280', 'glass_index.html?lid=3',1,1,1),
(NULL,'4', '经典徒步旅行者', 'Mj-04.jpg','1280', 'glass_index.html?lid=4',1,1,1),
(NULL,'5', '新徒步旅行者', 'Mj-06.jpg','1280', 'glass_index.html?lid=5',1,1,1),
(NULL,'6', '经典爱丽卡', 'Mj-07.jpg','1280', 'glass_index.html?lid=6',1,1,1),
(NULL,'7', '圆形金属', 'Mj-08.jpg','1280', 'glass_index.html?lid=7',1,1,1),
(NULL,'8', 'WayfarerII二代徒步旅行者Evolve进化', 'Mj-09.jpg','1580', 'glass_index.html?lid=8',1,1,1),
(NULL,'9', 'WingsII二代飞翼', 'Mj-10.jpg','1680', 'glass_index.html?lid=9',1,1,1),
(NULL,'10', '骄阳将军', 'Mj-11.jpg','1480', 'glass_index.html?lid=10',1,1,1),
(NULL,'11', '六边平板镜片', 'Mj-11.jpg','1380', 'glass_index.html?lid=11',1,1,1),
(NULL,'12', '点击购买', 'Dj.jpg','1380', 'glass_index.html?lid=12',1,1,1);


#收货人信息地址
CREATE TABLE dg_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名
  is_default BOOLEAN          #是否为当前用户的默认收货地址
);
ALTER TABLE dg_receiver_address ADD uid INT;
UPDATE dg_receiver_address SET uid=1
WHERE user_id = 1;
INSERT INTO dg_receiver_address VALUES
(NULL,1,'tom','山东省','济南市','','山东省济南市大坝桥下','13848383838','016000','他是抜蚌',true,1); 


#创建dw手表首页表格
CREATE TABLE dw_index(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  dw_id VARCHAR(64),
  title VARCHAR(128),
  size VARCHAR(36),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);

#dw手表首页插入数据
INSERT INTO dw_index VALUES
(NULL,'1', 'CLASSIC PETITE ASHFIELD','36MM', 'dw_index_1.jpg','1490', 'dw_index.html?lid=1',1,1,1),
(NULL,'2', 'CLASSIC PETITE ASHFIELD+MELROSE','36+28MM', 'dw_index_2.jpg','2780', 'dw_index.html?lid=2',2,2,2),
(NULL,'3', 'CLASSIC PETITE ASHFIELD MELROSE','28MM', 'dw_index_3.jpg','1290', 'dw_index.html?lid=3',3,3,3),
(NULL,'4', 'CLASSIC PETITE ASHFIELD+ASHFIELD 28MM','36+28MM', 'dw_index_4.jpg','2780', 'dw_index.html?lid=4',4,4,4),
(NULL,'5', 'CLASSIC PETITE ASHFIELD+BRACELET S','32MM', 'dw_index_5.jpg','1880', 'dw_index.html?lid=5',5,5,5),
(NULL,'6', 'CLASSIC PETITE MELROSE+BRACELET RG L','36MM', 'dw_index_6.jpg','1980', 'dw_index.html?lid=6',6,6,6),
(NULL,'7', 'CLASSIC PETITE DOVER+BRACELET S','28MM', 'dw_index_7.jpg','1580', 'dw_index.html?lid=7',7,7,7),
(NULL,'8', 'CLASSIC PETITE SHEFFIELD BLACK + BRACELET S','32MM', 'dw_index_8.jpg','1780', 'dw_index.html?lid=8',8,8,8),
(NULL,'9', 'CLASSIC BLACK CORNWALL','40MM', 'dw_index_9.jpg','1450', 'dw_index.html?lid=9',9,9,9),
(NULL,'10', 'CLASSIC CORNWALL','40MM', 'dw_index_10.jpg','1450', 'dw_index.html?lid=10',10,10,10),
(NULL,'11', 'CLASSIC ST MAWES','40MM', 'dw_index_11.jpg','1490', 'dw_index.html?lid=11',11,11,11),
(NULL,'12', 'CLASSIC CANTERBURY','36MM', 'dw_index_12.jpg','1250', 'dw_index.html?lid=12',12,12,12),
(NULL,'13', 'CLASSIC PETITE BONDI','32MM', 'dw_index_13.jpg','1290', 'dw_index.html?lid=13',13,13,13),
(NULL,'14', 'CLASSIC PETITE ASHFIELD','28MM', 'dw_index_14.jpg','1290', 'dw_index.html?lid=14',14,14,14),
(NULL,'15', 'CLASSIC PETITE STERLING','28MM', 'dw_index_15.jpg','1290', 'dw_index.html?lid=15',15,15,15),
(NULL,'16', 'CLASSIC PETITE ST MAWES','28MM', 'dw_index_16.jpg','1190', 'dw_index.html?lid=16',16,16,16),
(NULL,'17', 'CLASSIC RING','52', 'dw_index_17.jpg','290', 'dw_index.html?lid=17',17,17,17),
(NULL,'18', 'CLASSIC RING','58', 'dw_index_18.jpg','290', 'dw_index.html?lid=18',18,18,18),
(NULL,'19', 'CLASSIC SLIM BRACELET SATIN WHITE','S', 'dw_index_19.jpg','590', 'dw_index.html?lid=19',19,19,19),
(NULL,'20', 'CLASSIC BRACELET','S', 'dw_index_20.jpg','490', 'dw_index.html?lid=20',20,20,20);


#创建dw手表详情页表格
CREATE TABLE dw_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  watch_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  titlesecond VARCHAR(128),     #副标题
  details VARCHAR(128),      #介绍语句
  price DECIMAL(10,2),        #价格
  family VARCHAR(64),         #尺寸
  watchcase VARCHAR(64),      #表盘颜色
  watchband VARCHAR(64),      #表带材质
  dial_plate VARCHAR(64),     #可互换表带
  scale VARCHAR(64),          #表盘厚度
  dial_color VARCHAR(64),     #机芯
  movement_type VARCHAR(64),  #表带颜色
  shelf_time VARCHAR(64),     #防水等级
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN           #是否促销中
);
#插入dw手表详情页表格
INSERT INTO dw_laptop VALUES
(1,1,'CLASSIC PETITE | 36MM','A S H F I E L D','Classic Petite Ashfield，极致纤薄的手表搭配哑光黑色网格表带和精致黑色表盘，贴在手腕间，倍感优雅迷人。',1490,'36mm','黑色','金属','是','6mm','日本石英机芯','黑色','30米生活防水',2968,TRUE),
(2,2,'CLASSIC PETITE | 36+28MM','A S H F I E L D D + M E L R O S E','CLASSIC PETITE系列，可搭配精致细密的金属表带，简致12指针刻度，绽放于手腕的细节艺术，闪耀迷人光泽。',2780,'36mm','蛋壳白','金属','是','6mm','日本石英机芯','黑色','30米生活防水',2968,TRUE),
(3,3,'CLASSIC PETITE | 28MM','M E L R O S E','CLASSIC PETITE系列，可搭配精致细密的金属表带，简致12指针刻度，绽放于手腕的细节艺术，闪耀迷人光泽。',1290,'28mm','蛋壳白','金属','是','6mm','日本石英机芯','玫瑰金色','30米生活防水',2968,TRUE),
(4,4,'CLASSIC PETITE | 36+28MM','A S H F I E L D D + M E L R O S E 28 M M','Classic Petite Ashfield，极致纤薄的手表，搭配哑光黑色网格表带和精致黑色表盘，贴在手腕间，倍感优雅迷人。',2780,'36mm','黑色','金属','是','6mm','日本石英机芯','黑色','30米生活防水',2968,TRUE),
(5,5,'CLASSIC PETITE | 32MM','A S H F I E L D D + B R A C E L E T S','此套装含有Classic Petite Ashfield 32MM 玫瑰金 + Classic Bracelet 小号玫瑰金套装。我们为您的礼品套装配上精美礼品盒。',1880,'32mm','黑色','金属','是','6mm','日本石英机芯','黑色','30米生活防水',2968,TRUE),
(6,6,'CLASSIC PETITE | 36MM','M E L R O S E + B R A C E L E T R G L','精致12指针刻度表盘搭配简约手镯，绽放于手腕的细节艺术。',1980,'36mm','蛋壳白','金属','是','6mm','日本石英机芯','玫瑰金色','30米生活防水',2968,TRUE),
(7,7,'CLASSIC PETITE | 28MM','D O V E R + B R A C E L E T S','精致12指针刻度表盘搭配简约手镯，绽放于手腕的细节艺术。',1980,'36mm','蛋壳白','金属','是','6mm','日本石英机芯','白色','30米生活防水',2968,TRUE),
(8,8,'CLASSIC PETITE | 32MM','S H E F F I E L D B L A C K + B R A C E L E T S','此套装含有Classic Petite Sheffield 32MM 玫瑰金黑表盘 + Classic Bracelet 小号玫瑰金手镯。我们为您的礼品套装配上精美礼品盒。',1780,'32mm','黑色','金属','是','6mm','日本石英机芯','黑色','30米生活防水',2968,TRUE),
(9,9,'CLASSIC PETITE | 40MM','C O R N W A L L','Classic Black Cornwall 手表拥有与众不同的表盘和纯黑织纹表带，尽显 Classic 旗舰系列独具一格的魅力 。时尚的设计风格和迷人品质相结合，任何时刻都完美百搭。',1450,'40mm','黑白','织纹','是','6mm','日本石英机芯','黑色','30米生活防水',2968,TRUE),
(10,10,'CLASSIC PETITE | 40MM','C O R N W A L L','经典而隽永的黑与白搭配，带来不一样的质感风格。尽享简约格调生活。',1450,'40mm','蛋壳白','织纹','是','6mm','日本石英机芯','黑色','30米生活防水',2968,TRUE),
(11,11,'CLASSIC | 40MM','S T  M A W E S','CLASSIC系列腕表，经典而永恒的简约设计，满足日常搭配的同时，给你增加精致细节，驾驭百变风格。',1490,'40mm','蛋壳白','牛皮革','是','6mm','日本石英机芯','棕色','30米生活防水',2968,TRUE),
(12,12,'CLASSIC | 36MM','C A N T E R B U R Y','织纹表带的活泼色彩与洁白简约的表盘自然融合，形成了最完美的配件。 不仅如此，可更换的表带可让您在一星期中的每一天都能拥有无比独特的腕表。',1250,'36mm','蛋壳白','织纹','是','6mm','日本石英机芯','蓝/红/白','30米生活防水',2968,TRUE),
(13,13,'CLASSIC PETITE | 40MM','B O N D I','Classic Petite Bondi 超薄手表配有白色皮质表带，简约优雅，贴在手腕间，尽显迷人活力。',1290,'36mm','蛋壳白','牛皮革','是','6mm','日本石英机芯','蓝/红/白','30米生活防水',2968,TRUE),
(14,14,'CLASSIC PETITE | 28MM','A S H F I E L D','Classic Petite Ashfield，极致纤薄的手表，搭配哑光黑色网格表带和精致黑色表盘，贴在手腕间，倍感优雅迷人。',1290,'28mm','黑色','金属','是','6mm','日本石英机芯','黑色','30米生活防水',2968,TRUE),
(15,15,'CLASSIC PETITE | 28MM','S T E R L I N G','CLASSIC PETITE系列，可搭配精致细密的金属表带，简致12指针刻度，绽放于手腕的细节艺术，闪耀迷人光泽。',1290,'28mm','蛋壳白','金属','是','6mm','日本石英机芯','银色','30米生活防水',2968,TRUE),
(16,16,'CLASSIC PETITE | 28MM','S T M A W E S','Classic Petite 简约优美的造型搭配 St Mawes 表带，更显时尚。St Mawes 表带采用意大利真皮材质，是一款我们最受追捧的表带。',1190,'28mm','蛋壳白','牛皮革','是','6mm','日本石英机芯','棕色','30米生活防水',2968,TRUE),
(17,17,'CLASSIC | 52','R I N G','全新戒指，成就经典搭配
Daniel Wellington全新经典戒指，时尚穿搭的点睛之选。 精致、典雅并且轻盈的Daniel Wellington戒指，表面镀以明亮银色或玫瑰金色。 与我们的经典手镯或是极简腕表搭配，打造全新的经典造型。',290,'52','蛋壳白','金属','是','6mm','日本石英机芯','金色','30米生活防水',2968,TRUE),
(18,18,'CLASSIC | 58','R I N G','全新戒指，成就经典搭配
Daniel Wellington全新经典戒指，时尚穿搭的点睛之选。 精致、典雅并且轻盈的Daniel Wellington戒指，表面镀以明亮银色或玫瑰金色。 与我们的经典手镯或是极简腕表搭配，打造全新的经典造型。',290,'52','蛋壳白','金属','是','6mm','日本石英机芯','金色','30米生活防水',2968,TRUE),
(19,19,'CLASSIC | SMALL','S L I M B R A C E L E T S A T I N W H I T E','永恒经典
DW全新腕饰系列，灵感源于指针周而复始地划过表盘，优雅的线条轨迹化为腕间手镯弧度，延伸简约风格。',590,'52','蛋壳白','金属','是','6mm','日本石英机芯','金色','30米生活防水',2968,TRUE),
(20,20,'CLASSIC | SMALL','B R A C E L E T','CLASSIC BRACELET系列，简约精致的字母印刻与可调节的开口设计，勾勒出百变的简约风格，恰到好处地展现腕上的时尚态度。',490,'52','蛋壳白','金属','是','6mm','日本石英机芯','金色','30米生活防水',2968,TRUE);



#dw手表图片
CREATE TABLE dw_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #dw手表编号
  sm1 VARCHAR(128),            #小图片路径1
sm2 VARCHAR(128),            #小图片路径2
sm3 VARCHAR(128),            #小图片路径3
sm4 VARCHAR(128),            #小图片路径4

  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128),             #大图片路径
down VARCHAR(128)             #下方图片路径
);
INSERT INTO dw_laptop_pic VALUES
(NULL, 1,'sm_1_1.jpg','sm_1_2.jpg','sm_1_3.jpg','sm_1_4.jpg','md_1.jpg','lg_1.jpg','down_1.jpg'),
(NULL, 2,'sm_2_1.jpg','sm_2_2.jpg','sm_2_3.jpg','sm_2_4.jpg','md_2.jpg','lg_2.jpg','down_2.jpg'),
(NULL, 3,'sm_3_1.jpg','sm_3_2.jpg','sm_3_3.jpg','sm_3_4.jpg','md_3.jpg','lg_3.jpg','down_3.jpg'),
(NULL, 4,'sm_4_1.jpg','sm_4_2.jpg','sm_4_3.jpg','sm_4_4.jpg','md_4.jpg','lg_4.jpg','down_4.jpg');









