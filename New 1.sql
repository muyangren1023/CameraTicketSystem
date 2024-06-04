-- ----------------------------
-- Table structure for t_activity
-- ----------------------------
DROP TABLE t_activity;
DROP TABLE t_admin;
DROP TABLE t_arrangement;
DROP TABLE t_cart;
DROP TABLE t_daily_work;
DROP TABLE t_film;
DROP TABLE t_film_evaluate;
DROP TABLE t_order;
DROP TABLE t_leaving_message;
DROP TABLE t_user;
DROP TABLE t_order_exception;
DROP TABLE t_poster;
DROP TABLE t_registration;
DROP TABLE t_role;
DROP TABLE t_upload;
DROP TABLE t_worker_evaluate;
DROP TABLE t_worker;


CREATE TABLE t_activity (
  id varchar(255),
  content CLOB NOT NULL,
  num NUMBER(11) DEFAULT 0,
  start_time varchar(255) NOT NULL,
  end_time varchar(255) NOT NULL,
  create_at varchar(255) NOT NULL,
   PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_activity
-- ----------------------------

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE t_admin (
  id varchar(255) ,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  avatar varchar(255) DEFAULT 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png',
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO t_admin VALUES ('77cc5dc7-b769-4983-a555-0a0d37e3d9b3', '@admin', '123456', 'http://localhost:8888/api/upload?id=90d36f92-619e-44a4-a52a-2483f87c3e55');

-- ----------------------------
-- Table structure for t_arrangement
-- ----------------------------
CREATE TABLE t_arrangement (
  id varchar(255) ,
  fid varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  seat_number NUMBER(11) NOT NULL,
  box_office NUMBER(11) NOT NULL,
  price decimal(10,2) NOT NULL,
  type varchar(255) NOT NULL,
  datet varchar(255),
  start_time varchar(255) NOT NULL,
  end_time varchar(255) NOT NULL,
  founder varchar(255),
  create_at varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_arrangement
-- ----------------------------
INSERT INTO t_arrangement VALUES ('078be82a1b1ff0a08516216a979babb3', 'dbd62f019c06c94a1994e282905b5cc5', '我的姐姐', '40', '0', '30.50', '2D放映', '2021-05-03', '15:00:00', '17:00:00', '', '2021-03-31 16:26:03');
INSERT INTO t_arrangement VALUES ('163bdfd500e068bfb8395efbcd0e6ba2', '880155346cf8a2af01a68454e663daa8', '哥斯拉大战金刚 Godzilla vs Kong (2021)', '40', '0', '30.00', '2D放映', '2021-03-27', '09:00:00', '11:00:00', '', '2021-03-31 16:18:12');
INSERT INTO t_arrangement VALUES ('4d853f9c9093ea67abc1c9286fffdbe1', '7555aa5256f2b00312d1bdf3c81e0ba1', ' 你好，李焕英', '40', '0', '45.00', '2D放映', '2021-04-01', '06:00:00', '08:00:00', '', '2021-03-31 16:26:46');
INSERT INTO t_arrangement VALUES ('f082816d96fbe127bdfa4d50c7ff2777', '3a803a8725db3268a99a6dc083247312', '刺杀小说家', '40', '0', '35.50', '3D放映', '2021-04-03', '12:00:00', '14:10:00', '', '2021-03-31 16:47:50');

-- ----------------------------
-- Table structure for t_cart
-- ----------------------------
CREATE TABLE t_cart (
  id varchar(255) ,
  useid varchar(255) NOT NULL,
  aid varchar(255) NOT NULL,
  phone varchar(11) NOT NULL,
  status NUMBER(2) ,
  seats varchar(255) NOT NULL,
  price decimal(10,2) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_cart
-- ----------------------------

-- ----------------------------
-- Table structure for t_daily_work
-- ----------------------------
CREATE TABLE t_daily_work (
  id varchar(255) ,
  type NUMBER(11) NOT NULL,
  content varchar(255) NOT NULL,
  create_at varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_daily_work
-- ----------------------------

-- ----------------------------
-- Table structure for t_film
-- ----------------------------
CREATE TABLE t_film (
  id varchar(255) ,
  name varchar(255) NOT NULL,
  release_time varchar(255) NOT NULL,
  type varchar(255) NOT NULL,
  status NUMBER(3) NOT NULL,
  region varchar(255) NOT NULL,
  hot NUMBER(10) NOT NULL,
  introduction CLOB NOT NULL,
  cover varchar(255) NOT NULL,
  duration NUMBER(3) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_film
-- ----------------------------

-- ----------------------------
-- Table structure for t_film_evaluate
-- ----------------------------
CREATE TABLE t_film_evaluate (
  id varchar(255) ,
  fid varchar(255) NOT NULL,
  useid varchar(255) NOT NULL,
  star NUMBER(10,0) NOT NULL,
  comm CLOB,
  create_at varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_film_evaluate
-- ----------------------------
INSERT INTO t_film_evaluate  VALUES ('d51e09a3abf21c4809cff60a0b0da3b4', '3a803a8725db3268a99a6dc083247312', '7e4b3010-ce19-436b-9683-a7d2037dded7', '5', '不错啊', '2024-05-31 16:48:51');

-- ----------------------------
-- Table structure for t_leaving_message
-- ----------------------------
CREATE TABLE t_leaving_message (
  id varchar(255),
  useid varchar(255) NOT NULL,
  content CLOB NOT NULL,
  reply CLOB,
  create_at varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_leaving_message
-- ----------------------------
INSERT INTO t_leaving_message VALUES ('e4a151c2cd592e02ab211efbef25cf7c', '1db44f28-c2ac-470b-a889-56ed14ab7202', '系统做的不错啊', 'null', '2024-05-31 17:09:01');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
CREATE TABLE t_order (
  id varchar(255) ,
  useid varchar(255) NOT NULL,
  phone varchar(11) NOT NULL,
  aid varchar(255) NOT NULL,
  seats varchar(255) NOT NULL,
  price decimal(10,2) NOT NULL,
  status NUMBER(11) NOT NULL,
  create_at varchar(255) NOT NULL,
  pay_at varchar(255),
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_exception
-- ----------------------------
CREATE TABLE t_order_exception (
  id varchar(255),
  oid varchar(255) NOT NULL,
  reason varchar(255) NOT NULL,
  status NUMBER(3,0) NOT NULL,
  result varchar(255) DEFAULT NULL,
  reviewer varchar(255) NOT NULL,
  create_at varchar(255) NOT NULL,
  end_at varchar(255) DEFAULT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_order_exception
-- ----------------------------

-- ----------------------------
-- Table structure for t_poster
-- ----------------------------
CREATE TABLE t_poster (
  id varchar(255),
  title varchar(255) NOT NULL,
  url varchar(255) NOT NULL,
  status NUMBER(3,0) NOT NULL,
  create_at varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_poster
-- ----------------------------

-- ----------------------------
-- Table structure for t_registration
-- ----------------------------
CREATE TABLE t_registration (
  id varchar(255) ,
  aid varchar(255) NOT NULL,
  useid varchar(255) NOT NULL,
  create_at varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_registration
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
CREATE TABLE t_role (
  id varchar(50) ,
  wid varchar(50) NOT NULL,
  value varchar(255) NOT NULL,
  create_at varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_role
-- ----------------------------

-- ----------------------------
-- Table structure for t_upload
-- ----------------------------
CREATE TABLE t_upload (
  id varchar(255) ,
  bytes BLOB NOT NULL,
  md5 varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_upload
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE t_user (
  id varchar(50) ,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  avatar varchar(255) DEFAULT 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png',
  nickname varchar(255) DEFAULT 'User',
  email varchar(255) ,
  birthday varchar(255) ,
  gender varchar(2) ,
  info varchar(255) ,
  create_at varchar(50) NOT NULL,
  update_at varchar(50) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_worker
-- ----------------------------
CREATE TABLE t_worker (
  id varchar(255) ,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  nickname varchar(255) NOT NULL,
  phone varchar(255) NOT NULL,
  entry NUMBER(3,0) NOT NULL,
  department varchar(255) NOT NULL,
  gender varchar(255) NOT NULL,
  avatar varchar(255) DEFAULT 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png',
  create_at varchar(255) NOT NULL,
  update_at varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_worker
-- ----------------------------

-- ----------------------------
-- Table structure for t_worker_evaluate
-- ----------------------------
CREATE TABLE t_worker_evaluate (
  id varchar(255) NOT NULL,
  wid varchar(255) NOT NULL,
  useid varchar(255) NOT NULL,
  content varchar(255) DEFAULT NULL,
  type varchar(255) NOT NULL,
  create_at varchar(255) NOT NULL,
  PRIMARY KEY(id)
);

-- ----------------------------
-- Records of t_worker_evaluate
-- ----------------------------
