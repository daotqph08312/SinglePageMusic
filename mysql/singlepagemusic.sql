-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 05:03 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `singlepagemusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  `datenotify` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `category` int(255) NOT NULL,
  `idsinger` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name`, `picture`, `datenotify`, `category`, `idsinger`) VALUES
(1, 'Bảng xếp hạng tháng 4/2020', 'http://localhost:8080/image/albums/2340a74f340edd50841f.jpg', '2020-04-30 06:05:49.000000', 1, 1),
(2, 'Thích Thì Đến(Singer)', 'http://localhost:8080/image/albums/9cbf9f0ad3cdab1ec685a7ae62497035.jpg', '2020-05-02 23:47:38.000000', 1, 2),
(3, 'Lá Xa Lìa Cành(Singer)', 'http://localhost:8080/image/albums/d2a8fe2f80b1da9ed5ca4d3fc921446f.jpg', '2020-05-02 23:47:38.000000', 1, 2),
(4, 'Đừng Lo Anh Đợi Mà(Singer)', 'http://localhost:8080/image/albums/f3dab603fe21ef486ab717e22c380f92.jpg', '2020-05-02 23:47:38.000000', 1, 1),
(5, 'Hơn Cả Yêu(Singer)', 'http://localhost:8080/image/albums/a9ed142c215560ab45f6b2b433907f90.jpg', '2020-05-02 23:47:38.000000', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `datenotify` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `datenotify`) VALUES
(1, 'Nhạc Trẻ', 'Thông tin âm nhạc ca nhạc, tin tức về nhạc trẻ và làng âm nhạc Việt Nam, quốc tế, nhạc trẻ, nhạc thiếu nhi, nhạc hải ngoại, các album bài hát mới.', '2020-04-30 06:04:09.000000'),
(2, 'Nhạc Vàng', 'Thông tin âm nhạc ca nhạc, tin tức về nhạc trẻ và làng âm nhạc Việt Nam, quốc tế, nhạc trẻ, nhạc thiếu nhi, nhạc hải ngoại, các album bài hát mới.', '2020-04-30 06:05:08.000000'),
(3, 'Nhạc Quốc Tế', 'Thông tin âm nhạc ca nhạc, tin tức về nhạc trẻ và làng âm nhạc Việt Nam, quốc tế, nhạc trẻ, nhạc thiếu nhi, nhạc hải ngoại, các album bài hát mới.', '2020-04-30 06:05:25.000000');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(255) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idsession` int(255) NOT NULL,
  `datecreate` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlistdetail`
--

CREATE TABLE `playlistdetail` (
  `id` int(255) NOT NULL,
  `idsong` int(255) NOT NULL,
  `idPlaylist` int(255) NOT NULL,
  `id_playlist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(255) NOT NULL,
  `session` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `datecreate` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `singer`
--

CREATE TABLE `singer` (
  `id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `birthday` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `image` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `infomation` varchar(2000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `singer`
--

INSERT INTO `singer` (`id`, `name`, `birthday`, `image`, `description`, `infomation`) VALUES
(1, 'Mr.Siro', '1980-10-09 16:00:00.000000', NULL, 'Âm nhạc của Mr. Siro luôn nhẹ nhàng, sâu lắng nhưng lại da diết và mang đến cảm giác day dứt, ám ảnh rất sâu mỗi khi nghe nên rất để lại ấn tượng sâu sắc trong lòng khán giả yêu nhạc. Nhiều người còn nói vui rằng \"tột cùng của sự đau khổ là khi bạn dính phải combo thất tình + nhạc của Mr. Siro\".\r\n\r\nNgoài sáng tác và ca hát, Mr. Siro còn là người thầy rất có tâm, có trách nhiệm đặc biệt đối với những tài năng âm nhạc trẻ mà anh đang dẫn dắt.\r\n\r\nVới một chất giọng trầm ấm, tình cảm cùng với những sáng tác về tình yêu theo dòng nhạc Ballad đầy cảm xúc, nội dung phù hợp với số đông khán giả nên các ca khúc của Mr.Siro khi ra mắt đều nhận được sự ủng hộ nhiệt tình của cư dân mạng.[2]\r\n\r\nNăm 2012, anh tự thành lập công ty EGG Production, ngoài việc thành công gần như tất cả những bài hát đứng đầu các bảng xếp hạng lớn.[3]\r\n\r\nNăm 2013, anh đạt nhiều giải thưởng quan trọng do Làn Sóng Xanh và Zing Music Awards trao giúp con đường âm nhạc của anh ngày một rộng mở.[3] Mr. Siro có nhiều ca khúc đ', 'Mr. Siro, tên thật là Vương Quốc Tuân, sinh 18/11/1982 tại Thành phố Hồ Chí Minh,[1] là một nhạc sĩ viết các bài hát được giới trẻ biết đến. Ngoài khả năng sáng tác nhạc, anh còn có khả năng hát các tác phẩm của chính mình.'),
(2, 'Lê Bảo Bình', '0000-00-00 00:00:00.000000', NULL, 'Lê Bảo Bình hiện là cái tên khá hot trên cộng đồng mạng trong thời gian gần đây bởi những ca khúc chuyên về gia đình, cha mẹ và những người tha hương làm ăn xứ người. Tuy Lê Bảo Bình không được mài giũa, đào tạo chuyên nghiệp nhưng với niềm đam mê ca hát, Lê Bảo Bình tự rèn luyện kỹ năng ca hát và phong cách biểu diễn của một ca sĩ chuyên nghiệp. Bên cạnh ca hát, Lê Bảo Bình còn tự mình sáng tác nhạc để thỏa mãn niềm đam mê nghệ thuật giải trí của mình. Thông qua những ca khúc tự sáng tác và thể hiện của Lê Bảo Bình được tung lên cộng đồng mạng lại nhận được nhiều sự ủng hộ của cư dân mạng. Từ đây, tên tuổi của anh ngày càng được nhiều người biết đến. Hiện Lê Bảo Bình là gương mặt khá hot trong cộng đồng trẻ Việt hiện nay với nhiều ca khúc ấn tượng và thu hút người nghe. Với ca từ gần gũi, chân thật về tình cảm gia đình, cuộc sống xa quê hương,… khiến mọi người càng yêu mến dòng nhạc của Lê Bảo Bình. Chỉ trong vài thời gian, những sản phẩm âm nhạc của Lê Bảo Bình được khán giả chia sẻ ', 'Tên thật: Lê Bảo Bình Sinh năm: 30/01/1990 Cung hoàng đạo: Bảo Bình Quê quán: Thanh hóa Hiện tại Lê Bảo Bình đang sinh sống và làm việc tại Thành phố Hồ Chí Minh Lê Bảo Bình nổi tiếng trong lĩnh vực là ca sĩ Thời gian tham gia con đường nghệ thuật giải trí từ năm 2012 đến nay. Một số ca khúc nổi bật của Lê Bảo Bình: Yêu Vội Vàng, Niềm An Vui, Suy Nghĩ Cuộc Đời, Cha Mẹ Con Xin Lỗi, …\r\n\r\n '),
(3, 'Đức Phúc', '1996-12-01 06:25:09.000000', NULL, '1996-2014: Thời thơ ấu và khởi nghiệp\r\nĐức Phúc là con trai lớn trong một gia đình sinh sống ở khu phố trung tâm Hà Nội, có mức thu nhập bình thường và không có ai hoạt động trong lĩnh vực nghệ thuật, giải trí. Anh có niềm đam mê ca hát bắt nguồn từ việc gia đình anh rất thích hát karaoke. Những năm học cấp 3, anh tham gia tất cả các buổi casting biểu diễn văn nghệ tại trường, nhưng do nhiều yếu tố khách quan nên anh đều không được biểu diễn. Lên lớp 12, anh mới được biểu diễn trong lễ bế giảng. Khi lên đại học, anh tham gia câu lạc bộ âm nhạc của trường.\r\n\r\n2015: Giọng hát Việt\r\nNăm 2015, anh tham gia cuộc thi Giọng hát Việt. Trước khi tham gia Giọng hát Việt, anh cũng đã từng tham gia hai cuộc thi khác là Vietnam Idol và Vietnam\'s Got Talent nhưng đều bị loại ở ngay vòng đầu.[3] Tại vòng giấu mặt của cuộc thi Giọng hát Việt, anh đã thể hiện ca khúc I\'m not the Only One và chinh phục được 4 huấn luyện viên. Sau đó anh chọn về đội của Mỹ Tâm. Sau 6 tháng tham gia cuộc thi dưới sự dẫn dắt của Mỹ Tâm, vào ngày 20 tháng 9 năm 2015, anh chính thức trở thành quán quân nam đầu tiên của Giọng hát Việt với tỷ lệ tin nhắn bình chọn áp đảo 49.25%. Đồng thời, anh cũng là quán quân gây nhiều tranh cãi nhất trong 3 mùa của Giọng hát Việt với ý kiến cho rằng anh không xứng đáng[4], anh chiến thắng vì bản thỏa thuận của Mỹ Tâm với đơn vị tổ chức cuộc thi. Nhưng cũng có nhiều ý kiến cho rằng anh xứng đáng với ngôi vị quán quân bởi qua từng liveshow anh đều để lại ấn tượng trong lòng khán giả và anh luôn là thí sinh được công chúng, truyền thông chú ý nhiều nhất.[5][6][7]\r\n\r\nSau 3 tháng đăng quang Giọng hát Việt, anh hợp tác với nhạc sĩ Phạm Toàn Thắng để cho ra sản phẩm âm nhạc đầu tay Chỉ một câu. Sản phẩm đầu tay này đã mang về cho Đức Phúc và tác giả giải thưởng \"Ca sĩ thể hiện hiệu quả nhất\" và \"Bài hát của tháng\" trong chương trình Bài hát Việt tháng 11 năm 2015[8], và giải thưởng \"Ca sĩ được yêu thích nhất\" do khán giả bình chọn trong đêm chung kết Bài hát Việt 2015. \"Chỉ một câu\" cũng xuất hiện trong danh sách đề cử sơ bộ \"Bài hát của năm\" của Giải thưởng Âm nhạc Cống hiến lần thứ 11.[9', 'Đức Phúc tên đầy đủ Nguyễn Đức Phúc (sinh ngày 15 tháng 10 năm 1996) là một nam ca sĩ người Việt Nam. Anh là quán quân Giọng hát Việt mùa 3[1]. Anh từng là sinh viên khoa kiến trúc Trường Đại học Xây dựng vào năm 2014 và sau khi quyết định Nam tiến, anh theo học khoa Mỹ thuật công nghiệp ở Trường Đại học Văn Lang. Hiện tại anh tạm dừng và bảo lưu kết quả học tập để chuyên tâm cho sự nghiệp âm nhạc. Hiện anh đang hoạt động nghệ thuật với tư cách một ca sĩ tự do. '),
(4, 'Thanh Hưng Idol', '1991-01-29 16:00:00.000000', NULL, 'Thanh Hưng Idol tên thật là Nguyễn Thanh Hưng, là một nam ca sĩ trẻ Việt Nam. Anh được khán giả biết đến nhiều nhất từ khi anh tham gia cuộc thi VietNam Idol 2012. Tuy chỉ lọt vào Top 10, nhưng sự nghiệp của Thanh Hưng cũng khá phát triển. Cũng trong năm 2012, anh giành giải Nhất cuộc thi ban nhạc trường Cao đăng nghệ thuật Hà Nội, Giải Nhất cuộc thi Tài năng trẻ tổ chức tại Đà Nẵng,\r\n\r\nGần đây, một ca khúc của Thanh Hưng là \"Sai người sai thời điểm\" bất ngờ được chia sẻ với tốc độ khủng trên mạng xã hội. Tuy nhiên, nam ca sĩ 9X lại tỏ ra không vui, và bức xúc khi bị một số người cho rằng anh đang dựa hơi hiện tượng mạng Hoa Vinh. Được biết ca khúc này được phát hành vào tháng 01 năm 2018. Tuy nhiên, đến đầu tháng 7 vừa qua thì lượt chia sẻ ca khúc này bất ngờ tăng mạnh và hút hàng chục triệu lượt view.', 'Ca sĩ Thanh Hưng Idol sinh ngày 30-10-1991 tại Tỉnh Ninh Bình, nước Việt Nam. Anh sống và làm việc chủ yếu ở Thành phố Hà Nội, nước Việt Nam. Anh sinh thuộc cung Thần Nông, cầm tinh con (giáp) dê (Tân Mùi 1991). Thanh Hưng Idol xếp hạng nổi tiếng thứ 85613 trên thế giới và thứ 1416 trong danh sách Ca sĩ nổi tiếng. Tổng dân số của Việt Nam năm 1991 vào khoảng 67,24 triệu người.'),
(5, 'H2K', '1991-01-14 16:00:00.000000', NULL, 'Đã có những ca khúc mới đẩy lùi được cơn sốt mang tên Độ ta không độ nàng, chẳng hạn bài hát về thời học sinh mang tên Tháng năm không quên. Sản phẩm của 2 giọng ca không chuyên H2K, KN bất ngờ lọt top 3 #zingchart real-time, vượt qua bản nhạc Hoa lời Việt. Trên Zing MP3, bản thu âm đạt hơn 2 triệu lượt nghe, nhiều khả năng tiến thẳng lên top 3 #zingchart tuần sau.\r\n\r\nTháng năm không quên viết về lứa tuổi học trò cùng thời khắc chia tay cuối cấp. Ca khúc được chia sẻ rộng rãi trên mạng xã hội và tìm kiếm trên trang nghe nhạc trực tuyến Zing MP3.\r\n\r\nPhần MV đơn giản với những hình ảnh mang đậm chất học trò. Giọng hát khá lạ của chủ nhân cùng lời ca đầy ý nghĩa khiến người nghe không khỏi xúc động.', 'H2K (Lê Huỳnh Khải) và KN (Lê Văn Thịnh) là những gương mặt quen thuộc trong giới underground. KN từng sáng tác nhiều ca khúc và đăng trên trang cá nhân, nhưng chỉ mới là các bản demo. Đây là sản phẩm chính thức đầu tiên của cả hai.\r\n\r\n'),
(6, 'Minh Vương M4U ', '1983-12-31 16:00:00.000000', NULL, 'M4U là một nhóm nhạc nam Việt Nam thành lập năm 2007 với 5 thành viên ban đầu, gồm 3 thành viên hiện tại: Minh Vương, Đinh Mạnh Ninh và Trần Hồng Dương. Tên M4U được lấy ý tưởng từ \"Music For U (Muzik For U)\", ban nhạc gồm 5 thành viên cùng sở thích và sở trường âm nhạc. Hoạt động một thời gian, nhóm quyết định tan rã để mỗi thành viên đi hát riêng, trưởng nhóm Minh Vương chia sẻ: \"Tư tưởng của tôi là để cho các thành viên có thể thỏa sức. Bởi tôi biết nhóm nhạc chỉ là đam mê thôi, còn để kiếm sống được bằng nhóm nhạc là rất khó bởi có thể nhóm được mời đi diễn ở các show, các chương trình lớn nhưng lại rất thưa. Ban tổ chức có thể mời một nhóm nhạc khác chứ không phải M4U, đó là lý do các thành viên cũng phải tách ra solo để có kế sinh nhai của riêng mình\"[1]. Đôi khi một số thành viên thỉnh thoảng ra bài hát mới và tham gia chương trình cùng nhau.[2]', 'Minh Vương tên thật là Trần Trương Minh Vương, sinh ngày 21 tháng 12 năm 1984 tại Hà Nội. Anh từng là sinh viên của trường Cao đẳng Nghệ thuật Hà Nội, khoa Guitar cổ điển. Trong thời gian học ở đây, Minh Vương đã lập nhóm nhạc 8X với vai trò dàn dựng phối bè và mixer cùng với Bằng Cường và Tô Minh Đức nhưng không quá nổi bật, rồi sau đó là nhóm M4U.'),
(7, 'AMEE', '2000-02-22 16:00:00.000000', NULL, 'Đang là thực tập sinh của một công ty giải trí và chưa ra mắt nên Huyền My chưa được nhiều người biết đến. Mặc dù vậy, gương mặt của cô đã gây ấn tượng tốt với đạo diễn Khương Vũ nên anh mời cô tham gia MV Hongkong1. Trong những hình ảnh trên mạng, Huyền My luôn khoe nụ cười ngọt ngào và mái tóc dài buông xõa. Huyền My vẫn còn biểu cảm non nớt trong những bức ảnh. Ở tuổi 18, trông cô rất trẻ trung. Một lợi thế khác của cô là làn da trắng hồng. Trong MV Hongkong1, cô cũng có nhiều cảnh quay cận cảnh đẹp, nhưng biểu cảm bị đánh giá là chưa thật cổ điển và đồng điệu với diễn xuất “phiêu” của nam chính.', 'AMEE tên thật là Trần Huyền My, sinh ngày 23/3/2000 tại Hà Nội. Không chỉ gây chú ý bởi ngoại hình xinh đẹp như idol Hàn Quốc, cô bạn còn sở hữu giọng hát rất ngọt cùng khả năng vũ đạo cực kì ổn. Cô kết hợp với B Ray và Masew trong bài hát \"Ex\'s Hate Me\" gây bão vào năm đầu năm 2019. Tiếp theo đó vào tháng 5 năm 2019, cô tiếp tục cho ra mắt Đen đá không đường bài hát đạt 4,3 triệu lượt nghe sau 5 ngày phát hành.'),
(8, 'Phan Duy Anh', '1992-09-28 16:00:00.000000', NULL, 'Chàng ca sĩ trẻ đến từ Hà Nội từng tham gia cuộc thi The Voice 2017 và xuất sắc vượt qua vòng giấu mặt với ca khúc Phía sau một cô gái. Tuy nhiên, khi đến vòng đối đầu Duy Anh đã phải nuối tiếc khi bị loại. Nhiều khán giả tỏ ra nuối tiếc cho gương mặt trẻ với chất giọng nội lực. Sau khi rời The Voice, Duy Anh hầu như không có hoạt động nổi bật, anh chỉ cover các bài hát rồi update trên Youtube cá nhân. Nhiều người nghi ngờ rằng sự nghiệp của nam ca sĩ trẻ sẽ mãi mờ nhạt như vậy. ', 'Ca sĩ Phan Duy Anh tên thật là Ngô Đức Huy, anh sinh ngày 29/09/1992. Đam mê âm nhạc nhưng không được sự ủng hộ từng phía gia đình, anh phải vất vả bươn trải tự học, anh không qua những trường lớp chuyên nghiệp về âm nhạc. Duy Anh từng được biết đến với danh xưng \"chàng trai hát rong\". '),
(9, 'Vũ Duy Khánh', '1989-10-09 16:00:00.000000', NULL, 'Với sự đa tài trong cả lĩnh vực ca hát và sáng tác, Vũ Duy Khánh được người hâm mộ yêu mến và phong tặng danh hiệu \"Hoàng tử nhạc buồn\".\r\nHãy đến với Vũ Duy Khánh Official và đón xem những ca khúc hay nhất, hot nhất của ca sĩ Vũ Duy Khánh các bạn nhé!', 'Ca sĩ Vũ Duy Khánh sinh ngày 10/10/1989 tại Hà Nôi. Anh sinh ra và lớn lên trong một gia đình nghệ thuật, bố là NSƯT Minh Hải diễn viên nhà hát cải lương Hà Nội. \r\nVũ Duy Khánh từng là sinh viên khoa Thanh nhạc tại trường Cao đẳng nghệ thuật Hà Nội. Anh bắt đầu đi hát từ năm 2005 và từng tham gia vào nhóm nhạc Thiên Hà Xanh. Anh thực sự được bết đến vào năm 2008 khi thể hiện thành công ca khúc với tựa đề “Buồn”. Để tiếp bước cho sự thành công của mình anh đã liên tiếp cho ra đời 2 ca khúc: Khóc và Buồn 2. Đặc biệt năm 2011 với sự giúp đỡ của nhạc sĩ Đơn Thạch anh đã tổ chức thành công Live show “ Vũ Duy Khánh tiếng hát và cuộc đời”. ');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `id` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lysic` varchar(3000) DEFAULT NULL,
  `timeplay` varchar(10) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `idsinger` int(255) NOT NULL,
  `idcategory` int(255) NOT NULL,
  `idalbum` int(255) DEFAULT NULL,
  `viewcount` bigint(255) NOT NULL,
  `datepublish` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`id`, `name`, `lysic`, `timeplay`, `link`, `image`, `idsinger`, `idcategory`, `idalbum`, `viewcount`, `datepublish`) VALUES
(1, 'Thích Thì Đến', 'Ver1: \r\nTa còn gì để nói \r\nChấm dứt là cách tốt thôi \r\nHai người dưng ngược lối\r\nSuy nghĩ chi em ơi \r\nHà cớ chi níu kéo \r\nKhi cuộc tình ta đã héo khô \r\nAnh phải lùi lại một bước\r\nRefrain:\r\nTrả cho em sự tự do\r\n \r\nTrả cho em những lời nói dối \r\nTrả cho em những vết thương\r\nEm xếp ngăn nắp vào anh bao ngày\r\nNgười dưng không cần quan tâm \r\nYêu đương gì đâu hỏi thăm \r\nHôm nay anh vấp ngã, chỉ biết nhìn xa xăm\r\nChorus:\r\nNgười ấy là lựa chọn tuyệt vời của em thì em hãy \r\nNgước nhìn về bên ấy cớ sao lại nhìn về bên đây\r\nCó chăng sự tự do em nói với anh không như ý \r\nEm xem anh là nơi em thích thì đến không thì đi\r\nEm có bao giờ nghĩ là anh đớn đau bao năm tháng \r\nAnh không hề than trách hay níu kéo em dù nửa lời \r\nBởi vì yêu em thôi nên anh đành phải ngậm ngùi \r\nNấp sau những mong muốn nhất thời của em ... vậy thôi \r\nRefrain:\r\nTrả cho em sự tự do\r\nTrả cho em những lời nói dối \r\nTrả cho em những vết thương\r\nEm xếp ngăn nắp vào anh bao ngày\r\nNgười dưng không cần quan tâm \r\nYêu đương gì đâu hỏi thăm \r\nHôm nay anh vấp ngã, chỉ biết nhìn xa xăm\r\nChorus: (x2)\r\nNgười ấy là lựa chọn tuyệt vời của em thì em hãy \r\nNgước nhìn về bên ấy cớ sao lại nhìn về bên đây\r\nCó chăng sự tự do em nói với anh không như ý \r\nEm xem anh là nơi em thích thì đến không thì đi\r\nEm có bao giờ nghĩ là anh đớn đau bao năm tháng \r\nAnh không hề than trách hay níu kéo em dù nửa lời \r\nBởi vì yêu em thôi nên anh đành phải ngậm ngùi \r\nNấp sau những mong muốn nhất thời của em ... vậy thôi \r\nBridge: \r\nNấp sau những mong muốn nhất thời của em ... vậy thôi ', '5:45', NULL, NULL, 2, 1, 2, 0, '2020-04-30'),
(2, 'Đừng Lo Anh Đợi Mà', 'Tạm biệt nhau đã lâu\r\nSắp về đến nhà\r\nMà trong anh còn nguyên bao sâu lắng\r\nNhà anh không thật xa\r\nMới đây mà anh đã thấy\r\nTrống vắng tương tư bởi vì em là...\r\nEm là Thiên Thần May Mắn\r\nEm là Sao Trời rọi sáng\r\nCó em - anh nào đâu mơ!\r\nDẫu cho với tình yêu trước\r\nVết thương của em vẫn còn\r\nĐừng lo anh đợi mà\r\nEm ơi bao lâu mới đến ngày mai\r\nĐêm nay tại sao lại trôi quá dài\r\nĐường về một mình chẳng còn êm ái\r\nNhư đường mình đi mới đây\r\nChạm vào đôi môi mềm mại ấy\r\nCảm xúc lâng lâng ngất ngây\r\nTình yêu như muôn ngàn hương hoa đang lan tỏa trong tim anh\r\nĐôi chân anh muốn quay bước gặp em\r\nAnh không muốn lỡ đi giây phút nào\r\nDù chẳng còn đặc biệt với ai đó\r\nEm nhạt nhòa giữa đám đông\r\nNhưng với anh là tinh tú\r\nDẫn lối anh trong sương mù\r\nEm giống như nguồn cảm hứng\r\nĐể anh tạo ra tất cả dành cho em\r\nI wanna leave it all behind and be with you', '4:32', NULL, NULL, 1, 1, 4, 0, '2020-04-30'),
(3, 'Bức tranh yêu thương', 'Đời người như bức tranh vẽ lên giấy\r\nDẫu muôn vàn màu sắc, cũng không thể khiến tranh rộng lớn\r\nNgười mang yêu thương điểm tô bức tranh đẹp, tang cho the gian.phát tâm, từ bi, độ nhân\r\nLợi danh kia rồi tan như khói mây\r\nCòn vương nơi đây lòng yêu thương chân thành\r\nHận thù kia làm tim ta đớn đau\r\nLòng bao dung đời ta mới an nhiên!\r\nĐK:\r\nĐời người qua bao gian nan mong được ngày bình yên\r\nBuồn phiền đau khổ chất chứa trong lòng đầy ước muốn\r\nMột lần cho đi bao nhiêu ân tình vạn lần đến\r\nMột lần cho bức tranh tô thêm màu yêu thương!', '4:45', NULL, NULL, 8, 1, 1, 0, '2020-04-30'),
(4, 'Cuộc Sống Xa Nhà', 'Vì cuộc sống nên con phải \r\nQua nơi đất khách \r\nỞ một phương trời mới xa xôi \r\nKhông giống như quê nhà \r\nDậy từ sớm \r\nCon khoác lên mình vội mảnh áo \r\nMiệng nhai bánh đạp xe thật nhanh \r\nCon đi đến chỗ làm \r\nDù con biết ở quê \r\nMẹ cha lam lũ gấp trăm lần \r\nNhưng không dám ngỏ lời một câu \r\nCon thương lắm \r\nCuộc sống xa nhà \r\nNhiều khi tự nhiên khiến con mỏi mệt \r\nCuộc sống xa nhà \r\nMẹ cha hỡi con bỗng thấy nhớ nhà \r\nCuộc sống xa nhà làm con phải khóc \r\nÂm thầm mỗi khi màn đêm buông \r\nRồi phải cố nén dòng lệ tuôn \r\nCon biết đây là \r\nTự con chọn lấy lối đi thôi mà \r\nPhải cố gắng làm \r\nDù vất vả mấy cũng không dám than \r\nCuộc sống xa nhà dạy con phải cố \r\nGượng cười dù gặp chuyện không vui \r\nPhải mạnh mẽ một mình vững bước đi \r\nVì cuộc sống nên con phải \r\nQua nơi đất khách \r\nỞ một phương trời mới xa xôi \r\nKhông giống như quê nhà \r\nDậy từ sớm \r\nCon khoác lên mình vội mảnh áo \r\nMiệng nhai bánh đạp xe thật nhanh \r\nCon đi đến chỗ làm \r\nDù con biết ở quê \r\nMẹ cha lam lũ gấp trăm lần \r\nNhưng không dám ngỏ lời một câu \r\nCon thương lắm \r\nCuộc sống xa nhà \r\nNhiều khi tự nhiên khiến con mỏi mệt \r\nCuộc sống xa nhà \r\nMẹ cha hỡi con bỗng thấy nhớ nhà \r\nCuộc sống xa nhà làm con phải khóc \r\nÂm thầm mỗi khi màn đêm buông \r\nRồi phải cố nén dòng lệ tuôn \r\nCon biết đây là \r\nTự con chọn lấy lối đi thôi mà \r\nPhải cố gắng làm \r\nDù vất vả mấy cũng không dám than \r\nCuộc sống xa nhà dạy con phải cố \r\nGượng cười dù gặp chuyện không vui \r\nPhải mạnh mẽ một mình vững bước đi \r\nCuộc sống xa nhà \r\nNhiều khi tự nhiên khiến con mỏi mệt \r\nCuộc sống xa nhà \r\nMẹ cha hỡi con bỗng thấy nhớ nhà \r\nCuộc sống xa nhà làm con phải khóc \r\nÂm thầm mỗi khi màn đêm buông \r\nRồi phải cố nén dòng lệ tuôn \r\nCon biết đây là \r\nTự con chọn lấy lối đi thôi mà \r\nPhải cố gắng làm \r\nDù vất vả mấy cũng không dám than \r\nCuộc sống xa nhà dạy con phải cố \r\nGượng cười dù gặp chuyện không vui \r\nPhải mạnh mẽ một mình vững bước đi \r\nPhải mạnh mẽ một mình vững bước đi', '4:45', NULL, NULL, 6, 1, 1, 0, '2020-04-30'),
(5, 'Sao Anh Chưa Về Nhà', 'Trời đã gần sáng rồi \r\nMà nỗi nhớ anh vẫn còn ngổn ngang \r\nTrời đã gần sáng rồi \r\nMà em vẫn ngồi hát lời thở than \r\nRằng anh ơi đừng rong chơi \r\nĐừng mải mê những điều buông lơi \r\nMà quên đi rằng trong đêm \r\nCòn có người đợi anh \r\nAnh ơi ngoài kia bao điều mặn đắng \r\nAnh đừng lăn tăn, về nhà thôi \r\nTrời đã gần sáng rồi! \r\nEm đợi anh nhé \r\nEm chờ anh nhé \r\nVui thôi đừng vui quá còn về với em \r\nKim đồng hồ vẫn từng nhịp tick tock \r\nMà sao, sao anh chưa về? \r\nAnh đừng cứ thế \r\nAnh đừng mãi thế anh ơi \r\nĐừng làm trái tim này vỡ đôi \r\nAnh đừng cứ mãi nói lời xin lỗi rồi thôi \r\nGiờ này anh đâu rồi? \r\nMấy giờ rồi vậy cà? \r\nAnh taxi à anh taxi ơi \r\nMới đi ra ngoài có 30p \r\nMà đã liên tục phải hắt xì hơi \r\nEm đăng trạng thái, em up story \r\nEm bảo là nhớ ricky otđ \r\nNhà hàng chưa kịp đem ra món khai vị \r\nThì tin nhắn điện thoại kêu anh về nhà đi \r\n(là sao) \r\nKhi tiệc chưa kịp tàn \r\nĐang vui cũng lũ bạn \r\nNgoài đường thì đông đúc \r\nÔi đường về thật gian nan \r\nAnh sợ cái đèn đỏ \r\nAnh chờ cái đèn xanh \r\nEm gọi anh về liền \r\nKhông là đời anh tàn canh \r\nAnh vượt qua ngã tư ngã 5 ngã 7 \r\nRủ rê anh ăn chơi \r\nAnh bỏ qua cả thẩy \r\nEm quá đáng lắm luôn \r\nCứ ỷ đẹp là có quyền \r\nNhưng mà chờ xíu đi \r\nQuẹo phải tới liền nè \r\nEm đợi anh nhé \r\nEm chờ anh nhé \r\nVui thôi đừng vui quá còn về với em \r\nKim đồng hồ vẫn từng nhịp tick tock \r\nMà sao, sao anh chưa về? \r\nAnh đừng cứ thế \r\nAnh đừng mãi thế anh ơi \r\nĐừng làm trái tim này vỡ đôi \r\nAnh đừng cứ mãi nói lời xin lỗi rồi thôi \r\nGiờ này anh đâu rồi? \r\n15 phút, anh còn 5 phút \r\nAnh còn 3 phút mau mau về \r\nVề đi nhé anh về đi nhé \r\nNếu không, hmm nếu không thì \r\n15 phút, anh còn 5 phút \r\nAnh còn 3 phút nhà bao việc \r\nTại sao cứ, em tại sao cứ ngóng trông \r\nCứ ngóng trông anh hoài \r\nAnh đừng cứ thế \r\nAnh đừng mãi thế anh ơi \r\nĐừng làm trái tim này vỡ đôi \r\nAnh đừng cứ mãi nói lời xin lỗi rồi thôi \r\nGiờ này anh đâu rồi? \r\nSao sao anh chưa về? \r\nMà sao anh chưa về?', '4:45', NULL, NULL, 7, 1, 1, 0, '2020-04-30'),
(6, 'Chỉ Khi Anh Một Mình', 'Chỉ khi anh một mình \r\nThì anh mới thấy cô đơn \r\nChỉ khi anh một mình \r\nThì em cũng chẳng kế bên \r\nNgồi ngắm cơn mưa \r\nNgoài ô cửa sổ nhỏ nhắn \r\nĐông đang kéo về \r\nBàn tay lạnh quá tìm ai sưởi ấm bây giờ \r\nChỉ khi anh một mình \r\nNiềm vui anh kiếm nơi đâu \r\nChỉ khi anh một mình \r\nThì anh nhớ lúc bên nhau \r\nCười lên em nhé \r\nDù sao cũng xa mất rồi không thể tìm \r\nVì đông lạnh quá \r\nTim anh buốt giá em ơi \r\nDẫu anh có buồn \r\nDẫu cho có giữ thăng trầm \r\nDẫu đôi mắt buồn \r\nMỗi khi trông về phía em \r\nÁnh trăng với đèn đường khuya hiu hắt \r\nTrong lòng thêm đau thắt \r\nÔm giá lạnh mà anh cữ ngỡ ôm em \r\nChỉ khi anh một mình \r\nNiềm vui anh kiếm nơi đâu \r\nChỉ khi anh một mình \r\nThì anh nhớ lúc bên nhau \r\nCười lên em nhé \r\nDù sao cũng xa mất rồi chẳng thể tìm \r\nVì đông lạnh quá \r\nTim anh buốt giá em ơi \r\nDẫu anh có buồn \r\nDẫu cho có giữ thăng trầm \r\nDẫu đôi mắt buồn \r\nMỗi khi trông về phía em \r\nÁnh trăng với đèn đường khuya hiu hắt \r\nTrong lòng thêm đau thắt \r\nÔm giá lạnh mà anh cữ ngỡ ôm em \r\nDẫu anh có buồn \r\nDẫu cho có giữ thăng trầm \r\nDẫu đôi mắt buồn \r\nMỗi khi trông về phía em \r\nÁnh trăng với đèn đường khuya hiu hắt \r\nTrong lòng thêm đau thắt \r\nÔm giá lạnh mà anh cữ ngỡ ôm em \r\nCó cay đắng nào \r\nKhiến cho nước mắt tuôn trào \r\nKhẽ trong nỗi buồn \r\nLặng thinh không nói nên câu \r\nSuốt đêm cứ ngồi buồn hoài như thế \r\nHoang tàn ngồi bên ghế \r\nMưa đã về sao em chưa về em ơi \r\nSuốt đêm cứ ngồi buồn hoài như thế \r\nHoang tàn ngồi bên ghế \r\nMưa đã về sao em chưa về với anh', '4:45', NULL, NULL, 9, 1, 1, 0, '2020-04-30'),
(7, 'Trúc Xinh', 'Trúc xinh trúc mọc đầu đình \r\nĐến nay sao vẫn một mình \r\nLá rơi rơi mãi thật buồn \r\nNhìn người đi mắt anh tuôn sầu \r\nÁo anh nay sứt chỉ rồi \r\nNhớ em anh nhớ một đời \r\nCố quên nhưng mãi bồi hồi \r\nLệ nhòa đôi mi ướt anh mỉm cười \r\nAnh đã yêu người rất lâu \r\nSao nỡ quên thật mau \r\nDuyên ối a \r\nTình ối a \r\nNay đã trôi về đâu? \r\nTrăng với sao cùng đến đây \r\nAnh khóc cho ngàn mây \r\nĐem nhớ thương \r\nLòng vấn vương nàng \r\nCớ sao người nỡ mang đi câu chia lìa \r\nRồi quên í a câu thề \r\nThương mấy a cho nhiều \r\nĐể giờ người bỏ anh cô liêu \r\nPhận duyên mong manh rã rời \r\nLặng yên cách chia đôi đời \r\nEm ở nơi phương trời còn ai nghĩ tới \r\nNgười nặng tương tư khoác lên u sầu \r\nTriền miên nỗi đau trong lòng \r\nMong phút giây yên bình \r\nDẫu mình còn nặng suy tư \r\nNhành hoa nay úa sắc hương phai tàn \r\nTựa duyên chúng ta phai nhạt \r\nAnh vẫn thương em nhiều mà sao em nỡ \r\nNgười là trúc xinh \r\nMặn mà khó quên \r\nDặn lòng nhớ nên anh đi tìm \r\nNgười giờ ở đâu \r\nMà mình mãi trông mong \r\nNgười ơi người ở đừng về \r\nAnh đã yêu người rất lâu \r\nSao nỡ quên thật mau \r\nDuyên ối a \r\nTình ối a \r\nNay đã trôi về đâu? \r\nTrăng với sao cùng đến đây \r\nAnh khóc cho ngàn mây \r\nĐem nhớ thương \r\nLòng vấn vương nàng \r\nTình mình dở dang em mang câu chia lìa \r\nNgười quên í a câu thề \r\nThương mấy a cho nhiều \r\nĐể giờ người bỏ anh cô liêu \r\nPhận duyên mong manh rã rời \r\nLặng yên cách chia đôi đời \r\nEm ở nơi phương trời còn ai nghĩ tới \r\nNgười nặng tương tư khoác lên u sầu \r\nTriền miên nỗi đau trong lòng \r\nMong phút giây yên bình \r\nDẫu mình còn nặng suy tư \r\nNhành hoa nay úa sắc hương phai tàn \r\nTựa duyên chúng ta phai nhạt \r\nAnh vẫn thương em nhiều mà sao em nỡ \r\nTình mình dở dang em mang câu chia lìa \r\nNgười quên í a câu thề \r\nThương mấy a cho nhiều \r\nĐể giờ người bỏ anh cô liêu \r\nPhận duyên mong manh rã rời \r\nLặng yên cách chia đôi đời \r\nEm ở nơi phương trời còn ai nghĩ tới \r\nNgười nặng tương tư khoác lên u sầu \r\nTriền miên nỗi đau trong lòng \r\nMong phút giây yên bình \r\nDẫu mình còn nặng suy tư \r\nNhành hoa nay úa sắc hương phai tàn \r\nTựa duyên chúng ta phai nhạt \r\nAnh vẫn thương em nhiều mà sao em nỡ', '4:45', NULL, NULL, 6, 1, 1, 0, '2020-04-30'),
(8, 'Em Có Biết', 'Kể từ ngày mà em đi xa \r\nLòng anh nặng trĩu hơn \r\nĐường bass của cây guitar \r\nAnh nghĩ về chuyện đôi mình trong nước mắt \r\nĐường tàu em bước ngàn dặm \r\nAnh chỉ là một cái sân ga \r\nKể từ ngày mà em đi xa \r\nCăn phòng trên gác \r\nNhạt hương thơm mưa rơi rỉ rả \r\nRêu phong bám vào tường \r\nChưa chịu buông tha \r\nAnh cố nắm đống tro tàn \r\nMà vẫn chưa chịu buông ra \r\nMẹ cũng câu hỏi cũ \r\nBa cũng vẫn còn trông \r\nTrước khi ánh đèn buông \r\nMẹ luôn hỏi: ”em có về không?” \r\nNgoài kia toàn văn vở \r\nEm cũng nên đề phòng mà \r\nNụ hoa cúc bé nhỏ \r\nĐính vào tóc đẹp lòng ta \r\nSương đêm lạnh đầy một màu \r\nTím cả đôi bàn tay \r\nTrời đừng giấu cũng đừng mang đi \r\nNgười con thương bước qua từng ngày \r\nNhững lúc say mình đã từng chill \r\nNhững bản nhạc mình đã từng cháy \r\nCũng một quán quen này \r\nNhưng chỉ còn mình anh nơi đây \r\nCho anh mang ngày vui đem cất bơ vơ \r\nDù là hàng ngàn ngày đau \r\nChôn vùi anh vào trong vô vàn \r\nBình minh soi sáng nắng trên niềm nhớ \r\nNhưng trao về ai nữa đây \r\nEm có biết \r\nAnh còn thương nhớ em không vậy? \r\nMột cơn gió lay cũng chênh vênh \r\nRằng con tim không bến lênh đênh \r\nTìm người xưa đã bỏ quên \r\nThêm chiếc dù trong mưa rồi \r\nCó em có em đời thêm thắm tươi mỗi đêm \r\nThành phố muôn màu thôi sầu \r\nChờ ta tái yêu có nhau \r\nLần cuối mà anh gặp em \r\nĐôi mắt nàng vẫn long lanh \r\nMây trắng phơi phới còn đó \r\nBầu trời bỗng sáng bừng hạ trong xanh \r\nEm nói rằng anh hãy quên em đi \r\nVì em thay bồ như thay áo \r\nAnh đã cố, anh từng cố \r\nĐể rồi kết cục lại không thành \r\nAnh không đành bỏ rơi tất cả đằng sau \r\nNhững kỉ niệm cần được yêu thương \r\nCho nó chỗ đứng bằng nhau \r\nTừng là người dệt mộng thơ ngây \r\nCùng nhau tâm tình mỗi buổi tối \r\nChợt giật mình ở trong hiện tại \r\nNước mắt lấm lem cả vỏ gối \r\nĐâu có tiếc rằng khi biết yêu một ai \r\nAnh ước trở thành đường ke \r\nĐể cho em hít trong một line \r\nThâm nhập vào sâu kí ức \r\nKhiến em nhớ mãi \r\nDù em có yêu ai nữa \r\nThì anh cũng chẳng thể mờ phai \r\nVà đường về giờ này thật vắng lắm em ơi \r\nHãy cứ gọi anh khi em thấy chơi vơi \r\nEm như một viên đá quý \r\nTrời ban phước ngọc ngà xanh \r\nNiềm tin xót lại \r\nLà chiếc chìa khóa vào nhà anh \r\nCho anh mang ngày vui đem cất bơ vơ \r\nDù là hàng ngàn ngày đau \r\nChôn vùi anh vào trong vô vàn \r\nBình minh soi sáng nắng trên niềm nhớ \r\nNhưng trao về ai nữa đây \r\nEm có biết \r\nAnh còn thương nhớ em không vậy? \r\nMột cơn gió lay cũng chênh vênh \r\nRằng con tim không bến lênh đênh \r\nTìm người xưa đã bỏ quên \r\nThêm chiếc dù trong mưa rồi \r\nCó em có em đời thêm thắm tươi mỗi đêm \r\nThành phố muôn màu thôi sầu \r\nChờ ta tái yêu có nhau \r\nMột cơn gió lay cũng chênh vênh \r\nRằng con tim không bến lênh đênh \r\nTìm người xưa đã bỏ quên \r\nThêm chiếc dù trong mưa rồi \r\nCó em có em đời thêm thắm tươi mỗi đêm \r\nThành phố muôn màu thôi sầu \r\nChờ ta tái yêu có nhau', '4:45', NULL, NULL, 5, 1, 1, 0, '2020-04-30'),
(9, 'Hơn Cả Yêu', 'Em hay hỏi anh \r\nRằng anh yêu em nhiều không? \r\nAnh không biết phải nói thế nào \r\nĐể đúng với cảm xúc trong lòng \r\nKhi anh nhìn em \r\nLà anh thấy cuộc đời anh \r\nLà quá khứ và cả tương lai \r\nLà hiện tại không bao giờ phai \r\nTình yêu trong anh vẫn luôn thầm lặng \r\nNhưng không có nghĩa không rộng lớn \r\nChỉ là anh đôi khi khó nói nên lời \r\nMong em hãy cảm nhận thôi \r\nCao hơn cả núi, dài hơn cả sông \r\nRộng hơn cả đất, xanh hơn cả trời \r\nAnh yêu em, anh yêu em nhiều thế thôi \r\nVượt qua ngọn gió, vượt qua đại dương \r\nVượt qua cả những áng mây thiên đường \r\nDẫu có nói bao điều \r\nCảm giác trong anh bây giờ có lẽ \r\nHơn cả yêu \r\nAnh vẫn còn nhớ \r\nLần đầu tiên ta gặp nhau \r\nChẳng biết trước lần đó sẽ là \r\nLần cuối anh yêu một ai trên đời \r\nAnh không còn mơ \r\nGặp và yêu ai được nữa \r\nGiờ anh đã có em đây rồi \r\nCùng em đi hết quãng đường đời \r\nTình yêu trong anh vẫn luôn thầm lặng \r\nNhưng không có nghĩa không rộng lớn \r\nChỉ là anh đôi khi khó nói nên lời \r\nMong em hãy cảm nhận thôi \r\nCao hơn cả núi, dài hơn cả sông \r\nRộng hơn cả đất, xanh hơn cả trời \r\nAnh yêu em, anh yêu em nhiều thế thôi \r\nVượt qua ngọn gió, vượt qua đại dương \r\nVượt qua cả những áng mây thiên đường \r\nDẫu có nói bao điều \r\nCảm giác trong anh bây giờ có lẽ \r\nHơn cả yêu \r\nCao hơn cả núi, dài hơn cả sông \r\nRộng hơn cả đất, xanh hơn cả trời \r\nAnh yêu em, anh yêu em nhiều thế thôi \r\nVượt qua ngọn gió, vượt qua đại dương \r\nVượt qua cả những áng mây thiên đường \r\nDẫu có nói bao điều \r\nCảm giác trong anh bây giờ có lẽ \r\nHơn cả yêu \r\nCảm giác trong anh bây giờ có lẽ \r\nHơn cả yêu', '4:16', NULL, NULL, 3, 1, 5, 0, '2020-04-30'),
(10, 'Ai Đợi Mình Được Mãi', 'Em hay hỏi anh \r\nRằng anh yêu em nhiều không? \r\nAnh không biết phải nói thế nào \r\nĐể đúng với cảm xúc trong lòng \r\nKhi anh nhìn em \r\nLà anh thấy cuộc đời anh \r\nLà quá khứ và cả tương lai \r\nLà hiện tại không bao giờ phai \r\nTình yêu trong anh vẫn luôn thầm lặng \r\nNhưng không có nghĩa không rộng lớn \r\nChỉ là anh đôi khi khó nói nên lời \r\nMong em hãy cảm nhận thôi \r\nCao hơn cả núi, dài hơn cả sông \r\nRộng hơn cả đất, xanh hơn cả trời \r\nAnh yêu em, anh yêu em nhiều thế thôi \r\nVượt qua ngọn gió, vượt qua đại dương \r\nVượt qua cả những áng mây thiên đường \r\nDẫu có nói bao điều \r\nCảm giác trong anh bây giờ có lẽ \r\nHơn cả yêu \r\nAnh vẫn còn nhớ \r\nLần đầu tiên ta gặp nhau \r\nChẳng biết trước lần đó sẽ là \r\nLần cuối anh yêu một ai trên đời \r\nAnh không còn mơ \r\nGặp và yêu ai được nữa \r\nGiờ anh đã có em đây rồi \r\nCùng em đi hết quãng đường đời \r\nTình yêu trong anh vẫn luôn thầm lặng \r\nNhưng không có nghĩa không rộng lớn \r\nChỉ là anh đôi khi khó nói nên lời \r\nMong em hãy cảm nhận thôi \r\nCao hơn cả núi, dài hơn cả sông \r\nRộng hơn cả đất, xanh hơn cả trời \r\nAnh yêu em, anh yêu em nhiều thế thôi \r\nVượt qua ngọn gió, vượt qua đại dương \r\nVượt qua cả những áng mây thiên đường \r\nDẫu có nói bao điều \r\nCảm giác trong anh bây giờ có lẽ \r\nHơn cả yêu \r\nCao hơn cả núi, dài hơn cả sông \r\nRộng hơn cả đất, xanh hơn cả trời \r\nAnh yêu em, anh yêu em nhiều thế thôi \r\nVượt qua ngọn gió, vượt qua đại dương \r\nVượt qua cả những áng mây thiên đường \r\nDẫu có nói bao điều \r\nCảm giác trong anh bây giờ có lẽ \r\nHơn cả yêu \r\nCảm giác trong anh bây giờ có lẽ \r\nHơn cả yêu', '4:16', NULL, NULL, 4, 1, 1, 0, '2020-04-30'),
(11, 'Lá Xa Lìa Cành', 'Hôm nay mưa rơi tâm trí rối bời \r\nNhớ về một người ở nơi xa xôi \r\nChúng ta chia tay cũng lâu lắm rồi \r\nCớ sao hôm nay nước mắt lại rơi \r\nHôm chia tay nhau mưa rơi rất nhiều \r\nNhói đau con tim nào ai thấu hiểu \r\nBao năm bên nhau hạnh phúc thế mà \r\nĐắng cay chỉ trong giây phút là sao? \r\nNgười ta thường nói ngày mưa rơi \r\nLà ngày buồn nhất \r\nNgày ta đã đánh mất tất cả \r\nTrong tình yêu \r\nTừ người thương hóa người dưng \r\nDần khoảng cách không có điểm dừng \r\nGiờ anh mệt mỏi \r\nVới tình cảm em dành cho anh \r\nTựa như những chiếc lá cuối thu \r\nTrên cành cây xanh \r\nAnh đâu còn quyền lựa chọn đâu em \r\nEm muốn xa anh như lá xa lìa cành \r\nHôm chia tay nhau mưa rơi rất nhiều \r\nNhói đau con tim nào ai thấu hiểu \r\nBao năm bên nhau hạnh phúc thế mà \r\nĐắng cay chỉ trong giây phút là sao? \r\nNgười ta thường nói ngày mưa rơi \r\nLà ngày buồn nhất \r\nNgày ta đã đánh mất tất cả \r\nTrong tình yêu \r\nTừ người thương hóa người dưng \r\nDần khoảng cách không có điểm dừng \r\nGiờ anh mệt mỏi \r\nVới tình cảm em dành cho anh \r\nTựa như những chiếc lá cuối thu \r\nTrên cành cây xanh \r\nAnh đâu còn quyền lựa chọn đâu em \r\nEm muốn xa anh như lá xa lìa cành \r\nNgười ta thường nói ngày mưa rơi \r\nLà ngày buồn nhất \r\nNgày ta đã đánh mất tất cả \r\nTrong tình yêu \r\nTừ người thương hóa người dưng \r\nDần khoảng cách không có điểm dừng \r\nGiờ anh mệt mỏi \r\nVới tình cảm em dành cho anh \r\nTựa như những chiếc lá cuối thu \r\nTrên cành cây xanh \r\nAnh đâu còn quyền lựa chọn đâu em \r\nEm muốn xa anh như lá xa lìa cành \r\nAnh đâu còn quyền lựa chọn đâu em \r\nEm muốn xa anh như lá xa lìa cành', '4:52', NULL, NULL, 2, 1, 3, 0, '2020-05-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_ibfk_1` (`category`),
  ADD KEY `album_ibfk_2` (`idsinger`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_ibfk_1` (`idsession`);

--
-- Indexes for table `playlistdetail`
--
ALTER TABLE `playlistdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlistdetail_ibfk_1` (`idPlaylist`),
  ADD KEY `playlistdetail_ibfk_2` (`idsong`),
  ADD KEY `FK5jlpq7pneqbv2tjh88yc4h4sk` (`id_playlist`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`),
  ADD KEY `song_ibfk_1` (`idalbum`),
  ADD KEY `song_ibfk_2` (`idcategory`),
  ADD KEY `idsinger` (`idsinger`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlistdetail`
--
ALTER TABLE `playlistdetail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `singer`
--
ALTER TABLE `singer`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_2` FOREIGN KEY (`idsinger`) REFERENCES `singer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`idsession`) REFERENCES `session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playlistdetail`
--
ALTER TABLE `playlistdetail`
  ADD CONSTRAINT `FK5jlpq7pneqbv2tjh88yc4h4sk` FOREIGN KEY (`id_playlist`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistdetail_ibfk_1` FOREIGN KEY (`idPlaylist`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlistdetail_ibfk_2` FOREIGN KEY (`idsong`) REFERENCES `song` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`idalbum`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`idcategory`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `song_ibfk_3` FOREIGN KEY (`idsinger`) REFERENCES `singer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
