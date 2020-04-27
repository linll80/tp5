-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-06-26 05:11:12
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpshop`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_adress`
--

CREATE TABLE `tp_adress` (
  `id` int(11) NOT NULL,
  `user_id` mediumint(9) NOT NULL COMMENT '用户id',
  `name` varchar(60) NOT NULL COMMENT '姓名',
  `country` varchar(60) NOT NULL COMMENT '县城',
  `province` varchar(60) NOT NULL COMMENT '省',
  `city` varchar(60) NOT NULL COMMENT '市',
  `address` varchar(300) NOT NULL COMMENT '详细地址',
  `phone` char(11) NOT NULL COMMENT '手机号',
  `tel` char(12) NOT NULL COMMENT '固话',
  `zipcode` char(10) NOT NULL COMMENT '邮编',
  `sign_building` varchar(300) NOT NULL COMMENT '地址别名',
  `best_time` varchar(200) NOT NULL COMMENT '最佳送货时间',
  `email` varchar(60) NOT NULL COMMENT '邮箱'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_adress`
--

INSERT INTO `tp_adress` (`id`, `user_id`, `name`, `country`, `province`, `city`, `address`, `phone`, `tel`, `zipcode`, `sign_building`, `best_time`, `email`) VALUES
(1, 1, 'tongpan', '太平区', '辽宁省', '阜新市', '短发撒的发发', '15878452564', '2416516', '5465', '撒的发', '明天', '546546@163.com');

-- --------------------------------------------------------

--
-- 表的结构 `tp_alternate_img`
--

CREATE TABLE `tp_alternate_img` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(60) NOT NULL COMMENT '标题',
  `img_src` varchar(60) NOT NULL COMMENT '图片地址',
  `link_url` varchar(60) NOT NULL COMMENT '链接地址',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示状态 1：显示 0：隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_alternate_img`
--

INSERT INTO `tp_alternate_img` (`id`, `title`, `img_src`, `link_url`, `sort`, `status`) VALUES
(7, '轮播3', '20180131/f16dbd4c3b7d6bead8f518d711d3b624.png', 'http://baidu.com', 1, 1),
(6, '轮播2', '20180131/ab5ad5212398c5fb9b6003dd4a5a4028.jpg', 'http://tongpankt.com', 2, 1),
(5, '轮播1', '20180131/11414e12f752ff3643e75f6872f027a8.jpg', 'http://tongpankt.com', 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_article`
--

CREATE TABLE `tp_article` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '文章id',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `keywords` varchar(60) NOT NULL COMMENT '关键词',
  `description` varchar(150) NOT NULL COMMENT '描述',
  `author` varchar(10) NOT NULL COMMENT '作者',
  `email` varchar(20) NOT NULL COMMENT '电子邮箱',
  `link_url` varchar(100) NOT NULL COMMENT '外链',
  `thumb` varchar(100) NOT NULL COMMENT '缩略图',
  `content` longtext NOT NULL COMMENT '内容',
  `show_top` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1：是 0：否',
  `show_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示 1:是  0：否',
  `cate_id` smallint(6) NOT NULL COMMENT '所属栏目',
  `addtime` int(10) NOT NULL COMMENT '发布时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_article`
--

INSERT INTO `tp_article` (`id`, `title`, `keywords`, `description`, `author`, `email`, `link_url`, `thumb`, `content`, `show_top`, `show_status`, `cate_id`, `addtime`) VALUES
(13, '配送支付智能查询', '', '', '', '', '', '', '<p>配送支付智能查询</p>', 0, 1, 5, 1516087473),
(9, '售后流程', '', '', '', '', '', '', '<p>售后流程售后流程售后流程</p>', 0, 1, 4, 1516087423),
(10, '购物流程', '', '', '', '', '', '', '<p>购物流程</p>', 0, 1, 4, 1516087437),
(11, '订购方式', '', '', '', '', '', '', '<p>订购方式</p>', 0, 1, 4, 1516087448),
(12, '货到付款区域', '', '', '', '', '', '', '<p>货到付款区域11</p>', 0, 1, 5, 1516087461),
(14, '支付方式说明', '', '', '', '', '', '', '<p>支付方式说明</p>', 0, 1, 5, 1516087483),
(15, '资金管理', '', '', '', '', '', '', '<p>资金管理</p>', 0, 1, 7, 1516087493),
(16, '我的收藏', '', '', '', '', '', '', '<p>我的收藏</p>', 0, 1, 7, 1516087518),
(17, '我的订单', '', '', '', '', 'HTTP://tongpankt.com', '', '<p>我的订单</p>', 0, 1, 7, 1516087532),
(18, '退换货原则', '', '', '', '', '', '', '<p>退换货原则</p>', 0, 1, 16, 1516087542),
(19, '售后服务保证', '', '', '', '', '', '', '<p>售后服务保证</p>', 0, 1, 16, 1516087552),
(20, '产品质量保证', '', '', '', '', '', '', '<p>产品质量保证</p>', 0, 1, 16, 1516087562),
(21, '网站故障报告', '', '', '', '', '', '', '<p>网站故障报告</p>', 0, 1, 17, 1516087575),
(22, '选机咨询', '', '', '', '', '', '', '<p>选机咨询</p>', 0, 1, 17, 1516087591),
(23, '投诉与建议', '', '', '', '', '', '', '<p>投诉与建议</p>', 0, 1, 17, 1516087604),
(24, '隐私保护 ', '', '', '', '', '', '', '<p>隐私保护&nbsp;隐私保护&nbsp;隐私保护&nbsp;隐私保护&nbsp;</p>', 0, 1, 3, 1516245006),
(25, '联系我们 ', '', '', '', '', '', '', '<p>联系我们&nbsp;联系我们&nbsp;联系我们&nbsp;联系我们&nbsp;联系我们&nbsp;联系我们&nbsp;</p>', 0, 1, 3, 1516245025),
(26, '免责条款 ', '', '', '', '', '', '', '<p>免责条款&nbsp;免责条款&nbsp;免责条款&nbsp;免责条款&nbsp;免责条款&nbsp;免责条款&nbsp;免责条款&nbsp;免责条款&nbsp;免责条款&nbsp;</p>', 0, 1, 3, 1516245037),
(27, '公司简介 ', '', '', '', '', '', '', '<p>公司简介&nbsp;公司简介&nbsp;公司简介&nbsp;公司简介&nbsp;公司简介&nbsp;公司简介&nbsp;公司简介&nbsp;公司简介&nbsp;</p>', 0, 1, 3, 1516245050),
(28, '意见反馈', '', '', '', '', '', '', '<p>意见反馈意见反馈意见反馈意见反馈意见反馈意见反馈意见反馈意见反馈意见反馈</p>', 0, 1, 3, 1516245066),
(29, '服务店突破2000多家', '', '', '', '', '', '', '<p>服务店突破2000多家</p>', 0, 1, 20, 1516869845),
(30, '我们成为中国最大家电零售B2B2C开源电商系统', '', '', '', '', '', '', '<p>我们成为中国最大家电零售B2B2C开源电商系统</p>', 0, 1, 20, 1516869890),
(31, '三大国际腕表品牌签约', '', '', '', '', '', '', '<p>三大国际腕表品牌签约三大国际腕表品牌签约三大国际腕表品牌签约</p>', 0, 1, 20, 1516869915),
(32, '春季家装季，家电买一送一', '', '', '', '', '', '', '<p>春季家装季，家电买一送一春季家装季，家电买一送一春季家装季，家电买一送一</p>', 0, 1, 26, 1516869930),
(33, '抢百元优惠券，享4.22%活期', '', '', '', '', '', '', '<p>抢百元优惠券，享4.22%活期</p>', 0, 1, 26, 1516869942),
(34, 'Macbook最高返50000消费豆', '', '', '', '', '', '', '<p>Macbook最高返50000消费豆Macbook最高返50000消费豆Macbook最高返50000消费豆</p>', 0, 1, 26, 1516869963);

-- --------------------------------------------------------

--
-- 表的结构 `tp_attr`
--

CREATE TABLE `tp_attr` (
  `id` smallint(6) NOT NULL,
  `attr_name` varchar(30) NOT NULL COMMENT '属性名称',
  `attr_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '属性类型 1:单选 2:唯一',
  `attr_values` varchar(255) NOT NULL COMMENT '属性值',
  `type_id` smallint(6) NOT NULL COMMENT '所属类型'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_attr`
--

INSERT INTO `tp_attr` (`id`, `attr_name`, `attr_type`, `attr_values`, `type_id`) VALUES
(1, '颜色', 1, '黑色,银色,白色', 2),
(2, '衣长', 1, '1,2,3,4', 3),
(3, '硬盘', 1, '80G,100G,500G', 2),
(4, '厂家', 2, '', 2),
(5, 'CPU', 2, 'Internet,奔腾', 2),
(6, '颜色', 1, '红色,黄色,蓝色,黑色,白色,紫色', 4),
(7, '尺码', 1, 'SL,XL,XXL,XXXL', 4),
(8, '材质成分', 2, '', 4),
(9, '销售渠道类型', 2, '', 4),
(10, '货号', 2, '', 4),
(11, '服装版型', 2, '', 4),
(12, '风格', 2, '', 4),
(13, '衣长', 2, '', 4),
(14, '袖长', 2, '', 4),
(15, '袖型', 2, '', 4),
(16, '领型', 2, '', 4),
(17, '衣门襟', 2, '', 4),
(18, '图案', 2, '', 4),
(19, '品牌', 2, '', 4);

-- --------------------------------------------------------

--
-- 表的结构 `tp_brand`
--

CREATE TABLE `tp_brand` (
  `id` mediumint(8) UNSIGNED NOT NULL COMMENT '品牌id',
  `brand_name` varchar(60) NOT NULL COMMENT '品牌名称',
  `brand_url` varchar(60) NOT NULL COMMENT '品牌地址',
  `brand_img` varchar(100) NOT NULL COMMENT '品牌logo',
  `brand_description` varchar(255) NOT NULL COMMENT '品牌描述',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '品牌排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:显示 0：隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_brand`
--

INSERT INTO `tp_brand` (`id`, `brand_name`, `brand_url`, `brand_img`, `brand_description`, `sort`, `status`) VALUES
(3, '谷歌', 'http://google.com', '20180121\\583c6b19115eac61e20249c038064fa5.jpg', '谷歌谷歌谷歌谷歌谷歌谷歌谷歌谷歌谷歌谷歌谷歌谷歌', 50, 1),
(2, '百度2', 'http://www.baidu2.com', '20180121\\d5e251bbfb5cbeccc85c3697a7cf8c4f.jpg', '百度2描述', 50, 0),
(5, 'elle', 'HTTP://WWW.TONGPANKT.COM', '20180128\\6b6b7244e6b862840293ec7bf359a4e3.jpg', 'tongpankt', 50, 1),
(6, 'sprit', 'http://taobao.com', '20180128\\0e3fc459416e016552e84a6f468d925a.jpg', '', 50, 1),
(8, 'tata', '', '20180128\\f9c3eb903156fd25bcd043069244b185.jpg', '', 50, 1),
(9, 'goldlion', '', '20180128\\e03c661f2b718d1f7425381310496194.jpg', '', 50, 1),
(10, 'justyle', '', '20180128\\537ca483324fff2bd7a298361145923a.jpg', '', 50, 1),
(7, 'kingstone', 'http://fff', '20180128\\bbf60318836c22b1c4b3f75a7bf86d75.jpg', '', 50, 1),
(11, 'ports', '', '20180128\\84225232d22057b36473cfe566b69c24.jpg', '', 50, 1),
(12, 'lives', '', '20180128\\fd9cdebef3476228c16ce203c2bffddf.jpg', '', 50, 1),
(13, '百开氏', '', '20180128\\cde9e80ddc3ae098f2a3ce2717e353dd.jpg', '', 50, 1),
(14, '喜瑞', '', '20180128\\5cfcebb8b09dc65b8b7525b3896233d4.jpg', '', 50, 1),
(15, 'cpt', '', '20180128\\31b0b47b78ac9a765f7390a06454ded2.jpg', '', 50, 1),
(16, '养生堂', '', '20180128\\a60c26d542a313620a425050020b3f4b.jpg', '', 50, 1),
(17, 'gnc', '', '20180128\\e235455a8c978c86fe51dc37772fb26a.jpg', '', 50, 1),
(18, 'wz', '', '20180128\\691bcb42524c07f726dfcf7d8396a265.jpg', '', 50, 1),
(19, 'v', '', '20180128\\9ef58db5e2cf68736509d1acbad34967.jpg', '', 50, 1),
(20, '乐力', '', '20180128\\2f63a3df75da0989479896707c3ef444.jpg', '', 50, 1),
(21, '必艾奇', '', '20180128\\7429edae24af9c813d13adc742de91cb.jpg', '', 50, 1),
(22, 'king', '', '20180128\\fe8540ee2593d561063d630f651db7c2.jpg', '', 50, 1),
(23, 'spalding', '', '20180128\\797ced93689a8d37f869f71321eabe86.jpg', '', 50, 1),
(24, '皮尔', '', '20180128\\f43395f67fe09e84309208740b8b4bde.jpg', '', 50, 1),
(25, 'johnson', '', '20180128\\9350dd508e6113b6862e14eebf8768fb.jpg', '', 50, 1),
(26, 'picodong', '', '20180128\\0faba87cf79d824cdf782484b86d7117.jpg', '', 50, 1),
(27, 'wz2', '', '20180128\\456e606a56f303efccac649f434a3aaf.jpg', '', 50, 1),
(28, 'mase', '', '20180128\\8cd92ed8d2ad6fd595ceb4c0129bcfd6.jpg', '', 50, 1),
(29, 'make', '', '20180128\\406c24b270fb8e8ac582e557ff71355c.jpg', '', 50, 1),
(30, 'kpt', '', '20180128\\394385784b6baa2c20305707dc17cd90.jpg', '', 50, 1),
(31, 'sumsung', '', '20180128\\da109f7b5ab1a5dcda41b9dc9df4ce7c.jpg', '', 50, 1),
(32, 'apple', '', '20180128\\a076fff9680ba1b87b135e74854a820a.jpg', '', 50, 1),
(33, 'elect', '', '20180128\\57379b23fff5ffdbe13a2016f8e312b2.jpg', '', 50, 1),
(34, 'alcatel', '', '20180128\\4358a740851726fa1fca893ac485e7b7.jpg', '', 50, 1),
(35, 'mi', '', '20180128\\392f10100295ecbb8f43a9f42614fb36.jpg', '', 50, 1),
(36, 'wxw', '', '20180128\\82cbd989b63f5db320de58c7334619b2.jpg', '', 50, 1),
(37, 'lang', '', '20180128\\d378a4042d4a2ac42f7e95f0de6d35d0.jpg', '', 50, 1),
(38, 'meizu', '', '20180128\\0d7597b32efa623f7a8c43211a6b314c.jpg', '', 50, 1),
(39, 'jack', '', '20180128\\2b2938306bd532547d6f72f7e0fc3d59.jpg', '', 50, 1),
(40, 'lancome', '', '20180128\\2fa21fd80e5fc029b33a2657f442f6dd.jpg', '', 50, 1),
(41, 'converse', '', '20180128\\40d398151759a04a93e3a523ec744f34.jpg', '', 50, 1),
(42, '康恩贝', '', '20180128\\14bb7afca44033c979fe266c4bf3d5f2.jpg', '', 50, 1),
(43, 'za', '', '20180128\\9732205844f0e5ce5f5523582b414ecc.jpg', '', 50, 1),
(44, 'vatti', '', '20180128\\a0b8544a1479e4934e4a043cef4132dc.jpg', '', 50, 1),
(45, 'erke', '', '20180128\\d5ba8f32c7185c005bc2be4b2b5c1b69.jpg', '', 50, 1),
(46, 'acer', '', '20180128\\5758764a72361622df23f94c38970c89.jpg', '', 50, 1),
(47, '合生元', '', '20180128\\bd1fdbc218ef33f7e3fe3f1ce233003a.jpg', '', 50, 1),
(48, '海飞丝', '', '20180128\\f8bfa50a1c0320b58785484ccce24775.jpg', '', 50, 1),
(49, '哥弟', '', '20180128\\4c1f6b5848a933b4433ad5df9d2d359e.jpg', '', 50, 1),
(50, '飞力', '', '20180128\\e7c10d2d311f81c41bb9c17d0b06bbe7.jpg', '', 50, 1),
(51, 'dd', '', '20180128\\f7ec8f8cedf1cb062148b389843a07f5.jpg', '', 50, 1),
(52, '达利园', '', '20180128\\a72fc23ae973d8edd71ec6a95f9408da.jpg', '', 50, 1),
(53, 'ff', '', '20180128\\c70044a1cb629d879e3f09dd80d1fba0.jpg', '', 50, 1),
(54, 'zippo', '', '20180128\\a1ba74e65995e7302e7cd501c34b1563.jpg', '', 50, 1),
(55, 'dall', '', '20180128\\ee81ebc5ef91b0259ac45c2863511fa7.jpg', '', 50, 1),
(56, 'huawei', '', '20180128\\a217d8e52defdf11ad980b6440b5233f.jpg', '', 50, 1),
(57, 'yijian', '', '20180128\\1be3d5b8749091fb84448cc3faec5fa4.jpg', '', 50, 1),
(58, 'fiveplus', '', '20180128\\6374fe09eb6fb304a5683b1fd5c2bc51.jpg', '', 50, 1),
(59, 'siemens', '', '20180128\\efe28fd082bf1882071dce805a2b8528.jpg', '', 50, 1),
(60, 'LG', '', '20180128\\bffbb676c4ca5dd20d89397a1b27d4b3.jpg', '', 50, 1),
(61, 'panasoic', '', '20180128\\4441d4dbbd94c252a1c03d49957feb01.jpg', '', 50, 1),
(62, 'nokia', '', '20180128\\eb7d58c4dee183732b0b3cd7d88b7baa.jpg', '', 50, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_cate`
--

CREATE TABLE `tp_cate` (
  `id` smallint(6) NOT NULL COMMENT '栏目id',
  `cate_name` varchar(20) NOT NULL COMMENT '栏目名称',
  `cate_type` tinyint(1) NOT NULL DEFAULT '5' COMMENT '栏目类型 cate_type 1:系统分类    2：帮助分类    3：网店帮助    4：网店信息    5：普通分类',
  `keywords` varchar(100) NOT NULL COMMENT '关键词',
  `description` varchar(150) NOT NULL COMMENT '描述',
  `show_nav` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示到导航栏 1:显示到导航栏 0：不显示到导航栏',
  `allow_son` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：是 0：否 是否允许添加子分类',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序',
  `pid` smallint(6) NOT NULL DEFAULT '0' COMMENT '上级栏目id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_cate`
--

INSERT INTO `tp_cate` (`id`, `cate_name`, `cate_type`, `keywords`, `description`, `show_nav`, `allow_son`, `sort`, `pid`) VALUES
(1, '系统', 1, '系统', '系统', 0, 0, 7, 0),
(2, '网店帮助分类', 2, '网店帮助分类1', '网店帮助分类1', 0, 1, 11, 1),
(3, '网店信息', 4, '网店信息', '网店信息', 0, 0, 12, 1),
(4, '新手上路 ', 3, '新手上路 ', '新手上路 ', 0, 0, 55, 2),
(5, '配送与支付 ', 3, '配送与支付 ', '配送与支付 ', 0, 0, 54, 2),
(7, '会员中心', 3, '会员中心', '会员中心', 0, 0, 53, 2),
(16, '服务保证', 3, '', '', 0, 1, 52, 2),
(17, '联系我们', 3, '', '', 0, 1, 51, 2),
(18, '3G资讯', 5, '', '', 0, 1, 6, 0),
(19, '站内快讯', 5, '', '', 0, 1, 5, 0),
(20, '商城公告', 5, '', '', 0, 1, 4, 0),
(21, '发票问题', 5, '', '', 0, 1, 3, 0),
(22, '微分销', 5, '', '', 0, 1, 1, 0),
(23, 'App下载', 5, '', '', 0, 1, 2, 0),
(24, 'IOS版', 5, '', '', 0, 1, 50, 23),
(25, '安卓版', 5, '', '', 0, 1, 50, 23),
(26, '促销信息', 5, '', '', 0, 1, 50, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_category`
--

CREATE TABLE `tp_category` (
  `id` smallint(6) NOT NULL,
  `cate_name` varchar(30) NOT NULL COMMENT '商品分类名称',
  `cate_img` varchar(100) NOT NULL COMMENT '栏目banner',
  `iconfont` varchar(20) NOT NULL COMMENT '栏目图标',
  `keywords` varchar(150) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序',
  `pid` smallint(6) NOT NULL DEFAULT '0' COMMENT '上级栏目id',
  `show_cate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:显示 0:隐藏'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_category`
--

INSERT INTO `tp_category` (`id`, `cate_name`, `cate_img`, `iconfont`, `keywords`, `description`, `sort`, `pid`, `show_cate`) VALUES
(2, '手机 数码 通信', '20171123\\3bb848f18518ecf02b8577c4c3111a3e.png', 'icon-digital', '', '', 2, 0, 0),
(6, '数码配件', '20171123\\8a3b4a97cd662021a23d4cff5ebb392c.jpg', '', '裤子11', '裤子裤子裤子111', 50, 2, 0),
(5, '智能设备', '', '', '', '', 5, 2, 0),
(7, '家用电器', '', 'icon-ele', '', '', 1, 0, 0),
(8, '大家电', '', '', '', '', 50, 7, 0),
(9, '生活电器', '', '', '', '', 50, 7, 0),
(10, '厨房电器', '', '', '', '', 50, 7, 0),
(11, '平板电视', '', '', '', '', 50, 8, 0),
(12, '空调', '', '', '', '', 50, 8, 0),
(13, '冰箱', '', '', '', '', 50, 8, 0),
(14, '洗衣机', '', '', '', '', 50, 8, 0),
(15, '电风扇', '', '', '', '', 50, 9, 0),
(16, '冷风扇', '', '', '', '', 50, 9, 0),
(17, '净化器', '', '', '', '', 50, 9, 0),
(18, '电饭煲', '', '', '', '', 50, 10, 0),
(19, '电压力锅', '', '', '', '', 50, 10, 0),
(20, '豆浆机', '', '', '', '', 50, 10, 0),
(21, '手机通讯', '', '', '', '', 50, 2, 0),
(22, '智能手环', '', '', '', '', 50, 5, 0),
(23, '智能手表', '', '', '', '', 50, 5, 0),
(24, '智能眼镜', '', '', '', '', 50, 5, 0),
(25, '运动跟踪器', '', '', '', '', 50, 5, 0),
(26, '存储卡', '', '', '', '', 50, 6, 0),
(27, '读卡器', '', '', '', '', 50, 6, 0),
(28, '滤镜', '', '', '', '', 50, 6, 0),
(29, '手机对讲机', '', '', '', '', 50, 21, 0),
(33, '男装、女装、内衣', '', 'icon-clothes', '', '', 50, 0, 0),
(34, '女装', '', '', '', '', 50, 33, 0),
(35, '衬衫', '', '', '', '', 50, 34, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_category_ad`
--

CREATE TABLE `tp_category_ad` (
  `id` smallint(6) NOT NULL,
  `img_src` varchar(60) NOT NULL COMMENT '图片地址',
  `position` char(1) NOT NULL COMMENT '广告位置：a左, b右上 ,c右下',
  `link_url` varchar(60) NOT NULL COMMENT '链接地址',
  `category_id` mediumint(9) NOT NULL COMMENT '所属大分类'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_category_ad`
--

INSERT INTO `tp_category_ad` (`id`, `img_src`, `position`, `link_url`, `category_id`) VALUES
(2, '20180124\\0d6a0aee6a4725e84f1a468aafb34c83.jpg', 'A', 'http://tongpankt.com', 2),
(3, '20180124\\74f63335c19c2a0b9f3d8dce44b7f4dd.jpg', 'A', 'http://tongpankt.com', 2),
(4, '20180124\\8bfe75ad3627e71aef61a611880b7625.jpg', 'A', 'http://tongpankt.com', 2),
(5, '20180124\\e571a684a340efed6e71496b4292361d.jpg', 'B', '', 2),
(6, '20180124\\d097cd30c4f81acad34ee9ae05ad3a85.jpg', 'C', 'http://tongpankt.com', 2),
(7, '20180124\\1750375ab6e9f98003f1a90b4fae9fae.png', 'A', 'http://google.com', 7),
(8, '20180124\\b6093758c897776c5ebf25c442390a9d.png', 'A', 'http://baidu.com', 7),
(9, '20180124\\2f80e5372bab77140962ffaffe40a6b1.png', 'A', 'http://google.com', 7),
(10, '20180124\\33c38f3561099d19a2a3797576b5b60d.png', 'B', 'http://tongpankt.com', 7),
(11, '20180124\\45ca8607c268fbc0edd07f8b9a23887f.png', 'C', 'http://tongpankt.com', 7);

-- --------------------------------------------------------

--
-- 表的结构 `tp_category_brands`
--

CREATE TABLE `tp_category_brands` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `brands_id` varchar(100) NOT NULL COMMENT '关联的品牌id列表',
  `pro_img` varchar(60) NOT NULL COMMENT '推广图地址',
  `pro_url` varchar(60) NOT NULL COMMENT '推广图链接',
  `category_id` mediumint(9) NOT NULL COMMENT '对应主栏目id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_category_brands`
--

INSERT INTO `tp_category_brands` (`id`, `brands_id`, `pro_img`, `pro_url`, `category_id`) VALUES
(2, '3,2', '20180121\\49498025d33d8485ce089118a4b3953c.jpg', 'http://tongpankt.com', 7),
(4, '3', '20180121\\e60976a9df6fd2fcaf7b2d2d94a5a97b.jpg', 'http://tongpankt.com', 2);

-- --------------------------------------------------------

--
-- 表的结构 `tp_category_words`
--

CREATE TABLE `tp_category_words` (
  `id` smallint(6) NOT NULL,
  `category_id` mediumint(9) NOT NULL COMMENT '关联的顶级栏目id',
  `word` varchar(60) NOT NULL COMMENT '词汇',
  `link_url` varchar(60) NOT NULL COMMENT '链接地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_category_words`
--

INSERT INTO `tp_category_words` (`id`, `category_id`, `word`, `link_url`) VALUES
(1, 2, '品牌日', 'http://tongpankt.com'),
(4, 2, '手机社区', 'http://127.0.0.1/shop/index.php/category/4.html'),
(2, 7, '家电城', 'http://tongpankt.com'),
(3, 7, '智能生活馆', 'http://study.163.com/u/tongpankt'),
(5, 7, '冰箱', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_conf`
--

CREATE TABLE `tp_conf` (
  `id` mediumint(9) NOT NULL,
  `ename` varchar(30) NOT NULL COMMENT '英文名称',
  `cname` varchar(30) NOT NULL COMMENT '中文名称',
  `form_type` varchar(10) NOT NULL DEFAULT 'input' COMMENT '表单类型',
  `conf_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配置类型 1：网店配置 2：商品配置',
  `values` varchar(60) NOT NULL COMMENT '可选值',
  `value` varchar(255) NOT NULL COMMENT '默认值',
  `sort` smallint(6) NOT NULL DEFAULT '50'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_conf`
--

INSERT INTO `tp_conf` (`id`, `ename`, `cname`, `form_type`, `conf_type`, `values`, `value`, `sort`) VALUES
(2, 'site_name', '站点名称', 'input', 1, '', '我的网站', 7),
(3, 'site_keywords', '站点关键词', 'input', 1, '', '网站', 6),
(4, 'site_description', '站点描述', 'textarea', 1, '', '网站网站网站网站网站网站网站网站网站网站网站', 5),
(5, 'close_site', '关闭站点', 'radio', 1, '是,否', '否', 4),
(6, 'logo', '网站logo', 'file', 1, '', '20171122\\2abdd4ed4c290faeb73437387ea9593c.jpg', 3),
(7, 'reg', '会员注册', 'select', 1, '开启,关闭', '开启', 2),
(8, 'checks', '多选测试', 'checkbox', 1, '选项1,选项2,选项3,选项4', '选项1,选项3', 1),
(10, 'ewm', '二维码', 'file', 1, '', '20171122\\556f518e5123d50477e21030771926ac.jpg', 4),
(11, 'ces', '测试复选', 'checkbox', 1, '测试1,测试2,测试3,测试4', '测试2,测试4', 0),
(12, 'cs', '测试', 'input', 2, '', '测试1111', 50),
(13, 'ts', '每页条数', 'checkbox', 2, '5,10,15', '10', 50),
(14, 'search_keywords', '搜索关键词', 'textarea', 1, '', '周大福,内衣,Five,Plus,手机', 50),
(15, 'search_value', '搜索框默认值', 'input', 1, '', 'mackpro', 50),
(16, 'cache', '开启缓存', 'radio', 1, '是,否', '否', 50),
(17, 'cache_time', '缓存有效期', 'input', 1, '', '20', 50);

-- --------------------------------------------------------

--
-- 表的结构 `tp_goods`
--

CREATE TABLE `tp_goods` (
  `id` mediumint(9) NOT NULL,
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_code` char(16) NOT NULL COMMENT '商品编号',
  `og_thumb` varchar(100) NOT NULL COMMENT '原图',
  `sm_thumb` varchar(100) NOT NULL COMMENT '小缩略图',
  `mid_thumb` varchar(100) NOT NULL COMMENT '中缩略图',
  `big_thumb` varchar(100) NOT NULL COMMENT '大缩略图',
  `markte_price` decimal(10,2) NOT NULL COMMENT '市场价',
  `shop_price` decimal(10,2) NOT NULL COMMENT '本店价',
  `on_sale` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否上架 1：上架 0：下架',
  `category_id` mediumint(9) NOT NULL COMMENT '所属栏目',
  `brand_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '所属品牌',
  `type_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '所属类型',
  `goods_des` longtext NOT NULL COMMENT '描述',
  `goods_weight` decimal(10,2) NOT NULL COMMENT '重量',
  `weight_unit` varchar(10) NOT NULL DEFAULT 'kg' COMMENT '单位'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_goods`
--

INSERT INTO `tp_goods` (`id`, `goods_name`, `goods_code`, `og_thumb`, `sm_thumb`, `mid_thumb`, `big_thumb`, `markte_price`, `shop_price`, `on_sale`, `category_id`, `brand_id`, `type_id`, `goods_des`, `goods_weight`, `weight_unit`) VALUES
(1, 'macbook1', '1514455313950656', '20180107\\c0885d3ec1b63331a4328b1346616e99.jpg', '20180107\\sm_c0885d3ec1b63331a4328b1346616e99.jpg', '20180107\\mid_c0885d3ec1b63331a4328b1346616e99.jpg', '20180107\\big_c0885d3ec1b63331a4328b1346616e99.jpg', '111.00', '11.00', 1, 5, 2, 0, '<p>是打发士大夫</p>', '1.00', 'kg'),
(2, 'macbook2', '1514961776558919', '20180107\\d8a4928d86a9a6a29f9724566dd304e3.jpg', '20180107\\sm_d8a4928d86a9a6a29f9724566dd304e3.jpg', '20180107\\mid_d8a4928d86a9a6a29f9724566dd304e3.jpg', '20180107\\big_d8a4928d86a9a6a29f9724566dd304e3.jpg', '222.00', '22.00', 0, 12, 3, 0, '<p>asdfasd</p>', '2.00', 'g'),
(13, 'macbook13', '1516674780146728', '20180123\\f480e452b2e8d8e26a83af912b5d2e39.jpg', '20180123\\sm_f480e452b2e8d8e26a83af912b5d2e39.jpg', '20180123\\mid_f480e452b2e8d8e26a83af912b5d2e39.jpg', '20180123\\big_f480e452b2e8d8e26a83af912b5d2e39.jpg', '131313.00', '1313.00', 1, 11, 3, 2, '<p>asdfasdf</p>', '13.00', 'kg'),
(4, 'macbook4', '1515311732710910', '20180123\\2bbd6120e6e9cfaf9fd6724fcc466fc8.jpg', '20180123\\sm_2bbd6120e6e9cfaf9fd6724fcc466fc8.jpg', '20180123\\mid_2bbd6120e6e9cfaf9fd6724fcc466fc8.jpg', '20180123\\big_2bbd6120e6e9cfaf9fd6724fcc466fc8.jpg', '444.00', '44.00', 1, 2, 3, 0, '<p>fsdfasdf</p>', '4.00', 'kg'),
(5, 'macbook5', '1515318065595187', '20180123\\b5db97f230bd722695e3cdaa7024629f.jpg', '20180123\\sm_b5db97f230bd722695e3cdaa7024629f.jpg', '20180123\\mid_b5db97f230bd722695e3cdaa7024629f.jpg', '20180123\\big_b5db97f230bd722695e3cdaa7024629f.jpg', '555.00', '55.00', 1, 11, 3, 0, '<p>sdfasdf</p>', '5.00', 'kg'),
(6, 'macbook6', '1515387721820692', '20180123\\58d99d8a52be6df5eae6e2c6e334d503.jpg', '20180123\\sm_58d99d8a52be6df5eae6e2c6e334d503.jpg', '20180123\\mid_58d99d8a52be6df5eae6e2c6e334d503.jpg', '20180123\\big_58d99d8a52be6df5eae6e2c6e334d503.jpg', '666.00', '66.00', 1, 21, 3, 2, '<p>sdfasdfsdfasd</p>', '6.00', 'kg'),
(7, 'macbook7', '1515481101666720', '20180123\\1c2d4636dbd8884741ba901fc815a17c.jpg', '20180123\\sm_1c2d4636dbd8884741ba901fc815a17c.jpg', '20180123\\mid_1c2d4636dbd8884741ba901fc815a17c.jpg', '20180123\\big_1c2d4636dbd8884741ba901fc815a17c.jpg', '777.00', '77.00', 1, 16, 3, 2, '<p>77777777777777</p>', '7.00', 'kg'),
(8, 'macbook9', '1515485069849229', '20180123\\06afc93cadc20307833822f63b44fe75.jpg', '20180123\\sm_06afc93cadc20307833822f63b44fe75.jpg', '20180123\\mid_06afc93cadc20307833822f63b44fe75.jpg', '20180123\\big_06afc93cadc20307833822f63b44fe75.jpg', '999.00', '99.00', 1, 2, 3, 2, '<p>sdfasdfasdfsdf</p>', '9.00', 'kg'),
(9, 'macbook10', '1515485315385660', '20180123\\85c422defedc47b05d6cb87f2accf7af.jpg', '20180123\\sm_85c422defedc47b05d6cb87f2accf7af.jpg', '20180123\\mid_85c422defedc47b05d6cb87f2accf7af.jpg', '20180123\\big_85c422defedc47b05d6cb87f2accf7af.jpg', '101010.00', '1010.00', 1, 29, 3, 2, '<p>sdfasdfsdf</p>', '10.00', 'kg'),
(10, 'macbook11', '1516268449292914', '20180123\\7aa6026be919b17315c4a3ee49ab0627.jpg', '20180123\\sm_7aa6026be919b17315c4a3ee49ab0627.jpg', '20180123\\mid_7aa6026be919b17315c4a3ee49ab0627.jpg', '20180123\\big_7aa6026be919b17315c4a3ee49ab0627.jpg', '11.00', '1.00', 1, 29, 3, 0, '<p>sdfasdf</p>', '1.00', 'kg'),
(11, 'macbook12', '1516333687829698', '20180123\\d6491e49a23acd6f22e49ea25fa34847.jpg', '20180123\\sm_d6491e49a23acd6f22e49ea25fa34847.jpg', '20180123\\mid_d6491e49a23acd6f22e49ea25fa34847.jpg', '20180123\\big_d6491e49a23acd6f22e49ea25fa34847.jpg', '1212.00', '12.00', 1, 5, 2, 2, '<p>sdfasdf</p>', '1.00', 'kg'),
(15, '韩美格2017春秋新款修身大码蕾丝网纱打底衫女长袖', '1521211790951660', '20180316\\f96961c87cba56ea31aa25a168054af6.jpg', '20180316\\sm_f96961c87cba56ea31aa25a168054af6.jpg', '20180316\\mid_f96961c87cba56ea31aa25a168054af6.jpg', '20180316\\big_f96961c87cba56ea31aa25a168054af6.jpg', '1200.00', '1000.00', 1, 26, 2, 2, '<p>韩美格2017春秋新款修身大码蕾丝网纱打底衫女长袖韩美格2017春秋新款修身大码蕾丝网纱打底衫女长袖韩美格2017春秋新款修身大码蕾丝网纱打底衫女长袖韩美格2017春秋新款修身大码蕾丝网纱打底衫女长袖</p>', '1.00', 'kg'),
(16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '1521605970648627', '20180321\\9bc7287493896ec89e44dcceb095c20d.jpg', '20180321\\sm_9bc7287493896ec89e44dcceb095c20d.jpg', '20180321\\mid_9bc7287493896ec89e44dcceb095c20d.jpg', '20180321\\big_9bc7287493896ec89e44dcceb095c20d.jpg', '1200.00', '0.01', 1, 35, 3, 4, '<p><br/><img src=\"/ueditor/php/upload/image/20180321/1521605706390298.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20180321/1521605715446196.jpg\"/></p>', '1.00', 'kg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_goods_attr`
--

CREATE TABLE `tp_goods_attr` (
  `id` int(11) NOT NULL,
  `attr_id` mediumint(9) NOT NULL COMMENT '属性id',
  `attr_value` varchar(60) NOT NULL COMMENT '属性值',
  `attr_price` decimal(10,2) NOT NULL COMMENT '属性价格',
  `goods_id` mediumint(9) NOT NULL COMMENT '所属商品'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_goods_attr`
--

INSERT INTO `tp_goods_attr` (`id`, `attr_id`, `attr_value`, `attr_price`, `goods_id`) VALUES
(1, 1, '黑色', '100.00', 1),
(2, 1, '银色', '0.00', 1),
(3, 3, '80G', '0.00', 1),
(4, 3, '500G', '200.00', 1),
(5, 4, 'mac', '0.00', 1),
(6, 5, 'Internet', '0.00', 1),
(7, 1, '黑色', '0.00', 2),
(8, 1, '白色', '0.00', 2),
(9, 3, '100G', '0.00', 2),
(10, 3, '500G', '0.00', 2),
(11, 4, 'mac', '0.00', 2),
(12, 5, 'Internet', '0.00', 2),
(62, 1, '黑色', '10.00', 11),
(57, 3, '80G', '0.00', 13),
(56, 1, '银色', '550.00', 13),
(61, 1, '白色', '10.00', 13),
(17, 2, '2', '0.00', 4),
(18, 1, '黑色', '10.00', 6),
(26, 0, '银色', '20.00', 6),
(30, 3, '100G', '1100.00', 6),
(58, 3, '100G', '300.00', 13),
(59, 4, '苹果', '0.00', 13),
(24, 4, 'Internet', '0.00', 6),
(25, 5, '', '0.00', 6),
(60, 5, 'Internet', '0.00', 13),
(31, 3, '500G', '2100.00', 6),
(40, 1, '黑色', '10.00', 8),
(33, 1, '银色', '210.00', 7),
(34, 3, '80G', '30.00', 7),
(35, 3, '100G', '10.00', 7),
(36, 3, '500G', '100.00', 7),
(37, 4, '苹果1', '0.00', 7),
(38, 5, '奔腾', '0.00', 7),
(39, 1, '白色', '30.00', 7),
(41, 1, '银色', '30.00', 8),
(42, 3, '80G', '50.00', 8),
(43, 3, '100G', '100.00', 8),
(44, 4, '苹果1', '0.00', 8),
(45, 5, '奔腾', '0.00', 8),
(46, 1, '白色', '20.00', 8),
(48, 1, '黑色', '10.00', 9),
(49, 1, '白色', '100.00', 9),
(50, 3, '80G', '80.00', 9),
(51, 3, '500G', '500.00', 9),
(52, 4, '苹果', '0.00', 9),
(53, 5, '奔腾', '0.00', 9),
(68, 1, '黑色', '10.00', 15),
(64, 3, '80G', '100.00', 11),
(65, 3, '100G', '200.00', 11),
(66, 4, 'mac', '0.00', 11),
(67, 5, 'Internet', '0.00', 11),
(69, 3, '80G', '100.00', 15),
(70, 4, '测试', '0.00', 15),
(71, 5, 'Internet', '0.00', 15),
(72, 6, '红色', '20.00', 16),
(73, 6, '黄色', '-20.00', 16),
(74, 6, '黑色', '0.00', 16),
(75, 7, 'SL', '0.00', 16),
(76, 7, 'XL', '0.00', 16),
(77, 7, 'XXL', '0.00', 16),
(78, 8, '棉60% 聚酯纤维40%', '0.00', 16),
(79, 9, '纯电商(只在线上销售)', '0.00', 16),
(80, 10, 'Y129', '0.00', 16),
(81, 11, '修身', '0.00', 16),
(82, 12, '通勤', '0.00', 16),
(83, 13, '常规款', '0.00', 16),
(84, 14, '长袖', '0.00', 16),
(85, 15, '常规', '0.00', 16),
(86, 16, '方领', '0.00', 16),
(87, 17, '单排多扣', '0.00', 16),
(88, 18, '纯色', '0.00', 16),
(89, 19, '优柏', '0.00', 16);

-- --------------------------------------------------------

--
-- 表的结构 `tp_goods_photo`
--

CREATE TABLE `tp_goods_photo` (
  `id` mediumint(9) NOT NULL,
  `goods_id` mediumint(9) NOT NULL COMMENT '所属商品',
  `sm_photo` varchar(100) NOT NULL COMMENT '小图',
  `mid_photo` varchar(100) NOT NULL COMMENT '中图',
  `big_photo` varchar(100) NOT NULL COMMENT '大图',
  `og_photo` varchar(100) NOT NULL COMMENT '原图'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_goods_photo`
--

INSERT INTO `tp_goods_photo` (`id`, `goods_id`, `sm_photo`, `mid_photo`, `big_photo`, `og_photo`) VALUES
(6, 5, '20180122\\sm_862924f4b5f1fa66814594134bba4d3a.png', '20180122\\mid_862924f4b5f1fa66814594134bba4d3a.png', '20180122\\big_862924f4b5f1fa66814594134bba4d3a.png', '20180122\\862924f4b5f1fa66814594134bba4d3a.png'),
(2, 5, '20180107\\sm_78233af3a96ddcc5b1bf17a12b44c4ad.jpg', '20180107\\mid_78233af3a96ddcc5b1bf17a12b44c4ad.jpg', '20180107\\big_78233af3a96ddcc5b1bf17a12b44c4ad.jpg', '20180107\\78233af3a96ddcc5b1bf17a12b44c4ad.jpg'),
(3, 5, '20180107\\sm_fd24b1833a7ab4c87d9020a0f818df3d.jpg', '20180107\\mid_fd24b1833a7ab4c87d9020a0f818df3d.jpg', '20180107\\big_fd24b1833a7ab4c87d9020a0f818df3d.jpg', '20180107\\fd24b1833a7ab4c87d9020a0f818df3d.jpg'),
(4, 5, '20180107\\sm_75a43ccbb28c03cc51b5b4b249de0044.jpg', '20180107\\mid_75a43ccbb28c03cc51b5b4b249de0044.jpg', '20180107\\big_75a43ccbb28c03cc51b5b4b249de0044.jpg', '20180107\\75a43ccbb28c03cc51b5b4b249de0044.jpg'),
(7, 6, '20180122\\sm_8a9267bfc0a96b1383cb82b67d5b227f.png', '20180122\\mid_8a9267bfc0a96b1383cb82b67d5b227f.png', '20180122\\big_8a9267bfc0a96b1383cb82b67d5b227f.png', '20180122\\8a9267bfc0a96b1383cb82b67d5b227f.png'),
(8, 6, '20180122\\sm_5ef648cc23980f2cb33322335146b94b.jpg', '20180122\\mid_5ef648cc23980f2cb33322335146b94b.jpg', '20180122\\big_5ef648cc23980f2cb33322335146b94b.jpg', '20180122\\5ef648cc23980f2cb33322335146b94b.jpg'),
(11, 13, '20180123\\sm_87789e4bf138eef09cc3a7e2d855a69e.png', '20180123\\mid_87789e4bf138eef09cc3a7e2d855a69e.png', '20180123\\big_87789e4bf138eef09cc3a7e2d855a69e.png', '20180123\\87789e4bf138eef09cc3a7e2d855a69e.png'),
(12, 13, '20180123\\sm_2e7407c9bb35cc2631d42b98fd58344c.png', '20180123\\mid_2e7407c9bb35cc2631d42b98fd58344c.png', '20180123\\big_2e7407c9bb35cc2631d42b98fd58344c.png', '20180123\\2e7407c9bb35cc2631d42b98fd58344c.png'),
(13, 11, '20180123\\sm_b699bc080eff34a1bed4a4354641924c.png', '20180123\\mid_b699bc080eff34a1bed4a4354641924c.png', '20180123\\big_b699bc080eff34a1bed4a4354641924c.png', '20180123\\b699bc080eff34a1bed4a4354641924c.png'),
(14, 11, '20180123\\sm_4c0741231212b424f19738280dbb2e24.png', '20180123\\mid_4c0741231212b424f19738280dbb2e24.png', '20180123\\big_4c0741231212b424f19738280dbb2e24.png', '20180123\\4c0741231212b424f19738280dbb2e24.png'),
(15, 15, '20180316\\sm_f2fa425c73b47195ac195380a9223cbb.jpg', '20180316\\mid_f2fa425c73b47195ac195380a9223cbb.jpg', '20180316\\big_f2fa425c73b47195ac195380a9223cbb.jpg', '20180316\\f2fa425c73b47195ac195380a9223cbb.jpg'),
(16, 15, '20180316\\sm_66a7c106580e7aa488412b119d7b306e.jpg', '20180316\\mid_66a7c106580e7aa488412b119d7b306e.jpg', '20180316\\big_66a7c106580e7aa488412b119d7b306e.jpg', '20180316\\66a7c106580e7aa488412b119d7b306e.jpg'),
(17, 15, '20180316\\sm_7052de6a2f41718e03a8948e43e8b289.jpg', '20180316\\mid_7052de6a2f41718e03a8948e43e8b289.jpg', '20180316\\big_7052de6a2f41718e03a8948e43e8b289.jpg', '20180316\\7052de6a2f41718e03a8948e43e8b289.jpg'),
(18, 16, '20180321\\sm_33ef1dfcf933fce8eeeddd8b120660b0.jpg', '20180321\\mid_33ef1dfcf933fce8eeeddd8b120660b0.jpg', '20180321\\big_33ef1dfcf933fce8eeeddd8b120660b0.jpg', '20180321\\33ef1dfcf933fce8eeeddd8b120660b0.jpg'),
(19, 16, '20180321\\sm_e99964ecc54f51cee4f24b48fad2f6e5.jpg', '20180321\\mid_e99964ecc54f51cee4f24b48fad2f6e5.jpg', '20180321\\big_e99964ecc54f51cee4f24b48fad2f6e5.jpg', '20180321\\e99964ecc54f51cee4f24b48fad2f6e5.jpg'),
(20, 16, '20180321\\sm_06749059aa7c5e97e5200ac9888af82b.jpg', '20180321\\mid_06749059aa7c5e97e5200ac9888af82b.jpg', '20180321\\big_06749059aa7c5e97e5200ac9888af82b.jpg', '20180321\\06749059aa7c5e97e5200ac9888af82b.jpg'),
(21, 16, '20180321\\sm_36b9ca5c8348a0aff39fbb453439fa9e.jpg', '20180321\\mid_36b9ca5c8348a0aff39fbb453439fa9e.jpg', '20180321\\big_36b9ca5c8348a0aff39fbb453439fa9e.jpg', '20180321\\36b9ca5c8348a0aff39fbb453439fa9e.jpg'),
(22, 16, '20180321\\sm_7972cc5f68a56a6af2cc2b124ad6ddb3.jpg', '20180321\\mid_7972cc5f68a56a6af2cc2b124ad6ddb3.jpg', '20180321\\big_7972cc5f68a56a6af2cc2b124ad6ddb3.jpg', '20180321\\7972cc5f68a56a6af2cc2b124ad6ddb3.jpg'),
(23, 16, '20180321\\sm_06eda35066525fef3b23a032cc415833.jpg', '20180321\\mid_06eda35066525fef3b23a032cc415833.jpg', '20180321\\big_06eda35066525fef3b23a032cc415833.jpg', '20180321\\06eda35066525fef3b23a032cc415833.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_link`
--

CREATE TABLE `tp_link` (
  `id` smallint(6) NOT NULL,
  `title` varchar(30) NOT NULL COMMENT '标题',
  `link_url` varchar(60) NOT NULL COMMENT '链接地址',
  `logo` varchar(100) NOT NULL COMMENT 'logo',
  `description` varchar(255) NOT NULL COMMENT '链接描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '链接类型 1：文字 2：图片',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态1：启用 0：禁用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_link`
--

INSERT INTO `tp_link` (`id`, `title`, `link_url`, `logo`, `description`, `type`, `status`) VALUES
(1, '童攀课堂', 'http://www.tongpankt.com', '', '童攀课堂', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_level`
--

CREATE TABLE `tp_member_level` (
  `id` smallint(6) NOT NULL,
  `level_name` varchar(30) NOT NULL COMMENT '级别名称',
  `bom_point` int(11) NOT NULL COMMENT '积分下限',
  `top_point` int(11) NOT NULL COMMENT '积分上限',
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '100' COMMENT '折扣率'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_member_level`
--

INSERT INTO `tp_member_level` (`id`, `level_name`, `bom_point`, `top_point`, `rate`) VALUES
(2, '注册会员', 0, 10000, 100),
(3, '中级会员', 10001, 20000, 90),
(4, '高级会员', 20001, 30000, 80);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_price`
--

CREATE TABLE `tp_member_price` (
  `id` int(11) NOT NULL,
  `mprice` decimal(10,2) NOT NULL COMMENT '会员价格',
  `mlevel_id` smallint(6) NOT NULL COMMENT '会员级别',
  `goods_id` int(11) NOT NULL COMMENT '商品'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_member_price`
--

INSERT INTO `tp_member_price` (`id`, `mprice`, `mlevel_id`, `goods_id`) VALUES
(21, '700.00', 4, 15),
(20, '800.00', 3, 15),
(19, '1000.00', 2, 15),
(13, '300.00', 3, 4),
(12, '400.00', 2, 4);

-- --------------------------------------------------------

--
-- 表的结构 `tp_nav`
--

CREATE TABLE `tp_nav` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nav_name` varchar(30) NOT NULL COMMENT '导航名称',
  `nav_url` varchar(30) NOT NULL COMMENT '导航地址',
  `open` tinyint(1) NOT NULL DEFAULT '1' COMMENT '打开方式 1：新标签 2：当前页',
  `pos` varchar(6) NOT NULL DEFAULT '' COMMENT '顶部：top 中间：mid  底部：bottom',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_nav`
--

INSERT INTO `tp_nav` (`id`, `nav_name`, `nav_url`, `open`, `pos`, `sort`) VALUES
(2, '我的订单', 'http://tongpankt.com', 2, 'top', 14),
(3, '我的浏览', 'http://sdfs', 1, 'top', 13),
(4, '我的收藏', 'http://tongpankt.com', 1, 'top', 12),
(5, '客户服务', 'http://tongpankt.com', 1, 'top', 11),
(6, '女人街', 'http://tongpankt.com', 1, 'mid', 50),
(7, '男人柜', 'http://tongpankt.com', 1, 'mid', 50),
(8, '品牌专区', 'http://tongpankt.com', 1, 'mid', 50),
(9, '聚划算', 'http://tongpankt.com', 1, 'mid', 50),
(10, '积分商城', 'http://tongpankt.com', 1, 'mid', 50);

-- --------------------------------------------------------

--
-- 表的结构 `tp_order`
--

CREATE TABLE `tp_order` (
  `id` mediumint(9) NOT NULL,
  `out_trade_no` char(16) NOT NULL COMMENT '订单号',
  `user_id` mediumint(9) NOT NULL COMMENT '下单用户id',
  `goods_total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总额',
  `order_total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额',
  `payment` tinyint(1) NOT NULL COMMENT '支付方式 1:支付宝 2:微信 3:余额',
  `distribution` varchar(50) NOT NULL COMMENT '配送方式：申通、顺丰、圆通',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态: 0:未确认 1:已确认 2:申请退款 3:退款成功',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态 0:未支付 1:已支付',
  `post_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送状态 0:未发货 1:已发货 2:已收货',
  `post_spent` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费',
  `name` varchar(30) NOT NULL COMMENT '收货人',
  `phone` varchar(12) NOT NULL COMMENT '手机',
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(30) NOT NULL COMMENT '市',
  `country` varchar(30) NOT NULL COMMENT '县/区',
  `address` varchar(255) NOT NULL COMMENT '详细地址',
  `order_time` int(10) NOT NULL COMMENT '下单时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_order`
--

INSERT INTO `tp_order` (`id`, `out_trade_no`, `user_id`, `goods_total_price`, `order_total_price`, `payment`, `distribution`, `order_status`, `pay_status`, `post_status`, `post_spent`, `name`, `phone`, `province`, `city`, `country`, `address`, `order_time`) VALUES
(1, '1529916846928521', 1, '19440.00', '19450.00', 1, '顺丰', 0, 0, 0, '10.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529916846),
(2, '1529919598412299', 1, '11160.00', '11170.00', 1, '顺丰', 0, 0, 0, '10.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529919598),
(3, '1529919662785346', 1, '6480.00', '6490.00', 1, '顺丰', 0, 0, 0, '10.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529919662),
(4, '1529919756173719', 1, '6480.00', '6490.00', 1, '顺丰', 0, 0, 0, '10.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529919756),
(5, '1529920233918674', 1, '4680.00', '4690.00', 1, '顺丰', 0, 0, 0, '10.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529920233),
(6, '1529920322715955', 1, '4680.00', '4690.00', 1, '顺丰', 0, 0, 0, '10.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529920322),
(7, '1529920818804633', 1, '4680.00', '4690.00', 1, '顺丰', 0, 0, 0, '10.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529920818),
(8, '1529920944933159', 1, '0.08', '10.08', 1, '顺丰', 0, 0, 0, '10.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529920944),
(9, '1529921025734347', 1, '0.08', '0.08', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529921025),
(10, '1529924544501329', 1, '0.08', '0.08', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529924544),
(11, '1529924699281575', 1, '0.08', '0.08', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529924699),
(12, '1529924875942355', 1, '0.08', '0.08', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529924875),
(13, '1529925288289387', 1, '0.08', '0.08', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529925288),
(14, '1529932038155951', 1, '0.01', '0.01', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529932038),
(15, '1529932216295247', 1, '0.01', '0.01', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529932216),
(16, '1529932896461290', 1, '0.01', '0.01', 1, '顺丰', 0, 1, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529932896),
(17, '1529933636537706', 1, '0.01', '0.01', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529933636),
(18, '1529934117403944', 1, '0.01', '0.01', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529934117),
(19, '1529934304545355', 1, '0.01', '0.01', 1, '顺丰', 0, 0, 0, '0.00', 'tongpan', '15878452564', '', '阜新市', '太平区', '短发撒的发发', 1529934305);

-- --------------------------------------------------------

--
-- 表的结构 `tp_order_goods`
--

CREATE TABLE `tp_order_goods` (
  `id` int(11) NOT NULL,
  `goods_id` mediumint(9) NOT NULL COMMENT '商品id',
  `goods_name` varchar(150) NOT NULL COMMENT '商品名',
  `member_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '本店价',
  `shop_price` decimal(10,2) NOT NULL COMMENT '本店价',
  `market_price` decimal(10,2) NOT NULL COMMENT '市场价',
  `goods_attr_id` varchar(30) NOT NULL COMMENT '商品属性id字符串',
  `goods_attr_str` text NOT NULL COMMENT '商品属性文本',
  `goods_num` mediumint(9) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `order_id` mediumint(9) NOT NULL COMMENT '所属订单'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_order_goods`
--

INSERT INTO `tp_order_goods` (`id`, `goods_id`, `goods_name`, `member_price`, `shop_price`, `market_price`, `goods_attr_id`, `goods_attr_str`, `goods_num`, `order_id`) VALUES
(1, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '780.00', '980.00', '1200.00', '16-73,77', '颜色:黄色(￥ -20.00元)<br />尺码:XXL(￥ 0.00元)', 6, 1),
(2, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '820.00', '1020.00', '1200.00', '16-72,75', '颜色:红色(￥ 20.00元)<br />尺码:SL(￥ 0.00元)', 18, 1),
(3, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '780.00', '980.00', '1200.00', '16-73,77', '颜色:黄色(￥ -20.00元)<br />尺码:XXL(￥ 0.00元)', 6, 2),
(4, 15, '韩美格2017春秋新款修身大码蕾丝网纱打底衫女长袖', '810.00', '1110.00', '1200.00', '15-68,69', '颜色:黑色(￥ 10.00元)<br />硬盘:80G(￥ 100.00元)', 8, 2),
(5, 15, '韩美格2017春秋新款修身大码蕾丝网纱打底衫女长袖', '810.00', '1110.00', '1200.00', '15-68,69', '颜色:黑色(￥ 10.00元)<br />硬盘:80G(￥ 100.00元)', 8, 3),
(6, 15, '韩美格2017春秋新款修身大码蕾丝网纱打底衫女长袖', '810.00', '1110.00', '1200.00', '15-68,69', '颜色:黑色(￥ 10.00元)<br />硬盘:80G(￥ 100.00元)', 8, 4),
(7, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '780.00', '980.00', '1200.00', '16-73,77', '颜色:黄色(￥ -20.00元)<br />尺码:XXL(￥ 0.00元)', 6, 5),
(8, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '780.00', '980.00', '1200.00', '16-73,77', '颜色:黄色(￥ -20.00元)<br />尺码:XXL(￥ 0.00元)', 6, 6),
(9, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '780.00', '980.00', '1200.00', '16-73,77', '颜色:黄色(￥ -20.00元)<br />尺码:XXL(￥ 0.00元)', 6, 7),
(10, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.08', '0.10', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 8),
(11, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.08', '0.10', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 9),
(12, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.08', '0.10', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 10),
(13, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.08', '0.10', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 11),
(14, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.08', '0.10', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 12),
(15, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.08', '0.10', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 13),
(16, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.01', '0.01', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 14),
(17, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.01', '0.01', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 15),
(18, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.01', '0.01', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 16),
(19, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.01', '0.01', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 17),
(20, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.01', '0.01', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 18),
(21, 16, '2018秋冬新款职业白衬衫女长袖加绒加厚韩范小领修身白色保暖衬衣', '0.01', '0.01', '1200.00', '16-74,75', '颜色:黑色(￥ 0.00元)<br />尺码:SL(￥ 0.00元)', 1, 19);

-- --------------------------------------------------------

--
-- 表的结构 `tp_product`
--

CREATE TABLE `tp_product` (
  `id` mediumint(9) NOT NULL,
  `goods_id` mediumint(9) NOT NULL COMMENT '所属商品',
  `goods_number` int(11) NOT NULL COMMENT '库存量',
  `goods_attr` varchar(20) NOT NULL COMMENT '商品属性'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_product`
--

INSERT INTO `tp_product` (`id`, `goods_id`, `goods_number`, `goods_attr`) VALUES
(41, 2, 69, '7,10'),
(37, 1, 400, '2,4'),
(36, 1, 100, '1,3'),
(35, 1, 200, '1,4'),
(34, 1, 300, '2,3'),
(40, 2, 55, '8,9'),
(42, 3, 56, '13,14'),
(43, 6, 123, '18,21'),
(44, 6, 345, '18,22');

-- --------------------------------------------------------

--
-- 表的结构 `tp_recpos`
--

CREATE TABLE `tp_recpos` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `rec_name` varchar(60) NOT NULL COMMENT '推荐位名称',
  `rec_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '推荐位类型 1：商品 2：分类'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_recpos`
--

INSERT INTO `tp_recpos` (`id`, `rec_name`, `rec_type`) VALUES
(3, '热卖商品', 1),
(2, '限时抢购', 1),
(4, '新品推荐', 1),
(5, '首页推荐', 2),
(6, '推荐分类', 2),
(7, '精品推荐', 1),
(8, '首页商品', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_rec_item`
--

CREATE TABLE `tp_rec_item` (
  `recpos_id` smallint(5) UNSIGNED NOT NULL COMMENT '推荐位id',
  `value_id` mediumint(8) UNSIGNED NOT NULL COMMENT '商品或商品分类id',
  `value_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '推荐类型 1：商品 2：商品分类'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_rec_item`
--

INSERT INTO `tp_rec_item` (`recpos_id`, `value_id`, `value_type`) VALUES
(5, 2, 2),
(5, 7, 2),
(5, 8, 2),
(7, 10, 1),
(5, 9, 2),
(5, 21, 2),
(4, 11, 1),
(4, 10, 1),
(4, 9, 1),
(4, 7, 1),
(4, 5, 1),
(4, 6, 1),
(4, 8, 1),
(4, 4, 1),
(7, 13, 1),
(4, 13, 1),
(3, 10, 1),
(7, 6, 1),
(7, 9, 1),
(4, 2, 1),
(7, 7, 1),
(8, 10, 1),
(8, 11, 1),
(8, 13, 1),
(2, 15, 1),
(3, 15, 1),
(4, 16, 1),
(7, 16, 1),
(8, 16, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_type`
--

CREATE TABLE `tp_type` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `type_name` varchar(30) NOT NULL COMMENT '属性名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_type`
--

INSERT INTO `tp_type` (`id`, `type_name`) VALUES
(2, '笔记本'),
(3, '测试'),
(4, '女装');

-- --------------------------------------------------------

--
-- 表的结构 `tp_user`
--

CREATE TABLE `tp_user` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `username` varchar(60) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `email` varchar(60) NOT NULL COMMENT '邮箱',
  `mobile_phone` char(11) NOT NULL COMMENT '电话',
  `register_type` tinyint(1) NOT NULL COMMENT '1：手机已验证 0：邮箱已验证 2：手机邮箱均已验证',
  `points` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员积分',
  `register_time` int(10) UNSIGNED NOT NULL COMMENT '注册时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_user`
--

INSERT INTO `tp_user` (`id`, `username`, `password`, `email`, `mobile_phone`, `register_type`, `points`, `register_time`) VALUES
(1, 'tongpan', 'e10adc3949ba59abbe56e057f20f883e', '', '18565656564', 1, 25000, 1521463538);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp_adress`
--
ALTER TABLE `tp_adress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_alternate_img`
--
ALTER TABLE `tp_alternate_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_article`
--
ALTER TABLE `tp_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_attr`
--
ALTER TABLE `tp_attr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `tp_brand`
--
ALTER TABLE `tp_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_cate`
--
ALTER TABLE `tp_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_category`
--
ALTER TABLE `tp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_category_ad`
--
ALTER TABLE `tp_category_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_category_brands`
--
ALTER TABLE `tp_category_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_category_words`
--
ALTER TABLE `tp_category_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_conf`
--
ALTER TABLE `tp_conf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_goods`
--
ALTER TABLE `tp_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`brand_id`,`type_id`);

--
-- Indexes for table `tp_goods_attr`
--
ALTER TABLE `tp_goods_attr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_goods_photo`
--
ALTER TABLE `tp_goods_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- Indexes for table `tp_link`
--
ALTER TABLE `tp_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_member_level`
--
ALTER TABLE `tp_member_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_member_price`
--
ALTER TABLE `tp_member_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_nav`
--
ALTER TABLE `tp_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_order`
--
ALTER TABLE `tp_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_order_goods`
--
ALTER TABLE `tp_order_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_product`
--
ALTER TABLE `tp_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_recpos`
--
ALTER TABLE `tp_recpos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_type`
--
ALTER TABLE `tp_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_user`
--
ALTER TABLE `tp_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tp_adress`
--
ALTER TABLE `tp_adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tp_alternate_img`
--
ALTER TABLE `tp_alternate_img`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `tp_article`
--
ALTER TABLE `tp_article`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章id', AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `tp_attr`
--
ALTER TABLE `tp_attr`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `tp_brand`
--
ALTER TABLE `tp_brand`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '品牌id', AUTO_INCREMENT=63;

--
-- 使用表AUTO_INCREMENT `tp_cate`
--
ALTER TABLE `tp_cate`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '栏目id', AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `tp_category`
--
ALTER TABLE `tp_category`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `tp_category_ad`
--
ALTER TABLE `tp_category_ad`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `tp_category_brands`
--
ALTER TABLE `tp_category_brands`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `tp_category_words`
--
ALTER TABLE `tp_category_words`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `tp_conf`
--
ALTER TABLE `tp_conf`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `tp_goods`
--
ALTER TABLE `tp_goods`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `tp_goods_attr`
--
ALTER TABLE `tp_goods_attr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- 使用表AUTO_INCREMENT `tp_goods_photo`
--
ALTER TABLE `tp_goods_photo`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用表AUTO_INCREMENT `tp_link`
--
ALTER TABLE `tp_link`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `tp_member_level`
--
ALTER TABLE `tp_member_level`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `tp_member_price`
--
ALTER TABLE `tp_member_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `tp_nav`
--
ALTER TABLE `tp_nav`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `tp_order`
--
ALTER TABLE `tp_order`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `tp_order_goods`
--
ALTER TABLE `tp_order_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `tp_product`
--
ALTER TABLE `tp_product`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- 使用表AUTO_INCREMENT `tp_recpos`
--
ALTER TABLE `tp_recpos`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `tp_type`
--
ALTER TABLE `tp_type`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `tp_user`
--
ALTER TABLE `tp_user`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
