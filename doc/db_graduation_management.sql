/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : db_graduation_management

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-09-25 14:14:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_announcement
-- ----------------------------
DROP TABLE IF EXISTS `t_announcement`;
CREATE TABLE `t_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告表',
  `context` varchar(300) DEFAULT NULL,
  `inputMan` varchar(20) DEFAULT NULL,
  `lastModifyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_announcement
-- ----------------------------
INSERT INTO `t_announcement` VALUES ('2', '测试公告1', 'admin', '2018-12-17 14:35:15');
INSERT INTO `t_announcement` VALUES ('3', '测试公告2', 'admin', '2018-12-17 14:35:19');
INSERT INTO `t_announcement` VALUES ('11', 'admin 公告！！', 'admin', '2018-12-17 15:01:09');
INSERT INTO `t_announcement` VALUES ('22', '教师的公告', '徐虹', '2018-12-17 15:57:48');
INSERT INTO `t_announcement` VALUES ('23', '这是一条公告', 'admin', '2018-12-17 20:53:06');
INSERT INTO `t_announcement` VALUES ('24', '测试公告3', 'admin', '2018-12-19 08:51:33');
INSERT INTO `t_announcement` VALUES ('26', '测试公告4', 'admin', '2019-03-31 14:22:18');
INSERT INTO `t_announcement` VALUES ('27', '请各位学生注意，本周五之前上交ppt', '徐虹', '2019-05-30 15:59:28');

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '院系表，id为主键',
  `departmentName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('25', '机电工程学院');
INSERT INTO `t_department` VALUES ('26', '机械工程学院');
INSERT INTO `t_department` VALUES ('27', '材料科学与工程学院');
INSERT INTO `t_department` VALUES ('28', '化学工程与技术学院');
INSERT INTO `t_department` VALUES ('29', '信息与通讯工程学院');
INSERT INTO `t_department` VALUES ('30', '仪器与电子学院');
INSERT INTO `t_department` VALUES ('31', '计算机学院');
INSERT INTO `t_department` VALUES ('32', '理学院');
INSERT INTO `t_department` VALUES ('33', '经济与管理学院');
INSERT INTO `t_department` VALUES ('34', '人文社会科学院');
INSERT INTO `t_department` VALUES ('35', '体育学院');
INSERT INTO `t_department` VALUES ('36', '艺术学院');
INSERT INTO `t_department` VALUES ('37', '软件学院');
INSERT INTO `t_department` VALUES ('38', '环境与安全学院');
INSERT INTO `t_department` VALUES ('39', '电气与控制工程学院');
INSERT INTO `t_department` VALUES ('40', '能源动力工程学院');
INSERT INTO `t_department` VALUES ('41', '研究生院');
INSERT INTO `t_department` VALUES ('42', '国际教育学院');
INSERT INTO `t_department` VALUES ('43', '继续教育学院');
INSERT INTO `t_department` VALUES ('44', '国防教育学院');
INSERT INTO `t_department` VALUES ('45', '大气学院');
INSERT INTO `t_department` VALUES ('46', '信息商务学院');

-- ----------------------------
-- Table structure for t_doubt
-- ----------------------------
DROP TABLE IF EXISTS `t_doubt`;
CREATE TABLE `t_doubt` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `studentId` int(4) NOT NULL,
  `studentDoubt` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `t_doubt_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_doubt
-- ----------------------------
INSERT INTO `t_doubt` VALUES ('1', '16', '怎么提交开题报告', '先这样这样，然后那样那样，再这样一下，就行了。');
INSERT INTO `t_doubt` VALUES ('2', '16', '请问中期答辩需要准备什么东西？', '需要提交需求分析报告，概要设计报告和数据库设计报告并审核过关');

-- ----------------------------
-- Table structure for t_major
-- ----------------------------
DROP TABLE IF EXISTS `t_major`;
CREATE TABLE `t_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业表，id为主键',
  `majorName` varchar(30) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL COMMENT '关联院系',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `departmentId` (`departmentId`) USING BTREE,
  CONSTRAINT `t_major_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `t_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_major
-- ----------------------------
INSERT INTO `t_major` VALUES ('1', '现代火炮工程与技术', '25');
INSERT INTO `t_major` VALUES ('2', '自主武器工程与技术', '25');
INSERT INTO `t_major` VALUES ('3', '现代导弹工程与技术', '25');
INSERT INTO `t_major` VALUES ('4', '机械工程', '26');
INSERT INTO `t_major` VALUES ('5', '机械设计制造及其自动化', '26');
INSERT INTO `t_major` VALUES ('6', '过程装配与控制工程', '26');
INSERT INTO `t_major` VALUES ('7', '高分子材料与工程', '27');
INSERT INTO `t_major` VALUES ('8', '金属材料及特种成型技术', '27');
INSERT INTO `t_major` VALUES ('9', '化学工程与工艺', '28');
INSERT INTO `t_major` VALUES ('10', '制药工程', '28');
INSERT INTO `t_major` VALUES ('11', '图像处理与信息反演', '29');
INSERT INTO `t_major` VALUES ('12', '智能信息处理', '29');
INSERT INTO `t_major` VALUES ('13', '仪器科学与技术学科', '30');
INSERT INTO `t_major` VALUES ('14', '电子科学与技术学科', '30');
INSERT INTO `t_major` VALUES ('15', '数字媒体', '31');
INSERT INTO `t_major` VALUES ('16', '计算机科学与技术', '31');
INSERT INTO `t_major` VALUES ('17', '物联网', '31');

-- ----------------------------
-- Table structure for t_project_source
-- ----------------------------
DROP TABLE IF EXISTS `t_project_source`;
CREATE TABLE `t_project_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目源码表',
  `studentId` int(11) NOT NULL,
  `projectScore` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_project_source_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_project_source
-- ----------------------------

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentNo` varchar(20) DEFAULT NULL,
  `studentName` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `majorId` int(11) NOT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `inputMan` varchar(20) DEFAULT NULL,
  `lastModifyTime` datetime DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `majorId` (`majorId`) USING BTREE,
  CONSTRAINT `t_student_ibfk_2` FOREIGN KEY (`majorId`) REFERENCES `t_major` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('9', '2015051036', '韩旭', '男', '16', '2015级', 'admin', '2019-05-25 00:03:58', '17800001000', '1479885217@qq.com');
INSERT INTO `t_student` VALUES ('15', '2015051037', '覃颖', '女', '4', '2014级', 'admin', '2018-04-12 13:45:41', '17888882888', 'fdasf5646@fox.com');
INSERT INTO `t_student` VALUES ('16', '2015051039', '程洪', '男', '16', '2015级', 'admin', '2019-05-23 22:00:55', '18381054145', '1261780252@qq.com');
INSERT INTO `t_student` VALUES ('17', '2015051038', '谭力', '男', '10', '2013级', 'admin', '2018-04-16 10:43:35', '17300000000', '359746845@qq.com');
INSERT INTO `t_student` VALUES ('18', '2015051030', '王小二', '男', '15', '2015级', 'admin', '2019-04-24 17:27:36', '13547945487', 'wanxioaer@firefox.com');
INSERT INTO `t_student` VALUES ('19', '2015051027', '邓书洁', '女', '1', '2014级', 'admin', '2019-05-30 14:32:32', '18359746447', '18359746447@fix.com');

-- ----------------------------
-- Table structure for t_student_opening_report_task_book
-- ----------------------------
DROP TABLE IF EXISTS `t_student_opening_report_task_book`;
CREATE TABLE `t_student_opening_report_task_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生提交开题报告和任务书',
  `studentId` int(11) NOT NULL,
  `studentOpeningResport` varchar(100) DEFAULT NULL,
  `studentTaskBook` varchar(100) DEFAULT NULL,
  `studentKeXingXing` varchar(100) DEFAULT NULL,
  `studentXuQiu` varchar(100) DEFAULT NULL,
  `studentGaiYao` varchar(100) DEFAULT NULL,
  `studentShuJuKu` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `completion` int(1) DEFAULT NULL COMMENT '1-未通过  2-通过',
  `openscore` varchar(10) DEFAULT NULL,
  `kexingscore` varchar(10) DEFAULT NULL,
  `xuqiuscore` varchar(10) DEFAULT NULL,
  `gaiyaoscore` varchar(10) DEFAULT NULL,
  `shujukuscore` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_student_opening_report_task_book_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_student_opening_report_task_book
-- ----------------------------
INSERT INTO `t_student_opening_report_task_book` VALUES ('10', '16', 'E:\\BSM\\student\\16\\开题报告.doc', null, 'E:\\BSM\\student\\16\\可行性分析报告.doc', 'E:\\BSM\\student\\16\\需求分析报告.doc', 'E:\\BSM\\student\\16\\概要设计报告.doc', null, null, '2', 'A', null, null, null, null);
INSERT INTO `t_student_opening_report_task_book` VALUES ('11', '18', 'E:\\BSM\\student\\18\\开题报告.doc', null, null, null, null, null, null, null, 'B', null, null, null, null);

-- ----------------------------
-- Table structure for t_student_progress
-- ----------------------------
DROP TABLE IF EXISTS `t_student_progress`;
CREATE TABLE `t_student_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生进度通知填写表',
  `progressId` int(11) NOT NULL,
  `context` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `progressId` (`progressId`) USING BTREE,
  CONSTRAINT `t_student_progress_ibfk_2` FOREIGN KEY (`progressId`) REFERENCES `t_teacher_progress_notification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_student_progress
-- ----------------------------

-- ----------------------------
-- Table structure for t_student_score
-- ----------------------------
DROP TABLE IF EXISTS `t_student_score`;
CREATE TABLE `t_student_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生论文成绩表',
  `studentId` int(11) NOT NULL,
  `thesisResult` int(11) DEFAULT NULL,
  `inputMan` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_student_score_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_student_score
-- ----------------------------

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacherNo` varchar(20) DEFAULT NULL,
  `teacherName` varchar(20) DEFAULT NULL,
  `departmentId` int(11) NOT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `inputMan` varchar(20) DEFAULT NULL,
  `lastModifyTime` datetime DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `zhicheng` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `departmentId` (`departmentId`) USING BTREE,
  CONSTRAINT `t_teacher_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `t_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('4', 't_01', '王洁', '45', '女', 'admin', '2018-04-11 09:51:53', '17800000000', '17800000000@qq.com', '讲师');
INSERT INTO `t_teacher` VALUES ('11', 't_02', '李小龙', '41', '男', 'admin', '2018-04-11 09:55:45', '12300001000', '12300001000@qq.com', '副教授');
INSERT INTO `t_teacher` VALUES ('12', 't_03', '徐虹', '31', '女', 't_03', '2019-05-25 00:34:27', '13548919724', '778974564@qq.com', '教授');

-- ----------------------------
-- Table structure for t_teacher_opening_report_task_book
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher_opening_report_task_book`;
CREATE TABLE `t_teacher_opening_report_task_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师发布任务书和开题报告',
  `teacherId` int(11) NOT NULL,
  `openingReport` varchar(100) DEFAULT NULL,
  `taskBook` varchar(100) DEFAULT NULL,
  `keXingXing` varchar(100) DEFAULT NULL,
  `xuQiu` varchar(100) DEFAULT NULL,
  `gaiYao` varchar(100) DEFAULT NULL,
  `shuJuKu` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `thesisTitleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `teacherId` (`teacherId`) USING BTREE,
  KEY `thesisTitleId` (`thesisTitleId`) USING BTREE,
  CONSTRAINT `t_teacher_opening_report_task_book_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `t_teacher` (`id`),
  CONSTRAINT `t_teacher_opening_report_task_book_ibfk_2` FOREIGN KEY (`thesisTitleId`) REFERENCES `t_thesis_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_teacher_opening_report_task_book
-- ----------------------------
INSERT INTO `t_teacher_opening_report_task_book` VALUES ('22', '4', 'E:\\BSM\\teacher\\4\\3\\课题2的开题报告.docx', 'E:\\BSM\\teacher\\4\\3\\课题2的任务书.docx', null, null, null, null, null, '3');
INSERT INTO `t_teacher_opening_report_task_book` VALUES ('23', '11', 'E:\\BSM\\teacher\\11\\4\\课题3的开题报告.docx', 'E:\\BSM\\teacher\\11\\4\\课题3的任务书.docx', null, null, null, null, null, '4');
INSERT INTO `t_teacher_opening_report_task_book` VALUES ('24', '12', 'E:\\BSM\\teacher\\12\\2\\《毕业设计管理系统》的开题报告.doc', 'E:\\BSM\\teacher\\12\\2\\《毕业设计管理系统》的任务书.docx', 'E:\\BSM\\teacher\\12\\2\\《毕业设计管理系统》的可行性分析报告.doc', 'E:\\BSM\\teacher\\12\\2\\《毕业设计管理系统》的需求分析报告.doc', 'E:\\BSM\\teacher\\12\\2\\《毕业设计管理系统》的概要设计报告.doc', 'E:\\BSM\\teacher\\12\\2\\《毕业设计管理系统》的数据库设计报告.doc', null, '2');

-- ----------------------------
-- Table structure for t_teacher_progress_notification
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher_progress_notification`;
CREATE TABLE `t_teacher_progress_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '进度通知表，教师填写',
  `context` varchar(1000) DEFAULT NULL,
  `inputMan` varchar(20) DEFAULT NULL,
  `inputTime` datetime DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `state` int(1) DEFAULT NULL COMMENT '0--初始化  1---未完成  2---已完成',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  KEY `teacherId` (`teacherId`) USING BTREE,
  CONSTRAINT `t_teacher_progress_notification_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`),
  CONSTRAINT `t_teacher_progress_notification_ibfk_2` FOREIGN KEY (`teacherId`) REFERENCES `t_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_teacher_progress_notification
-- ----------------------------
INSERT INTO `t_teacher_progress_notification` VALUES ('3', '完成第一阶段的任务：开题报告的书写。', '徐虹', '2018-12-17 09:47:49', '16', '12', '1');
INSERT INTO `t_teacher_progress_notification` VALUES ('5', '完成开题报告', '徐虹', '2019-05-28 14:48:04', '18', '12', '0');

-- ----------------------------
-- Table structure for t_thesis_description
-- ----------------------------
DROP TABLE IF EXISTS `t_thesis_description`;
CREATE TABLE `t_thesis_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '论文具体描述',
  `thesisId` int(11) NOT NULL,
  `thesisDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `thesisId` (`thesisId`) USING BTREE,
  CONSTRAINT `t_thesis_description_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_thesis_description
-- ----------------------------

-- ----------------------------
-- Table structure for t_thesis_information
-- ----------------------------
DROP TABLE IF EXISTS `t_thesis_information`;
CREATE TABLE `t_thesis_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生提交毕业论文表',
  `studentId` int(11) NOT NULL,
  `thesisText` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_thesis_information_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_thesis_information
-- ----------------------------
INSERT INTO `t_thesis_information` VALUES ('8', '9', 'E:\\BSM\\student\\9\\142001毕业论文.docx', '2', null);
INSERT INTO `t_thesis_information` VALUES ('9', '16', 'E:\\BSM\\student\\16\\毕设论文.doc', '2', null);

-- ----------------------------
-- Table structure for t_thesis_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_thesis_paper`;
CREATE TABLE `t_thesis_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) DEFAULT NULL,
  `paperInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_thesis_paper_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_thesis_paper
-- ----------------------------
INSERT INTO `t_thesis_paper` VALUES ('1', '16', 'E:\\BSM\\thesis\\16\\程洪的毕业论文.doc');

-- ----------------------------
-- Table structure for t_thesis_title
-- ----------------------------
DROP TABLE IF EXISTS `t_thesis_title`;
CREATE TABLE `t_thesis_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师提交课题',
  `thesisName` varchar(30) DEFAULT NULL,
  `teacherId` int(11) NOT NULL,
  `submitTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '课题未审核-1 已审核通过-2 不通过-3',
  `inputMan` varchar(20) DEFAULT NULL,
  `nandu` varchar(10) DEFAULT NULL,
  `liang` varchar(10) DEFAULT NULL,
  `from` varchar(25) DEFAULT NULL,
  `leixing` varchar(255) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `teacherId` (`teacherId`) USING BTREE,
  CONSTRAINT `t_thesis_title_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `t_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_thesis_title
-- ----------------------------
INSERT INTO `t_thesis_title` VALUES ('2', '毕业设计管理系统', '12', '2018-04-11 10:14:34', '2', '徐虹', '适中', '适中', '教师自拟', '设计开发', '系统基于SSM框架和前端bootstrap框架，涵盖毕业设计整个流程。blablabla...');
INSERT INTO `t_thesis_title` VALUES ('3', '课题2', '4', '2018-04-11 15:28:34', '2', '王洁', '偏难', '偏大', '学生自拟', '应用研究', '这是课题2的描述');
INSERT INTO `t_thesis_title` VALUES ('4', '课题3', '11', '2018-04-12 12:11:28', '2', '李小龙', '简单', '偏小', '科研项目', '理论研究', '这是课题3的描述');
INSERT INTO `t_thesis_title` VALUES ('9', '课题5', '11', '2018-04-12 12:12:16', '2', '李小龙', '适中', '适中', '教师自拟', '设计开发', '这是课题5的描述...');
INSERT INTO `t_thesis_title` VALUES ('10', '课题6', '4', '2018-04-12 12:13:01', '2', '王洁', '适中', '适中', '教师自拟', '设计开发', '这是课题6的描述...');
INSERT INTO `t_thesis_title` VALUES ('11', '课题7', '12', '2018-04-12 12:13:21', '2', '徐虹', '适中', '适中', '教师自拟', '设计开发', '这是课题7的描述');
INSERT INTO `t_thesis_title` VALUES ('13', '课题8', '11', '2018-04-17 21:06:50', '2', '李小龙', '适中', '适中', '教师自拟', '设计开发', '这是课题8的描述');
INSERT INTO `t_thesis_title` VALUES ('14', '志愿者管理系统', '12', '2019-04-19 23:33:55', '2', '徐虹', '适中', '适中', '教师自拟', '设计开发', '这是一个志愿者管理系统，管理员可以在上面提交活动寻找志愿者，志愿者也可以通过该系统找到适合自己的志愿活动。');
INSERT INTO `t_thesis_title` VALUES ('15', '商城', '12', '2019-04-23 10:08:02', '1', '徐虹', '适中', '适中', '教师自拟', '设计开发', '发送方法');
INSERT INTO `t_thesis_title` VALUES ('19', '网吧管理系统的设计与实现', '12', '2019-05-27 00:21:21', '1', '徐虹', '简单', '适中', '教师自拟', '设计开发', '网吧管理系统的设计与实现阿萨法法司法所地方噶速度噶速度高');

-- ----------------------------
-- Table structure for t_topic
-- ----------------------------
DROP TABLE IF EXISTS `t_topic`;
CREATE TABLE `t_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选题信息表',
  `thesisId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `selectTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `thesisId` (`thesisId`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_topic_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`),
  CONSTRAINT `t_topic_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_topic
-- ----------------------------
INSERT INTO `t_topic` VALUES ('47', '3', '9', '2018-04-16 15:32:12');
INSERT INTO `t_topic` VALUES ('49', '4', '17', '2018-04-23 16:42:41');
INSERT INTO `t_topic` VALUES ('50', '9', '15', '2018-04-23 17:11:43');
INSERT INTO `t_topic` VALUES ('54', '2', '16', '2019-04-14 23:46:40');

-- ----------------------------
-- Table structure for t_topic_fast
-- ----------------------------
DROP TABLE IF EXISTS `t_topic_fast`;
CREATE TABLE `t_topic_fast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thesisId` int(11) NOT NULL,
  `studentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `thesisId` (`thesisId`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_topic_fast_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`),
  CONSTRAINT `t_topic_fast_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_topic_fast
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userNo` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `permission` int(2) DEFAULT NULL COMMENT '学生权限-1 教师权限-2 管理员权限-3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('15', 'admin', 'admin', '3');
INSERT INTO `t_user` VALUES ('16', 't_01', '6666', '2');
INSERT INTO `t_user` VALUES ('18', '2015051039', '123456', '1');
INSERT INTO `t_user` VALUES ('19', 't_02', '6666', '2');
INSERT INTO `t_user` VALUES ('20', '2015051036', '123456', '1');
INSERT INTO `t_user` VALUES ('21', '2015051037', '123456', '1');
INSERT INTO `t_user` VALUES ('22', '2015051038', '123456', '1');
INSERT INTO `t_user` VALUES ('23', 't_03', '666666', '2');
INSERT INTO `t_user` VALUES ('24', '2015051030', '123456', '1');
INSERT INTO `t_user` VALUES ('25', '2015051027', '123456', '1');
INSERT INTO `t_user` VALUES ('26', null, '123456', '1');
INSERT INTO `t_user` VALUES ('27', null, '123456', '1');
INSERT INTO `t_user` VALUES ('28', null, '123456', '1');
INSERT INTO `t_user` VALUES ('29', null, '123456', '1');
INSERT INTO `t_user` VALUES ('30', null, '123456', '1');
INSERT INTO `t_user` VALUES ('31', null, '123456', '1');
INSERT INTO `t_user` VALUES ('32', null, '123456', '1');
INSERT INTO `t_user` VALUES ('33', null, '123456', '1');
INSERT INTO `t_user` VALUES ('34', null, '123456', '1');
INSERT INTO `t_user` VALUES ('35', null, '123456', '1');

-- ----------------------------
-- Table structure for t_zhiyuan
-- ----------------------------
DROP TABLE IF EXISTS `t_zhiyuan`;
CREATE TABLE `t_zhiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选题信息表',
  `thesisId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `selectTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `thesisId` (`thesisId`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_zhiyuan_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`),
  CONSTRAINT `t_zhiyuan_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_zhiyuan
-- ----------------------------
INSERT INTO `t_zhiyuan` VALUES ('67', '19', '18', '2019-07-06 23:56:32');
DROP TRIGGER IF EXISTS `insert_studentNo_to_user`;
DELIMITER ;;
CREATE TRIGGER `insert_studentNo_to_user` AFTER INSERT ON `t_student` FOR EACH ROW BEGIN
INSERT INTO t_user VALUES(null,NEW.studentNo,'123456',1);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `delete_studentNo_to_user`;
DELIMITER ;;
CREATE TRIGGER `delete_studentNo_to_user` AFTER DELETE ON `t_student` FOR EACH ROW BEGIN
DELETE FROM t_user WHERE userNo=OLD.studentNo;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insert_teacherNo_to_user`;
DELIMITER ;;
CREATE TRIGGER `insert_teacherNo_to_user` AFTER INSERT ON `t_teacher` FOR EACH ROW BEGIN
INSERT INTO t_user VALUES(null,NEW.teacherNo,'6666',2);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `delete_teacher_to_user`;
DELIMITER ;;
CREATE TRIGGER `delete_teacher_to_user` AFTER DELETE ON `t_teacher` FOR EACH ROW BEGIN 
 DELETE FROM t_user WHERE userNo=OLD.teacherNo;
END
;;
DELIMITER ;
