-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 09:34 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nguyenthanhlam_2119110250`
--

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_admin`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `adminName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` char(32) NOT NULL,
  `level` tinyint(2) NOT NULL,
  `trash` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nguyenthanhlam_admin`
--

INSERT INTO `nguyenthanhlam_admin` (`adminId`, `username`, `adminName`, `email`, `pass`, `level`, `trash`) VALUES
(1, 'lam', 'thanh lam', 'pandora532001@gmail.com', '1f32aa4c9a1d2ea010adcf2348166a04', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_brand`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_brand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(100) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nguyenthanhlam_brand`
--

INSERT INTO `nguyenthanhlam_brand` (`brandId`, `brandName`, `alias`, `trash`, `status`) VALUES
(1, 'Nhà xuất bản Giáo Dục Việt Nam', 'nha-xuat-ban-giao-duc-viet-nam', 0, 1),
(2, 'Nhà xuất bản Kim Đồng', 'nha-xuat-ban-kim-dong', 0, 1),
(3, 'Nhà xuất bản Trẻ', 'nha-xuat-ban-tre', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_cart`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `sId` varchar(255) CHARACTER SET utf8 NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `nguyenthanhlam_cart`
--

INSERT INTO `nguyenthanhlam_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(28, 'hb1dkvk8ptdfhleq375m01e891', 1, ' Ariyan Lorem Ipsum fsdfasdaf', 525.00, 1, 'upload/a2d9ff0c56.png'),
(42, 'ki70g8rmb4mfqs7cmei2l3qpi3', 10, 'Woman Tshirt 03', 300.00, 1, 'upload/a2fccb0144.png'),
(43, 'e6r6avk209clao063d5p18i597', 7, 'Mans Tshirt 02', 400.00, 1, 'upload/4b2b2f0556.png');

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_category`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_category` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `parentId` int(11) NOT NULL,
  `trash` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nguyenthanhlam_category`
--

INSERT INTO `nguyenthanhlam_category` (`catId`, `catName`, `alias`, `parentId`, `trash`, `status`) VALUES
(1, 'Truyện tranh', 'truyen-tranh', 0, 0, 1),
(2, 'Tiểu thuyết', 'tieu-thuyet', 0, 0, 1),
(3, 'Sách giáo khoa', 'sach-giao-khoa', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_contact`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_contact` (
  `contactId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_customer`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_customer` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nguyenthanhlam_customer`
--

INSERT INTO `nguyenthanhlam_customer` (`customerId`, `userId`, `fullname`, `address`, `phone`, `email`, `trash`) VALUES
(2, 0, '', 'Groan Puran Polton south Dhaka ', '4544555455', 'kaziariyan@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_image`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `imageName` varchar(255) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `trash` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `nguyenthanhlam_image`
--

INSERT INTO `nguyenthanhlam_image` (`id`, `title`, `image`, `imageName`, `position`, `trash`, `status`) VALUES
(1, 'Slider1', 'nguyenthanhlam_slide01.jpg', '', 1, 0, 1),
(2, 'Slider2', 'nguyenthanhlam_slide02.jpg', '', 1, 0, 1),
(3, 'Slider3', 'nguyenthanhlam_slide03.jpg', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_link`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `orders` tinyint(4) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `nguyenthanhlam_link`
--

INSERT INTO `nguyenthanhlam_link` (`id`, `title`, `Position`, `Image`, `link`, `orders`, `trash`, `status`) VALUES
(1, 'Về chúng tôi', 'Bottommenu1', '', '#', 1, 0, 1),
(2, 'Chính sách bán hàng', 'Bottommenu1', '', '#', 2, 0, 1),
(3, 'Tài khoản', 'Bottommenu2', '', '#', 1, 0, 1),
(4, 'Đăng ý', 'Bottommenu2', '', '#', 2, 0, 1),
(5, 'Liên hệ', 'Bottommenu2', '', '#', 3, 0, 1),
(6, 'Liên hệ', 'globalnav', '', '#', 2, 0, 1),
(7, 'Về chúng tôi', 'globalnav', '', '#', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_order`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_order` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` float(10,2) NOT NULL,
  `note` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `trash` tinyint(1) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `nguyenthanhlam_order`
--

INSERT INTO `nguyenthanhlam_order` (`orderId`, `customerId`, `orderDate`, `total`, `note`, `status`, `trash`) VALUES
(8, 2, '0000-00-00 00:00:00', 500.00, '', 1, 0),
(9, 2, '0000-00-00 00:00:00', 400.00, '', 0, 0),
(10, 2, '0000-00-00 00:00:00', 450.00, '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_orderdetail`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_orderdetail` (
  `orderDetailId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  PRIMARY KEY (`orderDetailId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_page`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_page` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `createBy` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nguyenthanhlam_page`
--

INSERT INTO `nguyenthanhlam_page` (`pageId`, `title`, `content`, `createBy`, `createDate`, `updateDate`, `trash`, `status`) VALUES
(1, 'Vê chúng tôi', 'Có nhiều lý do khiến chúng tôi quyết định mở rộng hoạt động kinh doanh, bán củ giống chất lượng cho người dùng hoa mà không thông qua bất cứ trung gian nào khác. Dù bạn muốn tự trồng và chăm sóc một chậu hoa để gần gũi với thiên nhiên hơn, thư giãn đầu óc sau một ngày làm việc. Hoặc bạn muốn có một chậu hoa đẹp vào dịp tết, tránh việc mua phải những bó hoa lạnh, hoa kém chất lượng với giá quá cao. Dù lý do là gì, chúng tôi tự tin mang tới cho bạn những cử giống hoa chất lượng nhất với chi phí hợp lý.\r\n\r\nĐược thành lập từ năm 2014, công ty chúng tôi là đơn vị tiên phong trong lĩnh vực phân phối củ giống hoa Ly và các loại hoa thành phẩm như hoa Ly, hoa hồng ngoại. Sản phẩm củ giống hoa Ly được chúng tôi nhập khẩu trực tiếp từ các nhà cung cấp tới từ châu Âu như Hà Lan, Pháp …đảm bảo chất lượng tốt nhất cho người trồng.\r\n\r\nCác vườn hoa có tổng diện tích 10ha của chúng tôi tại huyện Đan Phượng – Hà Nội cung cấp hoa tươi bán buôn, hoa tươi tết cho không chỉ thị trường Hà Nội mà cả các tỉnh miền Bắc như Nam Định, Hải Phòng, Quảng Ninh, Lạng Sơn …\r\n\r\nKhách hàng chính của chúng tôi là các nhà vườn trồng hoa ly tại miền Bắc ở các vùng chuyên canh trồng hoa như làng hoa Tây Tựu, hoa Mê Linh, hoa Sapa. Sản phẩm chất lượng và việc tư vấn sát sao tới từng người trồng là bí quyết tạo dựng uy tín công ty chúng tôi.', 1, '2021-03-02 23:09:19', '0000-00-00 00:00:00', 0, 1),
(2, 'Chính sách', 'Chúng tôi áp dụng phương thức thu tiền khi giao hàng và chuyển khoản ngân hàng với các đơn hàng trên toàn lãnh thổ Việt Nam.\r\n\r\nThông tin tài khoản:\r\n\r\nChủ tài khoản: Trịnh Xuân Trường\r\nSố tài khoản: 19032 80223 6018\r\nNgân hàng Techcombank chi nhánh Từ Liêm\r\nCó 3 cách chủ yếu để bạn đặt hàng trên hệ thống của chúng tôi:\r\n\r\nCách 1: Bạn chọn sản phẩm và số lượng mình muốn, rồi đặt hàng trên web (ưu tiên sử dụng)\r\nCách 2: Bạn để lại thông tin số điện thoại trên website hoặc facebook để chúng tôi chủ động liên lạc lại. \r\nCách 3: Bạn gọi điện trực tiếp tới các số điện thoại của Gánh hoa Ly trên website hoặc facebook.', 1, '2021-03-16 23:09:19', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_product`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) NOT NULL,
  `Alias` varchar(100) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `Detail` text NOT NULL,
  `Price` float(10,2) NOT NULL,
  `salePrice` float(10,2) DEFAULT NULL,
  `Image` varchar(100) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `nguyenthanhlam_product`
--

INSERT INTO `nguyenthanhlam_product` (`productId`, `productName`, `Alias`, `catId`, `brandId`, `Detail`, `Price`, `salePrice`, `Image`, `trash`, `status`) VALUES
(1, 'Cho tôi một vé về tuổi thơ', 'Cho-toi-mot-ve-ve-tuoi-tho', 2, 3, 'Tác Giả: Nguyễn Nhật Ánh.<br>\r\nThể Loại Truyện: Tuổi Teen - Tuổi Học Trò.<br>\r\nMinh Họa: Đỗ Hoàng Tường.<br>\r\nNhà Xuất Bản: Nhà Xuất Bản Trẻ.<br>\r\nNgày Phát Hành: 01 Tháng 02 Năm 2008.<br>\r\nSố Trang: 218 Trang.<br>\r\nSố Chương: 12 Chương.<br>', 12.00, 9.50, 'nguyenthanhlam_img13.png', 0, 1),
(2, 'Mắt biếc', 'mat-biec', 2, 3, 'Tác giả: Nguyễn Nhật Ánh.<br>\r\nMinh họa: Đỗ Hoàng Tường.<br>\r\nQuốc gia: Việt Nam.<br>\r\nNgôn ngữ: Tiếng Việt.<br>\r\nChủ đề: Truyện thiếu nhi.<br>\r\nThể loại: Truyện dài.<br>\r\nNhà xuất bản: Nhà xuất bản Trẻ.<br>\r\nNgày phát hành: 1990.<br>', 12.00, 9.50, 'nguyenthanhlam_img32.png', 0, 1),
(3, 'Đắc Nhân Tâm', 'dac-nhan-tam', 2, 3, 'Tác giả: Dale Carnegie.<br>\r\nQuốc gia: Mỹ.<br>\r\nNgôn ngữ: tiếng Anh.<br>\r\nThể loại: Tự giúp bản thân.<br>\r\nNhà xuất bản: Simon and Schuster(1936).<br>\r\nNgày phát hành: 1936.<br>\r\nSố trang: 291.<br>', 12.00, 9.50, 'nguyenthanhlam_img01.png', 0, 1),
(4, 'Âm nhạc và Mỹ thuật 6', 'am-nhac-va-my-thuat-6', 3, 1, 'Tác giả: Nhà xuất bản Giáo Dục Việt Nam.<br>\r\nTrình bày: Bộ Giáo Dục Và Đào Tạo.<br>\r\nNhà cung cấp: Nhà Xuất Bản Giáo Dục Việt Nam.<br>\r\nSố bài môn Âm nhạc: 8 bài.<br>\r\nSố bài môn Mỹ thuật: 32 bài.<br>', 12.00, 9.50, 'nguyenthanhlam_img03.jpg', 0, 1),
(5, 'Toán 6', 'toan-6', 3, 1, 'Tác giả: Nhà xuất bản Giáo Dục Việt Nam.<br>\r\nTrình bày: Bộ Giáo Dục Và Đào Tạo.<br>\r\nNhà cung cấp: Nhà Xuất Bản Giáo Dục Việt Nam.<br>\r\nSố bài đại số: 33 bài.<br>\r\nSố bài hình học: 11 bài.<br>', 12.00, 9.50, 'nguyenthanhlam_img04.jpg', 0, 1),
(6, 'Ngữ văn 6', 'ngu-van-6', 3, 1, 'Tác giả: Nhà xuất bản Giáo Dục Việt Nam.<br>\r\nTrình bày: Bộ Giáo Dục Và Đào Tạo.<br>\r\nNhà cung cấp: Nhà Xuất Bản Giáo Dục Việt Nam.<br>\r\nSố bài môn học: 35 bài.<br>', 12.00, 9.50, 'nguyenthanhlam_img05.jpg', 0, 1),
(7, 'Sinh học 6', 'sinh-hoc-6', 3, 1, 'Tác giả: Nhà xuất bản Giáo Dục Việt Nam.<br>\r\nTrình bày: Bộ Giáo Dục Và Đào Tạo.<br>\r\nNhà cung cấp: Nhà Xuất Bản Giáo Dục Việt Nam.<br>\r\nSố bài môn học: 52 bài.<br>', 12.00, 9.50, 'nguyenthanhlam_img06.jpg', 0, 1),
(8, 'Công nghệ 6', 'cong-nghe-6', 3, 1, 'Tác giả: Nhà xuất bản Giáo Dục Việt Nam.<br>\r\nTrình bày: Bộ Giáo Dục Và Đào Tạo.<br>\r\nNhà cung cấp: Nhà Xuất Bản Giáo Dục Việt Nam.<br>\r\nSố bài môn học: 27 bài.<br>', 12.00, 9.50, 'nguyenthanhlam_img08.jpg', 0, 1),
(9, 'Lịch sử 6', 'lich-su-6', 3, 1, 'Tác giả: Nhà xuất bản Giáo Dục Việt Nam.<br>\r\nTrình bày: Bộ Giáo Dục Và Đào Tạo.<br>\r\nNhà cung cấp: Nhà Xuất Bản Giáo Dục Việt Nam.<br>\r\nSố bài môn học: 28 bài.<br>', 12.00, 9.50, 'nguyenthanhlam_img10.jpg', 0, 1),
(10, 'Làm bạn với bầu trời', 'lam-ban-voi-bau-troi', 2, 3, 'Tác Giả: Nguyễn Nhật Ánh.<br>\r\nThể Loại Truyện: Tuổi Teen - Tuổi Học Trò.<br>\r\nNhà Xuất Bản: Nhà Xuất Bản Trẻ.<br>\r\nNgày Phát Hành: tháng 9 năm 2019.<br>\r\nTác phẩm thứ : 45.<br>\r\nThể loại: Hư cấu.<br>', 12.00, 9.50, 'nguyenthanhlam_img11.png', 0, 1),
(11, 'Quán gò đi lên', 'quan-go-di-len', 2, 3, 'Tác Giả: Nguyễn Nhật Ánh.<br>\r\nThể Loại Truyện: Tuổi Teen - Tuổi Học Trò.<br>\r\nNhà Xuất Bản: Nhà Xuất Bản Trẻ.<br>\r\nThể loại: Hư cấu.<br>\r\nXuất bản lần đầu tiên: 2000.<br>\r\n', 12.00, 9.50, 'nguyenthanhlam_img12.png', 0, 1),
(12, 'Cây chuối non đi giày xanh', 'cay-chuoi-non-di-giay-xanh', 2, 3, 'Tác Giả: Nguyễn Nhật Ánh.<br>\r\nThể Loại Truyện: Tuổi Teen - Tuổi Học Trò.<br>\r\nNhà Xuất Bản: Nhà Xuất Bản Trẻ.<br>\r\nThể loại: Hư cấu.<br>\r\nXuất bản lần đầu tiên: 2017.<br>\r\nKiểu sách: Bìa mềm.<br>\r\nCuốn trước: Ngày xưa có một chuyện tình.<br>\r\n', 12.00, 9.50, 'nguyenthanhlam_img14.png', 0, 1),
(13, 'Thám tử lừng danh Conan', 'tham-tu-lung-danh-conan', 1, 2, 'Nhà xuất bản: Shogakukan.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nTác giả sáng: Aoyama Gōshō.<br>\r\nĐăng tải: ngày 19 tháng 1 năm 1994 – nay.<br>\r\nSố tập : 99+ (danh sách tập).<br>', 12.00, 9.50, 'nguyenthanhlam_img24.jpg', 0, 1),
(14, 'Thám tử lừng danh Conan tập 5', 'tham-tu-lung-danh-conan-tap-5', 1, 2, 'Nhà xuất bản: Shogakukan.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nTác giả sáng: Aoyama Gōshō.<br>\r\nĐăng tải: ngày 19 tháng 1 năm 1994 – nay.<br>\r\nSố tập : 99+ (danh sách tập).<br>', 12.00, 9.50, 'nguyenthanhlam_img26.png', 0, 1),
(15, 'Thám tử lừng danh Conan tập 33', 'tham-tu-lung-danh-conan-tap-33', 1, 2, 'Nhà xuất bản: Shogakukan.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nTác giả sáng: Aoyama Gōshō.<br>\r\nĐăng tải: ngày 19 tháng 1 năm 1994 – nay.<br>\r\nSố tập : 99+ (danh sách tập).<br>', 12.00, 9.50, 'nguyenthanhlam_img27.jpg', 0, 1),
(16, 'Thám tử lừng danh Conan tập 95', 'tham-tu-lung-danh-conan-tap-95', 1, 2, 'Nhà xuất bản: Shogakukan.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nTác giả sáng: Aoyama Gōshō.<br>\r\nĐăng tải: ngày 19 tháng 1 năm 1994 – nay.<br>\r\nSố tập : 99+ (danh sách tập).<br>', 12.00, 9.50, 'nguyenthanhlam_img28.jpg', 0, 1),
(17, 'Thám tử lừng danh Conan tập 1', 'tham-tu-lung-danh-conan-tap-91', 1, 2, 'Nhà xuất bản: Shogakukan.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nTác giả sáng: Aoyama Gōshō.<br>\r\nĐăng tải: ngày 19 tháng 1 năm 1994 – nay.<br>\r\nSố tập : 99+ (danh sách tập).<br>', 12.00, 9.50, 'nguyenthanhlam_img29.png', 0, 1),
(18, 'Tôi thấy hoa vàng trên cỏ xanh', 'toi-thay-hoa-vang-tren-co-xanh', 2, 3, 'Tác giả: Nguyễn Nhật Ánh.<br>\r\nMinh họa: Đỗ Hoàng Tường.<br>\r\nThể loại: Tiểu thuyết thanh thiếu niên.<br>\r\nNhà xuất bản: Nhà xuất bản Trẻ.<br>\r\nNgày phát hành: 9 tháng 12 năm 2010.<br>\r\nKiểu sách: Sách in.<br>\r\nSố trang: 378.<br>', 12.00, 9.50, 'nguyenthanhlam_img31.png', 0, 1),
(19, 'Có 2 con mèo ngồi bên cửa sổ', 'co-2-con-meo-ngoi-ben-cua-so', 2, 3, 'Tác giả: Nguyễn Nhật Ánh.<br>\r\nMinh họa: Đỗ Hoàng Tường.<br>\r\nThể loại: Tiểu thuyết thanh thiếu niên.<br>\r\nNhà xuất bản: Nhà xuất bản Trẻ.<br>\r\nKiểu sách: Sách in.<br>\r\nThể loại: Truyện thiếu nhi.<br>', 12.00, 9.50, 'nguyenthanhlam_img33.png', 0, 1),
(20, 'Bàn có năm chỗ ngồi', 'ban-co-nam-cho-ngoi', 2, 3, 'Tác giả: Nguyễn Nhật Ánh.<br>\r\nMinh họa: Đỗ Hoàng Tường.<br>\r\nThể loại: Tiểu thuyết thanh thiếu niên.<br>\r\nNhà xuất bản: Nhà xuất bản Trẻ.<br>\r\nKiểu sách: Sách in.<br>\r\nThể loại: Truyện thiếu nhi.<br>\r\nNgày Sản Xuất: 1987.<br>', 12.00, 9.50, 'nguyenthanhlam_img34.jpg', 0, 1),
(21, 'Con chó nhỏ mang giỏ hoa hồng', 'con-cho-nho-mang-gio-hoa-hong', 2, 3, 'Tác giả: Nguyễn Nhật Ánh.<br>\r\nMinh họa: Đỗ Hoàng Tường.<br>\r\nThể loại: Tiểu thuyết thanh thiếu niên.<br>\r\nNhà xuất bản: Nhà xuất bản Trẻ.<br>\r\nKiểu sách: Sách in.<br>\r\nThể loại: Truyện dài.<br>\r\nNgày Sản Xuất: ngày 28 tháng 02 năm 2016.<br>', 12.00, 9.50, 'nguyenthanhlam_img30.png', 0, 1),
(22, 'Thám tử lừng danh Conan tập 97', 'tham-tu-lung-danh-conan-tap-97', 1, 2, 'Nhà xuất bản: Shogakukan.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nTác giả sáng: Aoyama Gōshō.<br>\r\nĐăng tải: ngày 19 tháng 1 năm 1994 – nay.<br>\r\nSố tập : 99+ (danh sách tập).<br>', 12.00, 9.50, 'nguyenthanhlam_img36.png', 0, 1),
(23, 'Thanh gươm diệt quỷ tập 6', 'thanh-guom-diet-quy-tap-6', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, 'nguyenthanhlam_img37.png', 0, 1),
(24, 'Thanh gươm diệt quỷ tập 15', 'thanh-guom-diet-quy-tap-15', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, 'nguyenthanhlam_img38.png', 0, 1),
(25, 'Thanh gươm diệt quỷ tập 5', 'thanh-guom-diet-quy-tap-5', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, 'nguyenthanhlam_img39.png', 0, 1),
(26, 'Thanh gươm diệt quỷ tập 18', 'thanh-guom-diet-quy-tap-18', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, 'nguyenthanhlam_img40.png', 0, 1),
(27, 'Thanh gươm diệt quỷ tập 14', 'thanh-guom-diet-quy-tap-14', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, 'nguyenthanhlam_img41.png', 0, 1),
(28, 'Thanh gươm diệt quỷ tập 3', 'thanh-guom-diet-quy-tap-3', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, 'nguyenthanhlam_img42.png', 0, 1),
(29, 'Thanh gươm diệt quỷ tập 8', 'thanh-guom-diet-quy-tap-8', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, 'nguyenthanhlam_img43.png', 0, 1),
(30, 'Thanh gươm diệt quỷ tập 12', 'thanh-guom-diet-quy-tap-12', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, 'nguyenthanhlam_img44.png', 0, 1),
(31, 'lam', 'lam', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, '', 0, 1),
(32, 'lam-1', 'lam-1', 1, 2, 'Tác giả: Gotōge Koyoharu.<br>\r\nNhà xuất bản: Shueisha.<br>\r\nNhà xuất bản tiếng Việt: Nhà xuất bản Kim Đồng.<br>\r\nThể loại: Phiêu lưu, kỳ ảo đen tối.<br>\r\nĐối tượng: Shōnen.<br>\r\nĐăng tải:15 tháng 2 năm 2016 – 18 tháng 5 năm 2020.<br>\r\nSố tập: 23.<br>', 12.00, 9.50, '', 1, 1),
(33, 'Bạch Vũ', 'bach-vu', 1, 1, '325.jpg', 0.00, 1.00, 'ádksa', 100, 50);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenthanhlam_user`
--

CREATE TABLE IF NOT EXISTS `nguyenthanhlam_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pass` char(32) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
