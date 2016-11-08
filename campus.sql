-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2015 at 09:22 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `campus`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `CategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `ModuleId` int(11) NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  `CategoryDetails` text NOT NULL,
  PRIMARY KEY (`CategoryId`),
  KEY `categories_moduleid` (`ModuleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=116 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryId`, `ModuleId`, `CategoryName`, `CategoryDetails`) VALUES
(1, 1, 'Agro based Industry', 'Agro based Industry'),
(3, 1, 'Architecture/Engineering/Construction', 'Architecture/Engineering/Construction'),
(4, 1, 'Automobile/Industrial Machine', 'Automobile/Industrial Machine'),
(5, 1, 'Bank/Non-Bank Fin. Institution', 'Bank/Non-Bank Fin. Institution'),
(6, 1, 'Education', 'Education'),
(7, 1, 'Electronics/Consumer Durables', 'Electronics/Consumer Durables'),
(8, 1, 'Energy/Power/Fuel', 'Energy/Power/Fuel'),
(9, 1, 'Garments/Textile', 'Garments/Textile'),
(10, 1, 'Pharmaceuticals ', 'Pharmaceuticals '),
(11, 1, 'Hospital/ Diagnostic Center', 'Hospital/ Diagnostic Center'),
(12, 1, 'Airline/ Travel/ Tourism', 'Airline/ Travel/ Tourism'),
(13, 1, 'Manufacturing (Light Industry)', 'Manufacturing (Light Industry)'),
(14, 1, 'Manufacturing (Heavy Industry)', 'Manufacturing (Heavy Industry)'),
(15, 1, 'Hotel/Restaurant', 'Hotel/Restaurant'),
(16, 1, 'Information Technology', 'Information Technology'),
(17, 1, 'Logistics/ Transportation', 'Logistics/ Transportation'),
(18, 1, 'Entertainment/ Recreation', 'Entertainment/ Recreation'),
(19, 1, 'Media / Advertising/ Event Mgt.', 'Media / Advertising/ Event Mgt.'),
(20, 1, 'NGO/Development', 'NGO/Development'),
(21, 1, 'Real Estate/Development', 'Real Estate/Development'),
(22, 1, 'Wholesale/ Retail/ Export-Import', 'Wholesale/ Retail/ Export-Import'),
(23, 1, 'Telecommunication ', 'Telecommunication '),
(24, 1, 'Food & Beverage Industry', 'Food & Beverage Industry'),
(25, 1, 'Security Service', 'Security Service'),
(26, 1, 'Fire, Safety & Protection', 'Fire, Safety & Protection'),
(27, 1, 'Others ', 'Others '),
(28, 5, 'PR/Marketing Campaigns\r\n', 'PR/Marketing Campaigns\r\n'),
(29, 5, 'Free Trademark Searches\r\n', 'Free Trademark Searches\r\n'),
(30, 5, 'Low Cost Patent Searches\r\n', 'Low Cost Patent Searches\r\n'),
(31, 5, 'Free Legal Patent Opinions\r\n', 'Free Legal Patent Opinions\r\n'),
(32, 5, 'Licensing Contracts Review\r\n', 'Licensing Contracts Review\r\n'),
(33, 5, 'Event/Trade Show Representation\r\n', 'Event/Trade Show Representation\r\n'),
(34, 5, 'High Value Inventor/Investor Workshops\r\n', 'High Value Inventor/Investor Workshops\r\n'),
(35, 3, 'Live', 'Live'),
(36, 5, 'Crowdfunding', 'Crowdfunding'),
(37, 2, 'Antiquities', 'Antiquities'),
(38, 2, 'Architectural & Garden', 'Architectural & Garden'),
(39, 2, 'Asian Antiques', 'Asian Antiques'),
(40, 2, 'Books & Manuscripts', 'Books & Manuscripts'),
(41, 2, 'Decorative Arts', 'Decorative Arts'),
(42, 2, 'Ethnographic', 'Ethnographic'),
(43, 2, 'Furniture', 'Furniture'),
(44, 2, 'Home & Hearth', 'Home & Hearth'),
(45, 2, 'Linens & Textiles (Pre-1930)', 'Linens & Textiles (Pre-1930)'),
(46, 2, 'Maps, Atlases & Globes', 'Maps, Atlases & Globes'),
(47, 2, 'Maritime', 'Maritime'),
(48, 2, 'Mercantile, Trades & Factories', 'Mercantile, Trades & Factories'),
(49, 2, 'Musical Instruments (Pre-1930)', 'Musical Instruments (Pre-1930)'),
(50, 2, 'Periods & Styles', 'Periods & Styles'),
(51, 2, 'Primitives', 'Primitives'),
(52, 2, 'Restoration & Care', 'Restoration & Care'),
(53, 2, 'Rugs & Carpets', 'Rugs & Carpets'),
(54, 2, 'Science & Medicine (Pre-1930)', 'Science & Medicine (Pre-1930)'),
(55, 2, 'Sewing (Pre-1930)', 'Sewing (Pre-1930)'),
(56, 2, 'Silver', 'Silver'),
(57, 2, 'Reproduction Antiques', 'Reproduction Antiques'),
(58, 2, 'Other Antiques', 'Other Antiques'),
(59, 8, 'Agriculture (Organizations)', 'Agriculture (Organizations)'),
(60, 8, 'Automotive & Transport\r\n', 'Automotive & Transport\r\n'),
(61, 8, 'Banking & Finance\r\n', 'Banking & Finance\r\n'),
(62, 8, 'Beauty, Health & Medical\r\n', 'Beauty, Health & Medical\r\n'),
(63, 8, 'Business & Professional Services\r\n', 'Business & Professional Services\r\n'),
(64, 8, 'Entertainment, Leisure & Hobbies\r\n', 'Entertainment, Leisure & Hobbies\r\n'),
(65, 8, 'Fashion & Textile\r\n', 'Fashion & Textile\r\n'),
(66, 8, 'Food & Beverages\r\n', 'Food & Beverages\r\n'),
(67, 8, 'Gifts & Collectibles\r\n', 'Gifts & Collectibles\r\n'),
(68, 8, 'Government & Community\r\n', 'Government & Community\r\n'),
(69, 8, 'Home & Office\r\n', 'Home & Office\r\n'),
(70, 8, 'Industrial & Engineering\r\n', 'Industrial & Engineering\r\n'),
(71, 8, 'IT, Electronics & Telecoms\r\n', 'IT, Electronics & Telecoms\r\n'),
(72, 8, 'Marine, Oil & Gas\r\n', 'Marine, Oil & Gas\r\n'),
(73, 8, 'Media, Advertising & Printing\r\n', 'Media, Advertising & Printing\r\n'),
(74, 8, 'Packing & Logistics\r\n', 'Packing & Logistics\r\n'),
(75, 8, 'Real Estate & Construction\r\n', 'Real Estate & Construction\r\n'),
(76, 8, 'Safety & Security\r\n', 'Safety & Security\r\n'),
(77, 8, 'Science, Research & Technology\r\n', 'Science, Research & Technology\r\n'),
(78, 8, 'Sports & Fitness\r\n', 'Sports & Fitness\r\n'),
(79, 8, 'Tourism & Travel\r\n', 'Tourism & Travel\r\n'),
(80, 8, 'Training & Education\r\n', 'Training & Education\r\n'),
(81, 8, 'Others\r\n', 'Others\r\n'),
(82, 3, 'Radio Shows', 'Radio Shows'),
(83, 3, 'Road Shows', 'Road Shows'),
(84, 8, 'Agriculture (Governments)', 'Agriculture (Governments)'),
(85, 8, 'Energy', 'Energy'),
(86, 8, 'Health and Human Services ', 'Health and Human Services '),
(87, 8, 'Bartering & Exchange Programs', 'Bartering & Exchange Programs'),
(88, 8, 'Business (Cooperative Businesses)', 'Business (Cooperative Businesses)'),
(89, 8, 'Children', 'Children'),
(90, 8, 'Clean Energy', 'Clean Energy'),
(91, 8, 'CrowdFunding', 'CrowdFunding'),
(92, 8, 'Empowerment', 'Empowerment'),
(93, 8, 'Farming', 'Farming'),
(94, 8, 'Films & Documentaries', 'Films & Documentaries'),
(95, 8, 'Funding Programs', 'Funding Programs'),
(96, 8, 'Gray Water Systems', 'Gray Water Systems'),
(97, 8, 'Health', 'Health'),
(98, 8, 'Homes, Housing, Communities, Land, Land Parcels', 'Homes, Housing, Communities, Land, Land Parcels'),
(99, 8, 'Humanitarian Organizations', 'Humanitarian Organizations'),
(100, 8, 'Investments', 'Investments'),
(101, 8, 'Jobs', 'Jobs'),
(102, 8, 'Legal', 'Legal'),
(103, 8, 'Marketing Sustainability', 'Marketing Sustainability'),
(104, 8, 'Musicians (green – eco – loving – sustainability m', 'Musicians (green – eco – loving – sustainability minded)'),
(105, 8, 'Natural Pools', 'Natural Pools'),
(106, 8, 'Off Grid', 'Off Grid'),
(107, 8, 'Profit Sharing (Community Profits & Profit Sharing', 'Profit Sharing (Community Profits & Profit Sharing)'),
(108, 8, 'Sewage as Fertilizer', 'Sewage as Fertilizer'),
(109, 8, 'Social Media', 'Social Media'),
(110, 8, 'Space & Much More (Must see! Bringing GREEN to The', 'Space & Much More (Must see! Bringing GREEN to The Space Program)'),
(111, 8, 'Survival', 'Survival'),
(112, 8, 'Technology', 'Technology'),
(113, 8, 'Air Purifiers', 'Air Purifiers'),
(114, 5, 'Search Engine Marketing', 'Search Engine Marketing'),
(115, 5, 'Business Coaching', 'Business Coaching');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('01c3255857a485bbffff8fcb987542a29a58a994', '::1', 1448483256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438333235363b),
('37a9c58ebded1c57f481f9c2cf17c71446c7a4a0', '::1', 1448484907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438343836373b),
('49de8b89d8fc1213b8bde126a7854803997d67bb', '::1', 1448488477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438383433363b),
('74fdd76be3f479f5f38e372936c761a1b9ca86a3', '::1', 1448488286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438383034363b),
('76328e9dcb3c2b073cafedc93740e5fb98e38fae', '::1', 1448484078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438333937323b),
('8784633158fa556648b95817b03c04d5305453cd', '::1', 1448486198, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438353939313b),
('b02508ff98e093ffe7fc5d5eef141db43d6435e9', '::1', 1448487910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438373636363b),
('b5816a00e45fddda0f5dd51505519d452ae2f757', '::1', 1448484704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438343531373b),
('b91e114a14f08eb383e456c66811deb44febfcfc', '::1', 1448487623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438373332343b),
('be53fafa95b11d41da902a3e3b04e7f330f68623', '::1', 1448486889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438363830333b),
('db2524c0d1c03a2bc58c35d8a57da028c975c725', '::1', 1448485539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313434383438353335353b);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `CountryId` int(11) NOT NULL AUTO_INCREMENT,
  `Code` char(3) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Name` char(52) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') CHARACTER SET latin1 NOT NULL DEFAULT 'Asia',
  `Region` char(26) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `SurfaceArea` float(10,2) NOT NULL DEFAULT '0.00',
  `IndepYear` smallint(6) DEFAULT NULL,
  `Population` int(11) NOT NULL DEFAULT '0',
  `LifeExpectancy` float(3,1) DEFAULT NULL,
  `GNP` float(10,2) DEFAULT NULL,
  `GNPOld` float(10,2) DEFAULT NULL,
  `LocalName` char(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `GovernmentForm` char(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `HeadOfState` char(60) CHARACTER SET latin1 DEFAULT NULL,
  `Capital` int(11) DEFAULT NULL,
  `Code2` char(2) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`CountryId`),
  KEY `Code` (`Code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT AUTO_INCREMENT=241 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryId`, `Code`, `Name`, `Continent`, `Region`, `SurfaceArea`, `IndepYear`, `Population`, `LifeExpectancy`, `GNP`, `GNPOld`, `LocalName`, `GovernmentForm`, `HeadOfState`, `Capital`, `Code2`) VALUES
(1, 'ABW', 'Aruba', 'North America', 'Caribbean', 193.00, NULL, 103000, 78.4, 828.00, 793.00, 'Aruba', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 129, 'AW'),
(2, 'AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', 652090.00, 1919, 22720000, 45.9, 5976.00, NULL, 'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', 1, 'AF'),
(3, 'AGO', 'Angola', 'Africa', 'Central Africa', 1246700.00, 1975, 12878000, 38.3, 6648.00, 7984.00, 'Angola', 'Republic', 'JosÃ© Eduardo dos Santos', 56, 'AO'),
(4, 'AIA', 'Anguilla', 'North America', 'Caribbean', 96.00, NULL, 8000, 76.1, 63.20, NULL, 'Anguilla', 'Dependent Territory of the UK', 'Elisabeth II', 62, 'AI'),
(5, 'ALB', 'Albania', 'Europe', 'Southern Europe', 28748.00, 1912, 3401200, 71.6, 3205.00, 2500.00, 'ShqipÃ«ria', 'Republic', 'Rexhep Mejdani', 34, 'AL'),
(6, 'AND', 'Andorra', 'Europe', 'Southern Europe', 468.00, 1278, 78000, 83.5, 1630.00, NULL, 'Andorra', 'Parliamentary Coprincipality', '', 55, 'AD'),
(7, 'ANT', 'Netherlands Antilles', 'North America', 'Caribbean', 800.00, NULL, 217000, 74.7, 1941.00, NULL, 'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 33, 'AN'),
(8, 'ARE', 'United Arab Emirates', 'Asia', 'Middle East', 83600.00, 1971, 2441000, 74.1, 37966.00, 36846.00, 'Al-Imarat al-Â´Arabiya al-Muttahida', 'Emirate Federation', 'Zayid bin Sultan al-Nahayan', 65, 'AE'),
(9, 'ARG', 'Argentina', 'South America', 'South America', 2780400.00, 1816, 37032000, 75.1, 340238.00, 323310.00, 'Argentina', 'Federal Republic', 'Fernando de la RÃºa', 69, 'AR'),
(10, 'ARM', 'Armenia', 'Asia', 'Middle East', 29800.00, 1991, 3520000, 66.4, 1813.00, 1627.00, 'Hajastan', 'Republic', 'Robert KotÅ¡arjan', 126, 'AM'),
(11, 'ASM', 'American Samoa', 'Oceania', 'Polynesia', 199.00, NULL, 68000, 75.1, 334.00, NULL, 'Amerika Samoa', 'US Territory', 'George W. Bush', 54, 'AS'),
(12, 'ATA', 'Antarctica', 'Antarctica', 'Antarctica', 13120000.00, NULL, 0, NULL, 0.00, NULL, 'â€“', 'Co-administrated', '', NULL, 'AQ'),
(13, 'ATF', 'French Southern territories', 'Antarctica', 'Antarctica', 7780.00, NULL, 0, NULL, 0.00, NULL, 'Terres australes franÃ§aises', 'Nonmetropolitan Territory of France', 'Jacques Chirac', NULL, 'TF'),
(14, 'ATG', 'Antigua and Barbuda', 'North America', 'Caribbean', 442.00, 1981, 68000, 70.5, 612.00, 584.00, 'Antigua and Barbuda', 'Constitutional Monarchy', 'Elisabeth II', 63, 'AG'),
(15, 'AUS', 'Australia', 'Oceania', 'Australia and New Zealand', 7741220.00, 1901, 18886000, 79.8, 351182.00, 392911.00, 'Australia', 'Constitutional Monarchy, Federation', 'Elisabeth II', 135, 'AU'),
(16, 'AUT', 'Austria', 'Europe', 'Western Europe', 83859.00, 1918, 8091800, 77.7, 211860.00, 206025.00, 'Ã–sterreich', 'Federal Republic', 'Thomas Klestil', 1523, 'AT'),
(17, 'AZE', 'Azerbaijan', 'Asia', 'Middle East', 86600.00, 1991, 7734000, 62.9, 4127.00, 4100.00, 'AzÃ¤rbaycan', 'Federal Republic', 'HeydÃ¤r Ã„liyev', 144, 'AZ'),
(18, 'BDI', 'Burundi', 'Africa', 'Eastern Africa', 27834.00, 1962, 6695000, 46.2, 903.00, 982.00, 'Burundi/Uburundi', 'Republic', 'Pierre Buyoya', 552, 'BI'),
(19, 'BEL', 'Belgium', 'Europe', 'Western Europe', 30518.00, 1830, 10239000, 77.8, 249704.00, 243948.00, 'BelgiÃ«/Belgique', 'Constitutional Monarchy, Federation', 'Albert II', 179, 'BE'),
(20, 'BEN', 'Benin', 'Africa', 'Western Africa', 112622.00, 1960, 6097000, 50.2, 2357.00, 2141.00, 'BÃ©nin', 'Republic', 'Mathieu KÃ©rÃ©kou', 187, 'BJ'),
(21, 'BFA', 'Burkina Faso', 'Africa', 'Western Africa', 274000.00, 1960, 11937000, 46.7, 2425.00, 2201.00, 'Burkina Faso', 'Republic', 'Blaise CompaorÃ©', 549, 'BF'),
(22, 'BGD', 'Bangladesh', 'Asia', 'Southern and Central Asia', 143998.00, 1971, 129155000, 60.2, 32852.00, 31966.00, 'Bangladesh', 'Republic', 'Shahabuddin Ahmad', 150, 'BD'),
(23, 'BGR', 'Bulgaria', 'Europe', 'Eastern Europe', 110994.00, 1908, 8190900, 70.9, 12178.00, 10169.00, 'Balgarija', 'Republic', 'Petar Stojanov', 539, 'BG'),
(24, 'BHR', 'Bahrain', 'Asia', 'Middle East', 694.00, 1971, 617000, 73.0, 6366.00, 6097.00, 'Al-Bahrayn', 'Monarchy (Emirate)', 'Hamad ibn Isa al-Khalifa', 149, 'BH'),
(25, 'BHS', 'Bahamas', 'North America', 'Caribbean', 13878.00, 1973, 307000, 71.1, 3527.00, 3347.00, 'The Bahamas', 'Constitutional Monarchy', 'Elisabeth II', 148, 'BS'),
(26, 'BIH', 'Bosnia and Herzegovina', 'Europe', 'Southern Europe', 51197.00, 1992, 3972000, 71.5, 2841.00, NULL, 'Bosna i Hercegovina', 'Federal Republic', 'Ante Jelavic', 201, 'BA'),
(27, 'BLR', 'Belarus', 'Europe', 'Eastern Europe', 207600.00, 1991, 10236000, 68.0, 13714.00, NULL, 'Belarus', 'Republic', 'Aljaksandr LukaÅ¡enka', 3520, 'BY'),
(28, 'BLZ', 'Belize', 'North America', 'Central America', 22696.00, 1981, 241000, 70.9, 630.00, 616.00, 'Belize', 'Constitutional Monarchy', 'Elisabeth II', 185, 'BZ'),
(29, 'BMU', 'Bermuda', 'North America', 'North America', 53.00, NULL, 65000, 76.9, 2328.00, 2190.00, 'Bermuda', 'Dependent Territory of the UK', 'Elisabeth II', 191, 'BM'),
(30, 'BOL', 'Bolivia', 'South America', 'South America', 1098581.00, 1825, 8329000, 63.7, 8571.00, 7967.00, 'Bolivia', 'Republic', 'Hugo BÃ¡nzer SuÃ¡rez', 194, 'BO'),
(31, 'BRA', 'Brazil', 'South America', 'South America', 8547403.00, 1822, 170115000, 62.9, 776739.00, 804108.00, 'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', 211, 'BR'),
(32, 'BRB', 'Barbados', 'North America', 'Caribbean', 430.00, 1966, 270000, 73.0, 2223.00, 2186.00, 'Barbados', 'Constitutional Monarchy', 'Elisabeth II', 174, 'BB'),
(33, 'BRN', 'Brunei', 'Asia', 'Southeast Asia', 5765.00, 1984, 328000, 73.6, 11705.00, 12460.00, 'Brunei Darussalam', 'Monarchy (Sultanate)', 'Haji Hassan al-Bolkiah', 538, 'BN'),
(34, 'BTN', 'Bhutan', 'Asia', 'Southern and Central Asia', 47000.00, 1910, 2124000, 52.4, 372.00, 383.00, 'Druk-Yul', 'Monarchy', 'Jigme Singye Wangchuk', 192, 'BT'),
(35, 'BVT', 'Bouvet Island', 'Antarctica', 'Antarctica', 59.00, NULL, 0, NULL, 0.00, NULL, 'BouvetÃ¸ya', 'Dependent Territory of Norway', 'Harald V', NULL, 'BV'),
(36, 'BWA', 'Botswana', 'Africa', 'Southern Africa', 581730.00, 1966, 1622000, 39.3, 4834.00, 4935.00, 'Botswana', 'Republic', 'Festus G. Mogae', 204, 'BW'),
(37, 'CAF', 'Central African Republic', 'Africa', 'Central Africa', 622984.00, 1960, 3615000, 44.0, 1054.00, 993.00, 'Centrafrique/BÃª-AfrÃ®ka', 'Republic', 'Ange-FÃ©lix PatassÃ©', 1889, 'CF'),
(38, 'CAN', 'Canada', 'North America', 'North America', 9970610.00, 1867, 31147000, 79.4, 598862.00, 625626.00, 'Canada', 'Constitutional Monarchy, Federation', 'Elisabeth II', 1822, 'CA'),
(39, 'CCK', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', 14.00, NULL, 600, NULL, 0.00, NULL, 'Cocos (Keeling) Islands', 'Territory of Australia', 'Elisabeth II', 2317, 'CC'),
(40, 'CHE', 'Switzerland', 'Europe', 'Western Europe', 41284.00, 1499, 7160400, 79.6, 264478.00, 256092.00, 'Schweiz/Suisse/Svizzera/Svizra', 'Federation', 'Adolf Ogi', 3248, 'CH'),
(41, 'CHL', 'Chile', 'South America', 'South America', 756626.00, 1810, 15211000, 75.7, 72949.00, 75780.00, 'Chile', 'Republic', 'Ricardo Lagos Escobar', 554, 'CL'),
(42, 'CHN', 'China', 'Asia', 'Eastern Asia', 9572900.00, -1523, 1277558000, 71.4, 982268.00, 917719.00, 'Zhongquo', 'People''sRepublic', 'Jiang Zemin', 1891, 'CN'),
(43, 'CIV', 'CÃ´te dâ€™Ivoire', 'Africa', 'Western Africa', 322463.00, 1960, 14786000, 45.2, 11345.00, 10285.00, 'CÃ´te dâ€™Ivoire', 'Republic', 'Laurent Gbagbo', 2814, 'CI'),
(44, 'CMR', 'Cameroon', 'Africa', 'Central Africa', 475442.00, 1960, 15085000, 54.8, 9174.00, 8596.00, 'Cameroun/Cameroon', 'Republic', 'Paul Biya', 1804, 'CM'),
(45, 'COD', 'Congo, The Democratic Republic of the', 'Africa', 'Central Africa', 2344858.00, 1960, 51654000, 48.8, 6964.00, 2474.00, 'RÃ©publique DÃ©mocratique du Congo', 'Republic', 'Joseph Kabila', 2298, 'CD'),
(46, 'COG', 'Congo', 'Africa', 'Central Africa', 342000.00, 1960, 2943000, 47.4, 2108.00, 2287.00, 'Congo', 'Republic', 'Denis Sassou-Nguesso', 2296, 'CG'),
(47, 'COK', 'Cook Islands', 'Oceania', 'Polynesia', 236.00, NULL, 20000, 71.1, 100.00, NULL, 'The Cook Islands', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 583, 'CK'),
(48, 'COL', 'Colombia', 'South America', 'South America', 1138914.00, 1810, 42321000, 70.3, 102896.00, 105116.00, 'Colombia', 'Republic', 'AndrÃ©s Pastrana Arango', 2257, 'CO'),
(49, 'COM', 'Comoros', 'Africa', 'Eastern Africa', 1862.00, 1975, 578000, 60.0, 4401.00, 4361.00, 'Komori/Comores', 'Republic', 'Azali Assoumani', 2295, 'KM'),
(50, 'CPV', 'Cape Verde', 'Africa', 'Western Africa', 4033.00, 1975, 428000, 68.9, 435.00, 420.00, 'Cabo Verde', 'Republic', 'AntÃ³nio Mascarenhas Monteiro', 1859, 'CV'),
(51, 'CRI', 'Costa Rica', 'North America', 'Central America', 51100.00, 1821, 4023000, 75.8, 10226.00, 9757.00, 'Costa Rica', 'Republic', 'Miguel Ãngel RodrÃ­guez EcheverrÃ­a', 584, 'CR'),
(52, 'CUB', 'Cuba', 'North America', 'Caribbean', 110861.00, 1902, 11201000, 76.2, 17843.00, 18862.00, 'Cuba', 'Socialistic Republic', 'Fidel Castro Ruz', 2413, 'CU'),
(53, 'CXR', 'Christmas Island', 'Oceania', 'Australia and New Zealand', 135.00, NULL, 2500, NULL, 0.00, NULL, 'Christmas Island', 'Territory of Australia', 'Elisabeth II', 1791, 'CX'),
(54, 'CYM', 'Cayman Islands', 'North America', 'Caribbean', 264.00, NULL, 38000, 78.9, 1263.00, 1186.00, 'Cayman Islands', 'Dependent Territory of the UK', 'Elisabeth II', 553, 'KY'),
(55, 'CYP', 'Cyprus', 'Asia', 'Middle East', 9251.00, 1960, 754700, 76.7, 9333.00, 8246.00, 'KÃ½pros/Kibris', 'Republic', 'Glafkos Klerides', 2430, 'CY'),
(56, 'CZE', 'Czech Republic', 'Europe', 'Eastern Europe', 78866.00, 1993, 10278100, 74.5, 55017.00, 52037.00, 'Â¸esko', 'Republic', 'VÃ¡clav Havel', 3339, 'CZ'),
(57, 'DEU', 'Germany', 'Europe', 'Western Europe', 357022.00, 1955, 82164700, 77.4, 2133367.00, 2102826.00, 'Deutschland', 'Federal Republic', 'Johannes Rau', 3068, 'DE'),
(58, 'DJI', 'Djibouti', 'Africa', 'Eastern Africa', 23200.00, 1977, 638000, 50.8, 382.00, 373.00, 'Djibouti/Jibuti', 'Republic', 'Ismail Omar Guelleh', 585, 'DJ'),
(59, 'DMA', 'Dominica', 'North America', 'Caribbean', 751.00, 1978, 71000, 73.4, 256.00, 243.00, 'Dominica', 'Republic', 'Vernon Shaw', 586, 'DM'),
(60, 'DNK', 'Denmark', 'Europe', 'Nordic Countries', 43094.00, 800, 5330000, 76.5, 174099.00, 169264.00, 'Danmark', 'Constitutional Monarchy', 'Margrethe II', 3315, 'DK'),
(61, 'DOM', 'Dominican Republic', 'North America', 'Caribbean', 48511.00, 1844, 8495000, 73.2, 15846.00, 15076.00, 'RepÃºblica Dominicana', 'Republic', 'HipÃ³lito MejÃ­a DomÃ­nguez', 587, 'DO'),
(62, 'DZA', 'Algeria', 'Africa', 'Northern Africa', 2381741.00, 1962, 31471000, 69.7, 49982.00, 46966.00, 'Al-Jazaâ€™ir/AlgÃ©rie', 'Republic', 'Abdelaziz Bouteflika', 35, 'DZ'),
(63, 'ECU', 'Ecuador', 'South America', 'South America', 283561.00, 1822, 12646000, 71.1, 19770.00, 19769.00, 'Ecuador', 'Republic', 'Gustavo Noboa Bejarano', 594, 'EC'),
(64, 'EGY', 'Egypt', 'Africa', 'Northern Africa', 1001449.00, 1922, 68470000, 63.3, 82710.00, 75617.00, 'Misr', 'Republic', 'Hosni Mubarak', 608, 'EG'),
(65, 'ERI', 'Eritrea', 'Africa', 'Eastern Africa', 117600.00, 1993, 3850000, 55.8, 650.00, 755.00, 'Ertra', 'Republic', 'Isayas Afewerki [Isaias Afwerki]', 652, 'ER'),
(66, 'ESH', 'Western Sahara', 'Africa', 'Northern Africa', 266000.00, NULL, 293000, 49.8, 60.00, NULL, 'As-Sahrawiya', 'Occupied by Marocco', 'Mohammed Abdel Aziz', 2453, 'EH'),
(67, 'ESP', 'Spain', 'Europe', 'Southern Europe', 505992.00, 1492, 39441700, 78.8, 553233.00, 532031.00, 'EspaÃ±a', 'Constitutional Monarchy', 'Juan Carlos I', 653, 'ES'),
(68, 'EST', 'Estonia', 'Europe', 'Baltic Countries', 45227.00, 1991, 1439200, 69.5, 5328.00, 3371.00, 'Eesti', 'Republic', 'Lennart Meri', 3791, 'EE'),
(69, 'ETH', 'Ethiopia', 'Africa', 'Eastern Africa', 1104300.00, -1000, 62565000, 45.2, 6353.00, 6180.00, 'YeItyopÂ´iya', 'Republic', 'Negasso Gidada', 756, 'ET'),
(70, 'FIN', 'Finland', 'Europe', 'Nordic Countries', 338145.00, 1917, 5171300, 77.4, 121914.00, 119833.00, 'Suomi', 'Republic', 'Tarja Halonen', 3236, 'FI'),
(71, 'FJI', 'Fiji Islands', 'Oceania', 'Melanesia', 18274.00, 1970, 817000, 67.9, 1536.00, 2149.00, 'Fiji Islands', 'Republic', 'Josefa Iloilo', 764, 'FJ'),
(72, 'FLK', 'Falkland Islands', 'South America', 'South America', 12173.00, NULL, 2000, NULL, 0.00, NULL, 'Falkland Islands', 'Dependent Territory of the UK', 'Elisabeth II', 763, 'FK'),
(73, 'FRA', 'France', 'Europe', 'Western Europe', 551500.00, 843, 59225700, 78.8, 1424285.00, 1392448.00, 'France', 'Republic', 'Jacques Chirac', 2974, 'FR'),
(74, 'FRO', 'Faroe Islands', 'Europe', 'Nordic Countries', 1399.00, NULL, 43000, 78.4, 0.00, NULL, 'FÃ¸royar', 'Part of Denmark', 'Margrethe II', 901, 'FO'),
(75, 'FSM', 'Micronesia, Federated States of', 'Oceania', 'Micronesia', 702.00, 1990, 119000, 68.6, 212.00, NULL, 'Micronesia', 'Federal Republic', 'Leo A. Falcam', 2689, 'FM'),
(76, 'GAB', 'Gabon', 'Africa', 'Central Africa', 267668.00, 1960, 1226000, 50.1, 5493.00, 5279.00, 'Le Gabon', 'Republic', 'Omar Bongo', 902, 'GA'),
(77, 'GBR', 'United Kingdom', 'Europe', 'British Islands', 242900.00, 1066, 59623400, 77.7, 1378330.00, 1296830.00, 'United Kingdom', 'Constitutional Monarchy', 'Elisabeth II', 456, 'GB'),
(78, 'GEO', 'Georgia', 'Asia', 'Middle East', 69700.00, 1991, 4968000, 64.5, 6064.00, 5924.00, 'Sakartvelo', 'Republic', 'Eduard Å evardnadze', 905, 'GE'),
(79, 'GHA', 'Ghana', 'Africa', 'Western Africa', 238533.00, 1957, 20212000, 57.4, 7137.00, 6884.00, 'Ghana', 'Republic', 'John Kufuor', 910, 'GH'),
(80, 'GIB', 'Gibraltar', 'Europe', 'Southern Europe', 6.00, NULL, 25000, 79.0, 258.00, NULL, 'Gibraltar', 'Dependent Territory of the UK', 'Elisabeth II', 915, 'GI'),
(81, 'GIN', 'Guinea', 'Africa', 'Western Africa', 245857.00, 1958, 7430000, 45.6, 2352.00, 2383.00, 'GuinÃ©e', 'Republic', 'Lansana ContÃ©', 926, 'GN'),
(82, 'GLP', 'Guadeloupe', 'North America', 'Caribbean', 1705.00, NULL, 456000, 77.0, 3501.00, NULL, 'Guadeloupe', 'Overseas Department of France', 'Jacques Chirac', 919, 'GP'),
(83, 'GMB', 'Gambia', 'Africa', 'Western Africa', 11295.00, 1965, 1305000, 53.2, 320.00, 325.00, 'The Gambia', 'Republic', 'Yahya Jammeh', 904, 'GM'),
(84, 'GNB', 'Guinea-Bissau', 'Africa', 'Western Africa', 36125.00, 1974, 1213000, 49.0, 293.00, 272.00, 'GuinÃ©-Bissau', 'Republic', 'Kumba IalÃ¡', 927, 'GW'),
(85, 'GNQ', 'Equatorial Guinea', 'Africa', 'Central Africa', 28051.00, 1968, 453000, 53.6, 283.00, 542.00, 'Guinea Ecuatorial', 'Republic', 'Teodoro Obiang Nguema Mbasogo', 2972, 'GQ'),
(86, 'GRC', 'Greece', 'Europe', 'Southern Europe', 131626.00, 1830, 10545700, 78.4, 120724.00, 119946.00, 'EllÃ¡da', 'Republic', 'Kostis Stefanopoulos', 2401, 'GR'),
(87, 'GRD', 'Grenada', 'North America', 'Caribbean', 344.00, 1974, 94000, 64.5, 318.00, NULL, 'Grenada', 'Constitutional Monarchy', 'Elisabeth II', 916, 'GD'),
(88, 'GRL', 'Greenland', 'North America', 'North America', 2166090.00, NULL, 56000, 68.1, 0.00, NULL, 'Kalaallit Nunaat/GrÃ¸nland', 'Part of Denmark', 'Margrethe II', 917, 'GL'),
(89, 'GTM', 'Guatemala', 'North America', 'Central America', 108889.00, 1821, 11385000, 66.2, 19008.00, 17797.00, 'Guatemala', 'Republic', 'Alfonso Portillo Cabrera', 922, 'GT'),
(90, 'GUF', 'French Guiana', 'South America', 'South America', 90000.00, NULL, 181000, 76.1, 681.00, NULL, 'Guyane franÃ§aise', 'Overseas Department of France', 'Jacques Chirac', 3014, 'GF'),
(91, 'GUM', 'Guam', 'Oceania', 'Micronesia', 549.00, NULL, 168000, 77.8, 1197.00, 1136.00, 'Guam', 'US Territory', 'George W. Bush', 921, 'GU'),
(92, 'GUY', 'Guyana', 'South America', 'South America', 214969.00, 1966, 861000, 64.0, 722.00, 743.00, 'Guyana', 'Republic', 'Bharrat Jagdeo', 928, 'GY'),
(93, 'HKG', 'Hong Kong', 'Asia', 'Eastern Asia', 1075.00, NULL, 6782000, 79.5, 166448.00, 173610.00, 'Xianggang/Hong Kong', 'Special Administrative Region of China', 'Jiang Zemin', 937, 'HK'),
(94, 'HMD', 'Heard Island and McDonald Islands', 'Antarctica', 'Antarctica', 359.00, NULL, 0, NULL, 0.00, NULL, 'Heard and McDonald Islands', 'Territory of Australia', 'Elisabeth II', NULL, 'HM'),
(95, 'HND', 'Honduras', 'North America', 'Central America', 112088.00, 1838, 6485000, 69.9, 5333.00, 4697.00, 'Honduras', 'Republic', 'Carlos Roberto Flores FacussÃ©', 933, 'HN'),
(96, 'HRV', 'Croatia', 'Europe', 'Southern Europe', 56538.00, 1991, 4473000, 73.7, 20208.00, 19300.00, 'Hrvatska', 'Republic', 'Å tipe Mesic', 2409, 'HR'),
(97, 'HTI', 'Haiti', 'North America', 'Caribbean', 27750.00, 1804, 8222000, 49.2, 3459.00, 3107.00, 'HaÃ¯ti/Dayti', 'Republic', 'Jean-Bertrand Aristide', 929, 'HT'),
(98, 'HUN', 'Hungary', 'Europe', 'Eastern Europe', 93030.00, 1918, 10043200, 71.4, 48267.00, 45914.00, 'MagyarorszÃ¡g', 'Republic', 'Ferenc MÃ¡dl', 3483, 'HU'),
(99, 'IDN', 'Indonesia', 'Asia', 'Southeast Asia', 1904569.00, 1945, 212107000, 68.0, 84982.00, 215002.00, 'Indonesia', 'Republic', 'Abdurrahman Wahid', 939, 'ID'),
(100, 'IND', 'India', 'Asia', 'Southern and Central Asia', 3287263.00, 1947, 1013662000, 62.5, 447114.00, 430572.00, 'Bharat/India', 'Federal Republic', 'Kocheril Raman Narayanan', 1109, 'IN'),
(101, 'IOT', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', 78.00, NULL, 0, NULL, 0.00, NULL, 'British Indian Ocean Territory', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'IO'),
(102, 'IRL', 'Ireland', 'Europe', 'British Islands', 70273.00, 1921, 3775100, 76.8, 75921.00, 73132.00, 'Ireland/Ã‰ire', 'Republic', 'Mary McAleese', 1447, 'IE'),
(103, 'IRN', 'Iran', 'Asia', 'Southern and Central Asia', 1648195.00, 1906, 67702000, 69.7, 195746.00, 160151.00, 'Iran', 'Islamic Republic', 'Ali Mohammad Khatami-Ardakani', 1380, 'IR'),
(104, 'IRQ', 'Iraq', 'Asia', 'Middle East', 438317.00, 1932, 23115000, 66.5, 11500.00, NULL, 'Al-Â´Iraq', 'Republic', 'Saddam Hussein al-Takriti', 1365, 'IQ'),
(105, 'ISL', 'Iceland', 'Europe', 'Nordic Countries', 103000.00, 1944, 279000, 79.4, 8255.00, 7474.00, 'Ãsland', 'Republic', 'Ã“lafur Ragnar GrÃ­msson', 1449, 'IS'),
(106, 'ISR', 'Israel', 'Asia', 'Middle East', 21056.00, 1948, 6217000, 78.6, 97477.00, 98577.00, 'Yisraâ€™el/Israâ€™il', 'Republic', 'Moshe Katzav', 1450, 'IL'),
(107, 'ITA', 'Italy', 'Europe', 'Southern Europe', 301316.00, 1861, 57680000, 79.0, 1161755.00, 1145372.00, 'Italia', 'Republic', 'Carlo Azeglio Ciampi', 1464, 'IT'),
(108, 'JAM', 'Jamaica', 'North America', 'Caribbean', 10990.00, 1962, 2583000, 75.2, 6871.00, 6722.00, 'Jamaica', 'Constitutional Monarchy', 'Elisabeth II', 1530, 'JM'),
(109, 'JOR', 'Jordan', 'Asia', 'Middle East', 88946.00, 1946, 5083000, 77.4, 7526.00, 7051.00, 'Al-Urdunn', 'Constitutional Monarchy', 'Abdullah II', 1786, 'JO'),
(110, 'JPN', 'Japan', 'Asia', 'Eastern Asia', 377829.00, -660, 126714000, 80.7, 3787042.00, 4192638.00, 'Nihon/Nippon', 'Constitutional Monarchy', 'Akihito', 1532, 'JP'),
(111, 'KAZ', 'Kazakstan', 'Asia', 'Southern and Central Asia', 2724900.00, 1991, 16223000, 63.2, 24375.00, 23383.00, 'Qazaqstan', 'Republic', 'Nursultan Nazarbajev', 1864, 'KZ'),
(112, 'KEN', 'Kenya', 'Africa', 'Eastern Africa', 580367.00, 1963, 30080000, 48.0, 9217.00, 10241.00, 'Kenya', 'Republic', 'Daniel arap Moi', 1881, 'KE'),
(113, 'KGZ', 'Kyrgyzstan', 'Asia', 'Southern and Central Asia', 199900.00, 1991, 4699000, 63.4, 1626.00, 1767.00, 'Kyrgyzstan', 'Republic', 'Askar Akajev', 2253, 'KG'),
(114, 'KHM', 'Cambodia', 'Asia', 'Southeast Asia', 181035.00, 1953, 11168000, 56.5, 5121.00, 5670.00, 'KÃ¢mpuchÃ©a', 'Constitutional Monarchy', 'Norodom Sihanouk', 1800, 'KH'),
(115, 'KIR', 'Kiribati', 'Oceania', 'Micronesia', 726.00, 1979, 83000, 59.8, 40.70, NULL, 'Kiribati', 'Republic', 'Teburoro Tito', 2256, 'KI'),
(116, 'KNA', 'Saint Kitts and Nevis', 'North America', 'Caribbean', 261.00, 1983, 38000, 70.7, 299.00, NULL, 'Saint Kitts and Nevis', 'Constitutional Monarchy', 'Elisabeth II', 3064, 'KN'),
(117, 'KOR', 'South Korea', 'Asia', 'Eastern Asia', 99434.00, 1948, 46844000, 74.4, 320749.00, 442544.00, 'Taehan Minâ€™guk (Namhan)', 'Republic', 'Kim Dae-jung', 2331, 'KR'),
(118, 'KWT', 'Kuwait', 'Asia', 'Middle East', 17818.00, 1961, 1972000, 76.1, 27037.00, 30373.00, 'Al-Kuwayt', 'Constitutional Monarchy (Emirate)', 'Jabir al-Ahmad al-Jabir al-Sabah', 2429, 'KW'),
(119, 'LAO', 'Laos', 'Asia', 'Southeast Asia', 236800.00, 1953, 5433000, 53.1, 1292.00, 1746.00, 'Lao', 'Republic', 'Khamtay Siphandone', 2432, 'LA'),
(120, 'LBN', 'Lebanon', 'Asia', 'Middle East', 10400.00, 1941, 3282000, 71.3, 17121.00, 15129.00, 'Lubnan', 'Republic', 'Ã‰mile Lahoud', 2438, 'LB'),
(121, 'LBR', 'Liberia', 'Africa', 'Western Africa', 111369.00, 1847, 3154000, 51.0, 2012.00, NULL, 'Liberia', 'Republic', 'Charles Taylor', 2440, 'LR'),
(122, 'LBY', 'Libyan Arab Jamahiriya', 'Africa', 'Northern Africa', 1759540.00, 1951, 5605000, 75.5, 44806.00, 40562.00, 'Libiya', 'Socialistic State', 'Muammar al-Qadhafi', 2441, 'LY'),
(123, 'LCA', 'Saint Lucia', 'North America', 'Caribbean', 622.00, 1979, 154000, 72.3, 571.00, NULL, 'Saint Lucia', 'Constitutional Monarchy', 'Elisabeth II', 3065, 'LC'),
(124, 'LIE', 'Liechtenstein', 'Europe', 'Western Europe', 160.00, 1806, 32300, 78.8, 1119.00, 1084.00, 'Liechtenstein', 'Constitutional Monarchy', 'Hans-Adam II', 2446, 'LI'),
(125, 'LKA', 'Sri Lanka', 'Asia', 'Southern and Central Asia', 65610.00, 1948, 18827000, 71.8, 15706.00, 15091.00, 'Sri Lanka/Ilankai', 'Republic', 'Chandrika Kumaratunga', 3217, 'LK'),
(126, 'LSO', 'Lesotho', 'Africa', 'Southern Africa', 30355.00, 1966, 2153000, 50.8, 1061.00, 1161.00, 'Lesotho', 'Constitutional Monarchy', 'Letsie III', 2437, 'LS'),
(127, 'LTU', 'Lithuania', 'Europe', 'Baltic Countries', 65301.00, 1991, 3698500, 69.1, 10692.00, 9585.00, 'Lietuva', 'Republic', 'Valdas Adamkus', 2447, 'LT'),
(128, 'LUX', 'Luxembourg', 'Europe', 'Western Europe', 2586.00, 1867, 435700, 77.1, 16321.00, 15519.00, 'Luxembourg/LÃ«tzebuerg', 'Constitutional Monarchy', 'Henri', 2452, 'LU'),
(129, 'LVA', 'Latvia', 'Europe', 'Baltic Countries', 64589.00, 1991, 2424200, 68.4, 6398.00, 5639.00, 'Latvija', 'Republic', 'Vaira Vike-Freiberga', 2434, 'LV'),
(130, 'MAC', 'Macao', 'Asia', 'Eastern Asia', 18.00, NULL, 473000, 81.6, 5749.00, 5940.00, 'Macau/Aomen', 'Special Administrative Region of China', 'Jiang Zemin', 2454, 'MO'),
(131, 'MAR', 'Morocco', 'Africa', 'Northern Africa', 446550.00, 1956, 28351000, 69.1, 36124.00, 33514.00, 'Al-Maghrib', 'Constitutional Monarchy', 'Mohammed VI', 2486, 'MA'),
(132, 'MCO', 'Monaco', 'Europe', 'Western Europe', 1.50, 1861, 34000, 78.8, 776.00, NULL, 'Monaco', 'Constitutional Monarchy', 'Rainier III', 2695, 'MC'),
(133, 'MDA', 'Moldova', 'Europe', 'Eastern Europe', 33851.00, 1991, 4380000, 64.5, 1579.00, 1872.00, 'Moldova', 'Republic', 'Vladimir Voronin', 2690, 'MD'),
(134, 'MDG', 'Madagascar', 'Africa', 'Eastern Africa', 587041.00, 1960, 15942000, 55.0, 3750.00, 3545.00, 'Madagasikara/Madagascar', 'Federal Republic', 'Didier Ratsiraka', 2455, 'MG'),
(135, 'MDV', 'Maldives', 'Asia', 'Southern and Central Asia', 298.00, 1965, 286000, 62.2, 199.00, NULL, 'Dhivehi Raajje/Maldives', 'Republic', 'Maumoon Abdul Gayoom', 2463, 'MV'),
(136, 'MEX', 'Mexico', 'North America', 'Central America', 1958201.00, 1810, 98881000, 71.5, 414972.00, 401461.00, 'MÃ©xico', 'Federal Republic', 'Vicente Fox Quesada', 2515, 'MX'),
(137, 'MHL', 'Marshall Islands', 'Oceania', 'Micronesia', 181.00, 1990, 64000, 65.5, 97.00, NULL, 'Marshall Islands/Majol', 'Republic', 'Kessai Note', 2507, 'MH'),
(138, 'MKD', 'Macedonia', 'Europe', 'Southern Europe', 25713.00, 1991, 2024000, 73.8, 1694.00, 1915.00, 'Makedonija', 'Republic', 'Boris Trajkovski', 2460, 'MK'),
(139, 'MLI', 'Mali', 'Africa', 'Western Africa', 1240192.00, 1960, 11234000, 46.7, 2642.00, 2453.00, 'Mali', 'Republic', 'Alpha Oumar KonarÃ©', 2482, 'ML'),
(140, 'MLT', 'Malta', 'Europe', 'Southern Europe', 316.00, 1964, 380200, 77.9, 3512.00, 3338.00, 'Malta', 'Republic', 'Guido de Marco', 2484, 'MT'),
(141, 'MMR', 'Myanmar', 'Asia', 'Southeast Asia', 676578.00, 1948, 45611000, 54.9, 180375.00, 171028.00, 'Myanma Pye', 'Republic', 'kenraali Than Shwe', 2710, 'MM'),
(142, 'MNG', 'Mongolia', 'Asia', 'Eastern Asia', 1566500.00, 1921, 2662000, 67.3, 1043.00, 933.00, 'Mongol Uls', 'Republic', 'Natsagiin Bagabandi', 2696, 'MN'),
(143, 'MNP', 'Northern Mariana Islands', 'Oceania', 'Micronesia', 464.00, NULL, 78000, 75.5, 0.00, NULL, 'Northern Mariana Islands', 'Commonwealth of the US', 'George W. Bush', 2913, 'MP'),
(144, 'MOZ', 'Mozambique', 'Africa', 'Eastern Africa', 801590.00, 1975, 19680000, 37.5, 2891.00, 2711.00, 'MoÃ§ambique', 'Republic', 'JoaquÃ­m A. Chissano', 2698, 'MZ'),
(145, 'MRT', 'Mauritania', 'Africa', 'Western Africa', 1025520.00, 1960, 2670000, 50.8, 998.00, 1081.00, 'Muritaniya/Mauritanie', 'Republic', 'Maaouiya Ould SidÂ´Ahmad Taya', 2509, 'MR'),
(146, 'MSR', 'Montserrat', 'North America', 'Caribbean', 102.00, NULL, 11000, 78.0, 109.00, NULL, 'Montserrat', 'Dependent Territory of the UK', 'Elisabeth II', 2697, 'MS'),
(147, 'MTQ', 'Martinique', 'North America', 'Caribbean', 1102.00, NULL, 395000, 78.3, 2731.00, 2559.00, 'Martinique', 'Overseas Department of France', 'Jacques Chirac', 2508, 'MQ'),
(148, 'MUS', 'Mauritius', 'Africa', 'Eastern Africa', 2040.00, 1968, 1158000, 71.0, 4251.00, 4186.00, 'Mauritius', 'Republic', 'Cassam Uteem', 2511, 'MU'),
(149, 'MWI', 'Malawi', 'Africa', 'Eastern Africa', 118484.00, 1964, 10925000, 37.6, 1687.00, 2527.00, 'Malawi', 'Republic', 'Bakili Muluzi', 2462, 'MW'),
(150, 'MYS', 'Malaysia', 'Asia', 'Southeast Asia', 329758.00, 1957, 22244000, 70.8, 69213.00, 97884.00, 'Malaysia', 'Constitutional Monarchy, Federation', 'Salahuddin Abdul Aziz Shah Alhaj', 2464, 'MY'),
(151, 'MYT', 'Mayotte', 'Africa', 'Eastern Africa', 373.00, NULL, 149000, 59.5, 0.00, NULL, 'Mayotte', 'Territorial Collectivity of France', 'Jacques Chirac', 2514, 'YT'),
(152, 'NAM', 'Namibia', 'Africa', 'Southern Africa', 824292.00, 1990, 1726000, 42.5, 3101.00, 3384.00, 'Namibia', 'Republic', 'Sam Nujoma', 2726, 'NA'),
(153, 'NCL', 'New Caledonia', 'Oceania', 'Melanesia', 18575.00, NULL, 214000, 72.8, 3563.00, NULL, 'Nouvelle-CalÃ©donie', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3493, 'NC'),
(154, 'NER', 'Niger', 'Africa', 'Western Africa', 1267000.00, 1960, 10730000, 41.3, 1706.00, 1580.00, 'Niger', 'Republic', 'Mamadou Tandja', 2738, 'NE'),
(155, 'NFK', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', 36.00, NULL, 2000, NULL, 0.00, NULL, 'Norfolk Island', 'Territory of Australia', 'Elisabeth II', 2806, 'NF'),
(156, 'NGA', 'Nigeria', 'Africa', 'Western Africa', 923768.00, 1960, 111506000, 51.6, 65707.00, 58623.00, 'Nigeria', 'Federal Republic', 'Olusegun Obasanjo', 2754, 'NG'),
(157, 'NIC', 'Nicaragua', 'North America', 'Central America', 130000.00, 1838, 5074000, 68.7, 1988.00, 2023.00, 'Nicaragua', 'Republic', 'Arnoldo AlemÃ¡n Lacayo', 2734, 'NI'),
(158, 'NIU', 'Niue', 'Oceania', 'Polynesia', 260.00, NULL, 2000, NULL, 0.00, NULL, 'Niue', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 2805, 'NU'),
(159, 'NLD', 'Netherlands', 'Europe', 'Western Europe', 41526.00, 1581, 15864000, 78.3, 371362.00, 360478.00, 'Nederland', 'Constitutional Monarchy', 'Beatrix', 5, 'NL'),
(160, 'NOR', 'Norway', 'Europe', 'Nordic Countries', 323877.00, 1905, 4478500, 78.7, 145895.00, 153370.00, 'Norge', 'Constitutional Monarchy', 'Harald V', 2807, 'NO'),
(161, 'NPL', 'Nepal', 'Asia', 'Southern and Central Asia', 147181.00, 1769, 23930000, 57.8, 4768.00, 4837.00, 'Nepal', 'Constitutional Monarchy', 'Gyanendra Bir Bikram', 2729, 'NP'),
(162, 'NRU', 'Nauru', 'Oceania', 'Micronesia', 21.00, 1968, 12000, 60.8, 197.00, NULL, 'Naoero/Nauru', 'Republic', 'Bernard Dowiyogo', 2728, 'NR'),
(163, 'NZL', 'New Zealand', 'Oceania', 'Australia and New Zealand', 270534.00, 1907, 3862000, 77.8, 54669.00, 64960.00, 'New Zealand/Aotearoa', 'Constitutional Monarchy', 'Elisabeth II', 3499, 'NZ'),
(164, 'OMN', 'Oman', 'Asia', 'Middle East', 309500.00, 1951, 2542000, 71.8, 16904.00, 16153.00, 'Â´Uman', 'Monarchy (Sultanate)', 'Qabus ibn SaÂ´id', 2821, 'OM'),
(165, 'PAK', 'Pakistan', 'Asia', 'Southern and Central Asia', 796095.00, 1947, 156483000, 61.1, 61289.00, 58549.00, 'Pakistan', 'Republic', 'Mohammad Rafiq Tarar', 2831, 'PK'),
(166, 'PAN', 'Panama', 'North America', 'Central America', 75517.00, 1903, 2856000, 75.5, 9131.00, 8700.00, 'PanamÃ¡', 'Republic', 'Mireya Elisa Moscoso RodrÃ­guez', 2882, 'PA'),
(167, 'PCN', 'Pitcairn', 'Oceania', 'Polynesia', 49.00, NULL, 50, NULL, 0.00, NULL, 'Pitcairn', 'Dependent Territory of the UK', 'Elisabeth II', 2912, 'PN'),
(168, 'PER', 'Peru', 'South America', 'South America', 1285216.00, 1821, 25662000, 70.0, 64140.00, 65186.00, 'PerÃº/Piruw', 'Republic', 'Valentin Paniagua Corazao', 2890, 'PE'),
(169, 'PHL', 'Philippines', 'Asia', 'Southeast Asia', 300000.00, 1946, 75967000, 67.5, 65107.00, 82239.00, 'Pilipinas', 'Republic', 'Gloria Macapagal-Arroyo', 766, 'PH'),
(170, 'PLW', 'Palau', 'Oceania', 'Micronesia', 459.00, 1994, 19000, 68.6, 105.00, NULL, 'Belau/Palau', 'Republic', 'Kuniwo Nakamura', 2881, 'PW'),
(171, 'PNG', 'Papua New Guinea', 'Oceania', 'Melanesia', 462840.00, 1975, 4807000, 63.1, 4988.00, 6328.00, 'Papua New Guinea/Papua Niugini', 'Constitutional Monarchy', 'Elisabeth II', 2884, 'PG'),
(172, 'POL', 'Poland', 'Europe', 'Eastern Europe', 323250.00, 1918, 38653600, 73.2, 151697.00, 135636.00, 'Polska', 'Republic', 'Aleksander Kwasniewski', 2928, 'PL'),
(173, 'PRI', 'Puerto Rico', 'North America', 'Caribbean', 8875.00, NULL, 3869000, 75.6, 34100.00, 32100.00, 'Puerto Rico', 'Commonwealth of the US', 'George W. Bush', 2919, 'PR'),
(174, 'PRK', 'North Korea', 'Asia', 'Eastern Asia', 120538.00, 1948, 24039000, 70.7, 5332.00, NULL, 'Choson Minjujuui InÂ´min Konghwaguk (Bukhan)', 'Socialistic Republic', 'Kim Jong-il', 2318, 'KP'),
(175, 'PRT', 'Portugal', 'Europe', 'Southern Europe', 91982.00, 1143, 9997600, 75.8, 105954.00, 102133.00, 'Portugal', 'Republic', 'Jorge SampÃ£io', 2914, 'PT'),
(176, 'PRY', 'Paraguay', 'South America', 'South America', 406752.00, 1811, 5496000, 73.7, 8444.00, 9555.00, 'Paraguay', 'Republic', 'Luis Ãngel GonzÃ¡lez Macchi', 2885, 'PY'),
(177, 'PSE', 'Palestine', 'Asia', 'Middle East', 6257.00, NULL, 3101000, 71.4, 4173.00, NULL, 'Filastin', 'Autonomous Area', 'Yasser (Yasir) Arafat', 4074, 'PS'),
(178, 'PYF', 'French Polynesia', 'Oceania', 'Polynesia', 4000.00, NULL, 235000, 74.8, 818.00, 781.00, 'PolynÃ©sie franÃ§aise', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3016, 'PF'),
(179, 'QAT', 'Qatar', 'Asia', 'Middle East', 11000.00, 1971, 599000, 72.4, 9472.00, 8920.00, 'Qatar', 'Monarchy', 'Hamad ibn Khalifa al-Thani', 2973, 'QA'),
(180, 'REU', 'RÃ©union', 'Africa', 'Eastern Africa', 2510.00, NULL, 699000, 72.7, 8287.00, 7988.00, 'RÃ©union', 'Overseas Department of France', 'Jacques Chirac', 3017, 'RE'),
(181, 'ROM', 'Romania', 'Europe', 'Eastern Europe', 238391.00, 1878, 22455500, 69.9, 38158.00, 34843.00, 'RomÃ¢nia', 'Republic', 'Ion Iliescu', 3018, 'RO'),
(182, 'RUS', 'Russian Federation', 'Europe', 'Eastern Europe', 17075400.00, 1991, 146934000, 67.2, 276608.00, 442989.00, 'Rossija', 'Federal Republic', 'Vladimir Putin', 3580, 'RU'),
(183, 'RWA', 'Rwanda', 'Africa', 'Eastern Africa', 26338.00, 1962, 7733000, 39.3, 2036.00, 1863.00, 'Rwanda/Urwanda', 'Republic', 'Paul Kagame', 3047, 'RW'),
(184, 'SAU', 'Saudi Arabia', 'Asia', 'Middle East', 2149690.00, 1932, 21607000, 67.8, 137635.00, 146171.00, 'Al-Â´Arabiya as-SaÂ´udiya', 'Monarchy', 'Fahd ibn Abdul-Aziz al-SaÂ´ud', 3173, 'SA'),
(185, 'SDN', 'Sudan', 'Africa', 'Northern Africa', 2505813.00, 1956, 29490000, 56.6, 10162.00, NULL, 'As-Sudan', 'Islamic Republic', 'Omar Hassan Ahmad al-Bashir', 3225, 'SD'),
(186, 'SEN', 'Senegal', 'Africa', 'Western Africa', 196722.00, 1960, 9481000, 62.2, 4787.00, 4542.00, 'SÃ©nÃ©gal/Sounougal', 'Republic', 'Abdoulaye Wade', 3198, 'SN'),
(187, 'SGP', 'Singapore', 'Asia', 'Southeast Asia', 618.00, 1965, 3567000, 80.1, 86503.00, 96318.00, 'Singapore/Singapura/Xinjiapo/Singapur', 'Republic', 'Sellapan Rama Nathan', 3208, 'SG'),
(188, 'SGS', 'South Georgia and the South Sandwich Islands', 'Antarctica', 'Antarctica', 3903.00, NULL, 0, NULL, 0.00, NULL, 'South Georgia and the South Sandwich Islands', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'GS'),
(189, 'SHN', 'Saint Helena', 'Africa', 'Western Africa', 314.00, NULL, 6000, 76.8, 0.00, NULL, 'Saint Helena', 'Dependent Territory of the UK', 'Elisabeth II', 3063, 'SH'),
(190, 'SJM', 'Svalbard and Jan Mayen', 'Europe', 'Nordic Countries', 62422.00, NULL, 3200, NULL, 0.00, NULL, 'Svalbard og Jan Mayen', 'Dependent Territory of Norway', 'Harald V', 938, 'SJ'),
(191, 'SLB', 'Solomon Islands', 'Oceania', 'Melanesia', 28896.00, 1978, 444000, 71.3, 182.00, 220.00, 'Solomon Islands', 'Constitutional Monarchy', 'Elisabeth II', 3161, 'SB'),
(192, 'SLE', 'Sierra Leone', 'Africa', 'Western Africa', 71740.00, 1961, 4854000, 45.3, 746.00, 858.00, 'Sierra Leone', 'Republic', 'Ahmed Tejan Kabbah', 3207, 'SL'),
(193, 'SLV', 'El Salvador', 'North America', 'Central America', 21041.00, 1841, 6276000, 69.7, 11863.00, 11203.00, 'El Salvador', 'Republic', 'Francisco Guillermo Flores PÃ©rez', 645, 'SV'),
(194, 'SMR', 'San Marino', 'Europe', 'Southern Europe', 61.00, 885, 27000, 81.1, 510.00, NULL, 'San Marino', 'Republic', NULL, 3171, 'SM'),
(195, 'SOM', 'Somalia', 'Africa', 'Eastern Africa', 637657.00, 1960, 10097000, 46.2, 935.00, NULL, 'Soomaaliya', 'Republic', 'Abdiqassim Salad Hassan', 3214, 'SO'),
(196, 'SPM', 'Saint Pierre and Miquelon', 'North America', 'North America', 242.00, NULL, 7000, 77.6, 0.00, NULL, 'Saint-Pierre-et-Miquelon', 'Territorial Collectivity of France', 'Jacques Chirac', 3067, 'PM'),
(197, 'STP', 'Sao Tome and Principe', 'Africa', 'Central Africa', 964.00, 1975, 147000, 65.3, 6.00, NULL, 'SÃ£o TomÃ© e PrÃ­ncipe', 'Republic', 'Miguel Trovoada', 3172, 'ST'),
(198, 'SUR', 'Suriname', 'South America', 'South America', 163265.00, 1975, 417000, 71.4, 870.00, 706.00, 'Suriname', 'Republic', 'Ronald Venetiaan', 3243, 'SR'),
(199, 'SVK', 'Slovakia', 'Europe', 'Eastern Europe', 49012.00, 1993, 5398700, 73.7, 20594.00, 19452.00, 'Slovensko', 'Republic', 'Rudolf Schuster', 3209, 'SK'),
(200, 'SVN', 'Slovenia', 'Europe', 'Southern Europe', 20256.00, 1991, 1987800, 74.9, 19756.00, 18202.00, 'Slovenija', 'Republic', 'Milan Kucan', 3212, 'SI'),
(201, 'SWE', 'Sweden', 'Europe', 'Nordic Countries', 449964.00, 836, 8861400, 79.6, 226492.00, 227757.00, 'Sverige', 'Constitutional Monarchy', 'Carl XVI Gustaf', 3048, 'SE'),
(202, 'SWZ', 'Swaziland', 'Africa', 'Southern Africa', 17364.00, 1968, 1008000, 40.4, 1206.00, 1312.00, 'kaNgwane', 'Monarchy', 'Mswati III', 3244, 'SZ'),
(203, 'SYC', 'Seychelles', 'Africa', 'Eastern Africa', 455.00, 1976, 77000, 70.4, 536.00, 539.00, 'Sesel/Seychelles', 'Republic', 'France-Albert RenÃ©', 3206, 'SC'),
(204, 'SYR', 'Syria', 'Asia', 'Middle East', 185180.00, 1941, 16125000, 68.5, 65984.00, 64926.00, 'Suriya', 'Republic', 'Bashar al-Assad', 3250, 'SY'),
(205, 'TCA', 'Turks and Caicos Islands', 'North America', 'Caribbean', 430.00, NULL, 17000, 73.3, 96.00, NULL, 'The Turks and Caicos Islands', 'Dependent Territory of the UK', 'Elisabeth II', 3423, 'TC'),
(206, 'TCD', 'Chad', 'Africa', 'Central Africa', 1284000.00, 1960, 7651000, 50.5, 1208.00, 1102.00, 'Tchad/Tshad', 'Republic', 'Idriss DÃ©by', 3337, 'TD'),
(207, 'TGO', 'Togo', 'Africa', 'Western Africa', 56785.00, 1960, 4629000, 54.7, 1449.00, 1400.00, 'Togo', 'Republic', 'GnassingbÃ© EyadÃ©ma', 3332, 'TG'),
(208, 'THA', 'Thailand', 'Asia', 'Southeast Asia', 513115.00, 1350, 61399000, 68.6, 116416.00, 153907.00, 'Prathet Thai', 'Constitutional Monarchy', 'Bhumibol Adulyadej', 3320, 'TH'),
(209, 'TJK', 'Tajikistan', 'Asia', 'Southern and Central Asia', 143100.00, 1991, 6188000, 64.1, 1990.00, 1056.00, 'ToÃ§ikiston', 'Republic', 'Emomali Rahmonov', 3261, 'TJ'),
(210, 'TKL', 'Tokelau', 'Oceania', 'Polynesia', 12.00, NULL, 2000, NULL, 0.00, NULL, 'Tokelau', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 3333, 'TK'),
(211, 'TKM', 'Turkmenistan', 'Asia', 'Southern and Central Asia', 488100.00, 1991, 4459000, 60.9, 4397.00, 2000.00, 'TÃ¼rkmenostan', 'Republic', 'Saparmurad Nijazov', 3419, 'TM'),
(212, 'TMP', 'East Timor', 'Asia', 'Southeast Asia', 14874.00, NULL, 885000, 46.0, 0.00, NULL, 'Timor Timur', 'Administrated by the UN', 'JosÃ© Alexandre GusmÃ£o', 1522, 'TP'),
(213, 'TON', 'Tonga', 'Oceania', 'Polynesia', 650.00, 1970, 99000, 67.9, 146.00, 170.00, 'Tonga', 'Monarchy', 'Taufa''ahau Tupou IV', 3334, 'TO'),
(214, 'TTO', 'Trinidad and Tobago', 'North America', 'Caribbean', 5130.00, 1962, 1295000, 68.0, 6232.00, 5867.00, 'Trinidad and Tobago', 'Republic', 'Arthur N. R. Robinson', 3336, 'TT'),
(215, 'TUN', 'Tunisia', 'Africa', 'Northern Africa', 163610.00, 1956, 9586000, 73.7, 20026.00, 18898.00, 'Tunis/Tunisie', 'Republic', 'Zine al-Abidine Ben Ali', 3349, 'TN'),
(216, 'TUR', 'Turkey', 'Asia', 'Middle East', 774815.00, 1923, 66591000, 71.0, 210721.00, 189122.00, 'TÃ¼rkiye', 'Republic', 'Ahmet Necdet Sezer', 3358, 'TR'),
(217, 'TUV', 'Tuvalu', 'Oceania', 'Polynesia', 26.00, 1978, 12000, 66.3, 6.00, NULL, 'Tuvalu', 'Constitutional Monarchy', 'Elisabeth II', 3424, 'TV'),
(218, 'TWN', 'Taiwan', 'Asia', 'Eastern Asia', 36188.00, 1945, 22256000, 76.4, 256254.00, 263451.00, 'Tâ€™ai-wan', 'Republic', 'Chen Shui-bian', 3263, 'TW'),
(219, 'TZA', 'Tanzania', 'Africa', 'Eastern Africa', 883749.00, 1961, 33517000, 52.3, 8005.00, 7388.00, 'Tanzania', 'Republic', 'Benjamin William Mkapa', 3306, 'TZ'),
(220, 'UGA', 'Uganda', 'Africa', 'Eastern Africa', 241038.00, 1962, 21778000, 42.9, 6313.00, 6887.00, 'Uganda', 'Republic', 'Yoweri Museveni', 3425, 'UG'),
(221, 'UKR', 'Ukraine', 'Europe', 'Eastern Europe', 603700.00, 1991, 50456000, 66.0, 42168.00, 49677.00, 'Ukrajina', 'Republic', 'Leonid KutÅ¡ma', 3426, 'UA'),
(222, 'UMI', 'United States Minor Outlying Islands', 'Oceania', 'Micronesia/Caribbean', 16.00, NULL, 0, NULL, 0.00, NULL, 'United States Minor Outlying Islands', 'Dependent Territory of the US', 'George W. Bush', NULL, 'UM'),
(223, 'URY', 'Uruguay', 'South America', 'South America', 175016.00, 1828, 3337000, 75.2, 20831.00, 19967.00, 'Uruguay', 'Republic', 'Jorge Batlle IbÃ¡Ã±ez', 3492, 'UY'),
(224, 'USA', 'United States', 'North America', 'North America', 9363520.00, 1776, 278357000, 77.1, 8510700.00, 8110900.00, 'United States', 'Federal Republic', 'George W. Bush', 3813, 'US'),
(225, 'UZB', 'Uzbekistan', 'Asia', 'Southern and Central Asia', 447400.00, 1991, 24318000, 63.7, 14194.00, 21300.00, 'Uzbekiston', 'Republic', 'Islam Karimov', 3503, 'UZ'),
(226, 'VAT', 'Holy See (Vatican City State)', 'Europe', 'Southern Europe', 0.40, 1929, 1000, NULL, 9.00, NULL, 'Santa Sede/CittÃ  del Vaticano', 'Independent Church State', 'Johannes Paavali II', 3538, 'VA'),
(227, 'VCT', 'Saint Vincent and the Grenadines', 'North America', 'Caribbean', 388.00, 1979, 114000, 72.3, 285.00, NULL, 'Saint Vincent and the Grenadines', 'Constitutional Monarchy', 'Elisabeth II', 3066, 'VC'),
(228, 'VEN', 'Venezuela', 'South America', 'South America', 912050.00, 1811, 24170000, 73.1, 95023.00, 88434.00, 'Venezuela', 'Federal Republic', 'Hugo ChÃ¡vez FrÃ­as', 3539, 'VE'),
(229, 'VGB', 'Virgin Islands, British', 'North America', 'Caribbean', 151.00, NULL, 21000, 75.4, 612.00, 573.00, 'British Virgin Islands', 'Dependent Territory of the UK', 'Elisabeth II', 537, 'VG'),
(230, 'VIR', 'Virgin Islands, U.S.', 'North America', 'Caribbean', 347.00, NULL, 93000, 78.1, 0.00, NULL, 'Virgin Islands of the United States', 'US Territory', 'George W. Bush', 4067, 'VI'),
(231, 'VNM', 'Vietnam', 'Asia', 'Southeast Asia', 331689.00, 1945, 79832000, 69.3, 21929.00, 22834.00, 'ViÃªt Nam', 'Socialistic Republic', 'TrÃ¢n Duc Luong', 3770, 'VN'),
(232, 'VUT', 'Vanuatu', 'Oceania', 'Melanesia', 12189.00, 1980, 190000, 60.6, 261.00, 246.00, 'Vanuatu', 'Republic', 'John Bani', 3537, 'VU'),
(233, 'WLF', 'Wallis and Futuna', 'Oceania', 'Polynesia', 200.00, NULL, 15000, NULL, 0.00, NULL, 'Wallis-et-Futuna', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3536, 'WF'),
(234, 'WSM', 'Samoa', 'Oceania', 'Polynesia', 2831.00, 1962, 180000, 69.2, 141.00, 157.00, 'Samoa', 'Parlementary Monarchy', 'Malietoa Tanumafili II', 3169, 'WS'),
(235, 'YEM', 'Yemen', 'Asia', 'Middle East', 527968.00, 1918, 18112000, 59.8, 6041.00, 5729.00, 'Al-Yaman', 'Republic', 'Ali Abdallah Salih', 1780, 'YE'),
(236, 'YUG', 'Yugoslavia', 'Europe', 'Southern Europe', 102173.00, 1918, 10640000, 72.4, 17000.00, NULL, 'Jugoslavija', 'Federal Republic', 'Vojislav KoÅ¡tunica', 1792, 'YU'),
(237, 'ZAF', 'South Africa', 'Africa', 'Southern Africa', 1221037.00, 1910, 40377000, 51.1, 116729.00, 129092.00, 'South Africa', 'Republic', 'Thabo Mbeki', 716, 'ZA'),
(238, 'ZMB', 'Zambia', 'Africa', 'Eastern Africa', 752618.00, 1964, 9169000, 37.2, 3377.00, 3922.00, 'Zambia', 'Republic', 'Frederick Chiluba', 3162, 'ZM'),
(239, 'ZWE', 'Zimbabwe', 'Africa', 'Eastern Africa', 390757.00, 1980, 11669000, 37.8, 5951.00, 8670.00, 'Zimbabwe', 'Republic', 'Robert G. Mugabe', 4068, 'ZW'),
(240, 'NON', 'None Selected', 'South America', 'None', 0.00, 1980, 11669000, 37.8, 5951.00, 8670.00, 'Zimbabwe', 'Republic', 'Robert G. Mugabe', 4068, 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `GenderId` int(11) NOT NULL AUTO_INCREMENT,
  `Gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`GenderId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`GenderId`, `Gender`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=7 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'Administrator'),
(2, 'Members', 'General User'),
(3, 'Teachers', 'Teachers'),
(4, 'Students', 'Students'),
(5, 'Guardians', 'Guardians'),
(6, 'Staffs', 'Staffs');

-- --------------------------------------------------------

--
-- Table structure for table `initial_settings_categories`
--

CREATE TABLE IF NOT EXISTS `initial_settings_categories` (
  `CategoriesId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoriesName` varchar(100) NOT NULL,
  PRIMARY KEY (`CategoriesId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `initial_settings_categories`
--

INSERT INTO `initial_settings_categories` (`CategoriesId`, `CategoriesName`) VALUES
(1, 'Class'),
(2, 'Section'),
(3, 'Department'),
(4, 'Subject'),
(5, 'Exam'),
(6, 'Group'),
(7, 'Gender'),
(8, 'Shift'),
(9, 'Media'),
(10, 'Enrollment');

-- --------------------------------------------------------

--
-- Table structure for table `initial_settings_info`
--

CREATE TABLE IF NOT EXISTS `initial_settings_info` (
  `SettingsId` int(11) NOT NULL AUTO_INCREMENT,
  `SettingsCategory` varchar(200) NOT NULL,
  `SettingsName` varchar(300) NOT NULL,
  `SettingsDescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `isActive` tinyint(4) NOT NULL,
  PRIMARY KEY (`SettingsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `initial_settings_info`
--

INSERT INTO `initial_settings_info` (`SettingsId`, `SettingsCategory`, `SettingsName`, `SettingsDescription`, `isActive`) VALUES
(1, '1', 'One', 'প্রথম', 1),
(2, '1', 'Two', 'দ্বিতীয়', 1),
(3, '1', 'Three', 'তৃতীয়', 1),
(4, '1', 'Four', 'চতুর্থ', 1),
(5, '1', 'Five', 'পঞ্চম', 1),
(6, '1', 'Six', 'ষষ্ঠ', 1),
(7, '1', 'Seven', 'সপ্তম', 1),
(8, '1', 'Eight', 'অষ্টম', 1),
(9, '1', 'Nine', 'নবম', 1),
(10, '1', 'Ten', 'দশম', 1),
(11, '1', 'Eleven', 'একাদশ', 1),
(12, '1', 'Twelve', 'দ্বাদশ', 1),
(13, '2', 'A', 'ক', 1),
(14, '2', 'B', 'খ', 1),
(15, '2', 'C', 'গ', 1),
(16, '2', 'D', 'ঘ', 1),
(17, '2', 'E', 'ঙ', 1),
(18, '6', 'Science', 'বিজ্ঞান', 1),
(19, '6', 'Arts', 'মানবিক', 1),
(20, '6', 'Business Study', 'ব্যবসায় শিক্ষা', 1),
(21, '7', 'Male', 'পুরুষ', 1),
(22, '7', 'Female', 'নারী', 1),
(23, '3', 'Faculty of Arts', 'কলা অনুষদ', 1),
(32, '3', 'Faculty of Business Studies', 'ব্যবসায় শিক্ষা অনুষদ', 1),
(33, '3', 'Faculty of Biological Science', 'বায়োলজি অনুষদ', 1),
(34, '3', 'Faculty of Engineering and Technology', NULL, 1),
(35, '3', 'Faculty of Education', NULL, 1),
(36, '3', 'Faculty of Fine Arts', NULL, 1),
(37, '3', 'Faculty of Law', NULL, 1),
(38, '3', 'Faculty of Medicine', NULL, 1),
(39, '3', 'Faculty of Postgraduates Medical Sciences & Research', NULL, 1),
(40, '3', 'Faculty of Pharmacy', NULL, 1),
(41, '3', 'Faculty of Science', NULL, 1),
(42, '3', 'Faculty of Social Sciences', NULL, 1),
(43, '3', 'Faculty of Earth and Environmental Sciences', NULL, 1),
(44, '8', 'Day', 'সকাল', 1),
(45, '8', 'Evening', 'বিকাল', 1),
(46, '9', 'Slideshow', 'Slideshow', 1),
(47, '9', 'Regular Media', 'Regular Media', 1),
(48, '9', 'Photo Gallery', 'Photo Gallery', 1),
(49, '10', 'Current', 'Current', 1),
(50, '10', 'Alumni', 'Alumni', 1);

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE IF NOT EXISTS `medias` (
  `MediaId` int(11) NOT NULL AUTO_INCREMENT,
  `AddedBy` int(11) DEFAULT NULL,
  `MediaCategory` int(11) DEFAULT NULL,
  `MediaFileName` varchar(255) NOT NULL,
  `MediaName` varchar(255) DEFAULT NULL,
  `MediaTempName` varchar(255) NOT NULL,
  `MediaSize` varchar(255) DEFAULT NULL,
  `MediaWidth` varchar(255) DEFAULT NULL,
  `MediaHeight` varchar(255) DEFAULT NULL,
  `AddedDate` int(11) NOT NULL,
  `isActive` int(11) NOT NULL,
  PRIMARY KEY (`MediaId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`MediaId`, `AddedBy`, `MediaCategory`, `MediaFileName`, `MediaName`, `MediaTempName`, `MediaSize`, `MediaWidth`, `MediaHeight`, `AddedDate`, `isActive`) VALUES
(1, 1, 46, '311143432', 'Altab Photo', '311143432', '38.81', '460', '460', 1447845461, 1),
(2, 1, 46, '0', 'Samrat Khan', 'Joe_Tati2', '95.37', '329', '525', 1447845500, 1),
(3, 1, 48, '0', 'wewer', 'brac_bank_security_questions1', '185.59', '1366', '768', 1447845572, 1),
(4, 1, 46, 'Danny-Joseph21.JPG', 'werwer dfasdfa', 'Danny-Joseph21', '452.2', '1024', '768', 1447845640, 1),
(5, 1, 46, 'Danny-Joseph2.JPG', 'werwe', 'Danny-Joseph2', '452.2', '1024', '768', 1447845691, 1),
(6, 1, 48, 'ad21.png', 'We', 'ad21', '154.12', '500', '300', 1447923768, 1),
(7, 1, 47, '', 'Altab Photo', '', NULL, NULL, NULL, 1448200291, 1);

-- --------------------------------------------------------

--
-- Table structure for table `online_applicants`
--

CREATE TABLE IF NOT EXISTS `online_applicants` (
  `ApplicantId` int(11) NOT NULL AUTO_INCREMENT,
  `FullNameBn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FullNameEn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FatherNameBn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FatherNameEn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MotherNameBn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MotherNameEn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DateOfBirth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MobileNo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PermanentVillege` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PermanentPost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PermanentUpazila` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PermanentDistrict` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PresentVillege` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PresentPost` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PresentUpazila` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PresentDistrict` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OthersGuardian` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OthersGuardianPermanentAddress` text COLLATE utf8_unicode_ci NOT NULL,
  `OthersGuardianPresentAddress` text COLLATE utf8_unicode_ci NOT NULL,
  `GuardianMobileNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Religion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `StdGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Compulsory` text COLLATE utf8_unicode_ci NOT NULL,
  `Selective` text COLLATE utf8_unicode_ci NOT NULL,
  `Optional` text COLLATE utf8_unicode_ci NOT NULL,
  `ExamName1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Board1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Institute1` text COLLATE utf8_unicode_ci NOT NULL,
  `PassYear1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ExamCenterName1` text COLLATE utf8_unicode_ci NOT NULL,
  `RollNo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RegNo1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Session1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Result1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ExamName2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Board2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Passyear2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Institute2` text COLLATE utf8_unicode_ci NOT NULL,
  `ExamCenterName2` text COLLATE utf8_unicode_ci NOT NULL,
  `RollNo2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RegNo2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Session2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Result2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ExamName3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Board3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PassYear3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Institute3` text COLLATE utf8_unicode_ci NOT NULL,
  `ExamCenterName3` text COLLATE utf8_unicode_ci NOT NULL,
  `RollNo3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RegNo3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Session3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Result3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Section` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `BkashNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` int(255) NOT NULL,
  `TransactionId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Photo` text COLLATE utf8_unicode_ci NOT NULL,
  `isActive` int(11) NOT NULL,
  PRIMARY KEY (`ApplicantId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `online_applicants`
--

INSERT INTO `online_applicants` (`ApplicantId`, `FullNameBn`, `FullNameEn`, `FatherNameBn`, `FatherNameEn`, `MotherNameBn`, `MotherNameEn`, `DateOfBirth`, `MobileNo`, `PermanentVillege`, `PermanentPost`, `PermanentUpazila`, `PermanentDistrict`, `PresentVillege`, `PresentPost`, `PresentUpazila`, `PresentDistrict`, `OthersGuardian`, `Relation`, `OthersGuardianPermanentAddress`, `OthersGuardianPresentAddress`, `GuardianMobileNo`, `Nationality`, `Gender`, `Religion`, `StdGroup`, `Compulsory`, `Selective`, `Optional`, `ExamName1`, `Board1`, `Institute1`, `PassYear1`, `ExamCenterName1`, `RollNo1`, `RegNo1`, `Session1`, `Result1`, `ExamName2`, `Board2`, `Passyear2`, `Institute2`, `ExamCenterName2`, `RollNo2`, `RegNo2`, `Session2`, `Result2`, `ExamName3`, `Board3`, `PassYear3`, `Institute3`, `ExamCenterName3`, `RollNo3`, `RegNo3`, `Session3`, `Result3`, `Class`, `Section`, `BkashNo`, `Amount`, `TransactionId`, `Photo`, `isActive`) VALUES
(1, 'Altab', 'Hossen', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0),
(2, 'ccccc', 'ccc', 'cc', 'ccc', 'cc', 'cc', '03/22/2016', '436367435763', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0),
(3, 'okay', 'okay', 'okay', 'okay', 'okay', 'okay', '11/08/2015', '', 'okay', 'okay', 'okay', 'okay', 'okay', 'okay', 'okay', 'okay', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `SettingsId` int(11) NOT NULL AUTO_INCREMENT,
  `InstituteName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteSlogan` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteEstablished` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteEIIN` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteIsMPO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteLogo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteHeader` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `InstitutePhone` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteAddress` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteWebsite` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteKeywords` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteTime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `InstituteGoogleMaps` text COLLATE utf8_unicode_ci NOT NULL,
  `ShortInformation` text COLLATE utf8_unicode_ci NOT NULL,
  `AdminName` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `AdminPhone` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `AdminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `AdminPhoto` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `AdminSign` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AdminMessage` text COLLATE utf8_unicode_ci NOT NULL,
  `AdminMessagePhoto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SettingsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`SettingsId`, `InstituteName`, `InstituteSlogan`, `InstituteEstablished`, `InstituteEIIN`, `InstituteIsMPO`, `InstituteLogo`, `InstituteHeader`, `InstitutePhone`, `InstituteEmail`, `InstituteAddress`, `InstituteWebsite`, `InstituteKeywords`, `InstituteTime`, `InstituteGoogleMaps`, `ShortInformation`, `AdminName`, `AdminPhone`, `AdminEmail`, `AdminPhoto`, `AdminSign`, `AdminMessage`, `AdminMessagePhoto`) VALUES
(1, 'Demo Institute', 'Demo Slogan', '1952', '144202', '', 'product21.png', '', '01821660066', 'info@tritiyo.com', '379, Katasur, Dhaka', 'http://www.tritiyo.com', 'http://www.tritiyo.com', '9:00AM to 5:00 PM', 'None', 'None', 'Samrat Khan 1', '01680139540', 'skydotint@gmail.com', 'product3.png', 'product3.png', '<p>Admin Message hh</p>', 'blankavatar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_promotion`
--

CREATE TABLE IF NOT EXISTS `student_promotion` (
  `PromotionId` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) NOT NULL,
  `StudyYear` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  PRIMARY KEY (`PromotionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `full_name_bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `full_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `father_name_bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `father_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mother_name_bn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mother_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=201564357 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `full_name_bn`, `full_name_en`, `father_name_bn`, `father_name_en`, `mother_name_bn`, `mother_name_en`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'hKN2ytzPvIRI60ESN9imMe', 1268889823, 1448199805, 1, 'Samrat', 'Altab', '', '', '', '', '', '', 'Idea Tweaker Ltd.', '1680139540'),
(2, '127.0.0.1', 'zxc', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', NULL, 'admin1@admin.com', NULL, NULL, NULL, 'VKFr6VpOXgdYc51X2J8OOe', 1441865934, 1446979036, 1, 'Sifat', 'Khan', '', '', '', '', '', '', 'Idea Tweaker Ltd.', '01680139540'),
(3, '127.0.0.1', 'asd', '$2y$08$0TGFFEmyQQT4NDnDn0Tdu.PJ9FNWOvHkekWaxGcpmxFCWmfO4TfzO', NULL, 'ideatweaker@gmail.com', NULL, NULL, NULL, 'VKFr6VpOXgdYc51X2J8OOe', 1441973445, 1442119650, 1, 'Khalakuzzaman', 'Joseph', '', '', '', '', '', '', 'Idea Tweaker Ltd.', '01680139540'),
(4, '127.0.0.1', 'qwe', '$2y$08$YObvqVbOHLsLkq1pSYRApeeOE.ctDwi3n4cK4FPWbj1UIm.KjBpJW', NULL, 'sam77raj@gmail.com', NULL, NULL, NULL, NULL, 1441974760, 1447835388, 1, 'Umme', 'Habiba Rajonis', 'rgsdgs', 'sdfghfnb', 'sdg', 'dsfg', 'dsfg', 'dsfg', 'Idea Tweaker Ltd.', '01680139540'),
(5, '127.0.0.1', 'mnb', '$2y$08$XyUEV.QTdiDBXQBWjTHlCeBO.2WDaFeJpi62rSUITiWzzXQXy7E7i', NULL, 'ideatweaker1@gmail.com', NULL, NULL, NULL, NULL, 1441976580, 1442151441, 1, 'Samrat', 'Khan', '', '', '', '', '', '', 'Sustainability Partnerships', '01680139540'),
(6, '127.0.0.1', 'lkj', '$2y$08$hNQDytGmtSCajJgucS4RweGFDD5anNmrQimaRH9qlo77/GZfAZVLS', NULL, 'roy@sustainabilitypartnerships.com', NULL, NULL, NULL, NULL, 1442036263, 1442036299, 1, 'Palash', 'Roy', '', '', '', '', '', '', 'Sustainability Partnerships', '01680139540'),
(2015623, '', '', '$2y$08$JYoA6.CQAOhDiMzxjo6HKenS./cdDm3D9HL3xtLdj1LH1ofwmoTuK', NULL, 'student@ideatwaker.com', NULL, NULL, NULL, NULL, 1447835555, NULL, 1, 'Altab', 'Hossen TD', 'rgsdgs', 'sdfghfnb', 'dsfg', 'dsfg', 'dsfg', 'dsfg', NULL, '01738627368'),
(20156231, '', '', '$2y$08$BlQNmNuI9fTa6G1tIRhnGujMJsFieo53nKRv81iB28tfEWrJ28yWm', NULL, 'admin@admin.com', NULL, NULL, NULL, NULL, 1447835555, NULL, 1, NULL, NULL, '', '', '', '', '', '', NULL, NULL),
(201538409, '', '', '$2y$08$jcwVevlcIcZG88tSDhdCCuC97HV7AwxxMvGEFdP7smaALw6WMb9cC', NULL, '', NULL, NULL, NULL, NULL, 1447276351, NULL, 1, NULL, NULL, '', '', '', '', '', '', NULL, NULL),
(201564356, '', '', '$2y$08$h78B3KrZhEeHdRMl.8aaVeBh/LkyBhANwExgYVqXl.3f6FY2dMrS2', NULL, '', NULL, NULL, NULL, NULL, 1447276457, NULL, 1, NULL, NULL, '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(3, 2, 3),
(4, 3, 2),
(5, 4, 4),
(6, 5, 2),
(7, 6, 2),
(10, 2015623, 4),
(11, 20156231, 5),
(8, 201538409, 3),
(9, 201564356, 6);

-- --------------------------------------------------------

--
-- Table structure for table `u_basicinfocriteria`
--

CREATE TABLE IF NOT EXISTS `u_basicinfocriteria` (
  `CriteriaId` int(11) NOT NULL AUTO_INCREMENT,
  `CriteriaName` varchar(50) NOT NULL,
  `CriteriaDescription` varchar(50) NOT NULL,
  `Sorting` varchar(50) NOT NULL,
  PRIMARY KEY (`CriteriaId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=20 ;

--
-- Dumping data for table `u_basicinfocriteria`
--

INSERT INTO `u_basicinfocriteria` (`CriteriaId`, `CriteriaName`, `CriteriaDescription`, `Sorting`) VALUES
(1, 'Home Phone', '', ''),
(2, 'Twitter', '', ''),
(3, 'Facebook', '', ''),
(4, 'Linked In', '', ''),
(5, 'Orkut', '', ''),
(6, 'Google Plus', '', ''),
(7, 'Git Hub', '', ''),
(8, 'JS Fiddle', '', ''),
(9, 'Stack Overflow', '', ''),
(10, 'Cell Phone', '', ''),
(11, 'Youtube', '', ''),
(12, 'Meet up', '', ''),
(13, 'Flickr', '', ''),
(14, 'Tumblr', '', ''),
(15, 'Myspace', '', ''),
(16, 'Website', '', ''),
(17, 'Blog', '', ''),
(18, 'Instagram', '', ''),
(19, 'Pinterest', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `u_basicinfos`
--

CREATE TABLE IF NOT EXISTS `u_basicinfos` (
  `InfosId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `UniqueNumber` int(100) NOT NULL,
  `Gender` int(1) NOT NULL,
  `Religion` varchar(50) NOT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `Upazila` varchar(60) DEFAULT NULL,
  `District` varchar(100) DEFAULT NULL,
  `DateOfBirth` int(100) DEFAULT NULL,
  `JoinDate` int(100) DEFAULT NULL,
  `BloodGroup` varchar(50) DEFAULT NULL,
  `CountryId` int(11) NOT NULL,
  `Biography` text,
  `NewsFeedKeywords` text,
  `UserPhoto` text,
  `UserVideo` text,
  `MaritalStatus` int(11) DEFAULT NULL,
  `NewportalURL` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EnrollmentStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`InfosId`),
  KEY `FK_u_basicinfos_users` (`UserId`),
  KEY `FK_u_basicinfos_country` (`CountryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=6 ;

--
-- Dumping data for table `u_basicinfos`
--

INSERT INTO `u_basicinfos` (`InfosId`, `UserId`, `UniqueNumber`, `Gender`, `Religion`, `Address`, `Upazila`, `District`, `DateOfBirth`, `JoinDate`, `BloodGroup`, `CountryId`, `Biography`, `NewsFeedKeywords`, `UserPhoto`, `UserVideo`, `MaritalStatus`, `NewportalURL`, `EnrollmentStatus`) VALUES
(1, 6, 0, 22, '', 'userfile', NULL, NULL, 566089200, NULL, NULL, 22, 'userfile', 'userfile', 'sign.jpg', 'userfile', 2, 'http://www.samratkhan.com', NULL),
(2, 201538409, 0, 0, '', '379, Katasur, Dhaka', NULL, NULL, 1090101600, NULL, NULL, 22, 'Write Biography', 'SEO & News Feed Keywords', 'Danny-Joseph21.JPG', 'SEO & News Feed Keywords', 2, 'http://www.samratkhan.com', NULL),
(3, 2015623, 0, 21, '', 'Dhaka', NULL, NULL, 1458255600, NULL, NULL, 22, 'Bio', 'SEo', 'Chrysanthemum.jpg', 'viewo', 2, 'http://www.google.com', NULL),
(4, 4, 4412, 21, '1234', '1234', '1234', '1234', 1447714800, 1234, '1234', 22, '1234', NULL, 'user.jpg', NULL, 2, NULL, 123),
(5, 1, 4412, 21, 'fty', '56e', 'dgh', 'dgf', 1447110000, 456, 'tdy', 2, 'sdfg', NULL, '1.jpg', NULL, 2, NULL, 49);

-- --------------------------------------------------------

--
-- Table structure for table `u_businesses`
--

CREATE TABLE IF NOT EXISTS `u_businesses` (
  `BusinessId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL DEFAULT '0',
  `CateogryId` int(11) NOT NULL,
  `OrganizationName` varchar(150) NOT NULL,
  `OrganizationURL` varchar(150) NOT NULL,
  `OrganizationCity` varchar(150) NOT NULL,
  `StartDate` int(100) NOT NULL,
  `Services` varchar(150) NOT NULL,
  `Notes` varchar(150) NOT NULL,
  PRIMARY KEY (`BusinessId`),
  KEY `UserId` (`UserId`),
  KEY `CateogryId` (`CateogryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=15 ;

--
-- Dumping data for table `u_businesses`
--

INSERT INTO `u_businesses` (`BusinessId`, `UserId`, `CateogryId`, `OrganizationName`, `OrganizationURL`, `OrganizationCity`, `StartDate`, `Services`, `Notes`) VALUES
(13, 6, 62, 'a', 'http://samratkhan.com', 's', 1446073200, 'as', 'asdf'),
(14, 2015623, 63, 'Idea Tweaker', 'http://www.idea.com', 'Dhaka', 1446332400, 'Web, Soft', 'Nothing for note');

-- --------------------------------------------------------

--
-- Table structure for table `u_educationhistory`
--

CREATE TABLE IF NOT EXISTS `u_educationhistory` (
  `EducationID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `InstituteName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Degree` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `Concentrations` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `StartDate` int(100) DEFAULT NULL,
  `EndDate` int(100) DEFAULT NULL,
  `GPA` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `IsGraduated` int(1) DEFAULT NULL,
  PRIMARY KEY (`EducationID`),
  KEY `education_userid` (`UserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT AUTO_INCREMENT=78 ;

--
-- Dumping data for table `u_educationhistory`
--

INSERT INTO `u_educationhistory` (`EducationID`, `UserId`, `InstituteName`, `Degree`, `Concentrations`, `StartDate`, `EndDate`, `GPA`, `IsGraduated`) VALUES
(72, 1, 'Shaheed Salahuddin Cantonment Public School & College', 'Shaheed Salahuddin Cantonment Public School & College', 'Shaheed Salahuddin Cantonment Public School & College', 1448050400, 1468060400, NULL, 1),
(73, 6, 'werqwe', 'dfas', 'asdfas', 1446073200, 1446073200, NULL, 1),
(74, 5, 'Dhaka City College', 'B.Sc. Hons in Computer Science', 'CS', 1130799600, 1239141600, NULL, 1),
(75, 2015623, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 2015623, 'Bu', 'BSC', 'CSE', 1446332400, 1447887600, NULL, 1),
(77, 2015623, 'Bangladesh University', 'BSC In Computer  Science ', 'Computer Science ', 1446937200, 1447974000, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_images`
--

CREATE TABLE IF NOT EXISTS `u_images` (
  `ImageId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ImageName` varchar(100) NOT NULL,
  PRIMARY KEY (`ImageId`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `u_std_information`
--

CREATE TABLE IF NOT EXISTS `u_std_information` (
  `StudentInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `Class` int(11) NOT NULL,
  `ClassRoll` int(11) NOT NULL,
  `Section` int(11) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `Department` int(11) NOT NULL,
  `isActive` int(1) NOT NULL,
  PRIMARY KEY (`StudentInfoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `u_std_information`
--

INSERT INTO `u_std_information` (`StudentInfoId`, `UserId`, `Class`, `ClassRoll`, `Section`, `GroupId`, `Department`, `isActive`) VALUES
(1, 2015623, 3, 23, 13, 19, 23, 1),
(2, 2015623, 3, 23, 13, 0, 0, 1),
(3, 2015623, 3, 1098, 0, 0, 0, 1),
(4, 2015623, 1, 2324, 13, 18, 23, 1),
(5, 2015623, 6, 2324, 13, 0, 23, 1),
(6, 2015623, 6, 2324444, 13, 0, 23, 1),
(7, 2015623, 3, 2324444, 13, 19, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_tchstaff_information`
--

CREATE TABLE IF NOT EXISTS `u_tchstaff_information` (
  `TchStaffId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `SalaryScale` varchar(255) NOT NULL,
  `DateAttended` varchar(255) NOT NULL,
  `isActive` int(1) NOT NULL,
  PRIMARY KEY (`TchStaffId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `u_tchstaff_information`
--

INSERT INTO `u_tchstaff_information` (`TchStaffId`, `UserId`, `Designation`, `SalaryScale`, `DateAttended`, `isActive`) VALUES
(1, 1, 'ff', 'ff', '11/04/2015', 1),
(2, 2, 'ww', 'ww', '11/10/2015', 1),
(3, 2015623, 'Student', '100000', '11/19/2015', 1),
(4, 1, 'ff', 'ff', '11/01/2015', 1),
(5, 1, 'Academic ', '100000', '11/01/2015', 1),
(6, 1, 'Academic ', '10', '11/01/2015', 1),
(7, 1, 'Academic ', '10', '11/07/2006', 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_workhistory`
--

CREATE TABLE IF NOT EXISTS `u_workhistory` (
  `WorkId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `Organization` varchar(150) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `StartDate` int(100) NOT NULL,
  `EndDate` int(100) NOT NULL,
  `Responsibilities` text NOT NULL,
  PRIMARY KEY (`WorkId`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=3 ;

--
-- Dumping data for table `u_workhistory`
--

INSERT INTO `u_workhistory` (`WorkId`, `UserId`, `Organization`, `Position`, `StartDate`, `EndDate`, `Responsibilities`) VALUES
(1, 6, 'asdas', 'asfdas', 1446073200, 1446073200, 'asdfas'),
(2, 2015623, 'Doodle', 'SE', 1446332400, 1447628400, 'All');

-- --------------------------------------------------------

--
-- Table structure for table `webpages`
--

CREATE TABLE IF NOT EXISTS `webpages` (
  `PageId` int(11) NOT NULL AUTO_INCREMENT,
  `PageTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PageRoute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci,
  `PublishDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  PRIMARY KEY (`PageId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT AUTO_INCREMENT=52 ;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`PageId`, `PageTitle`, `PageRoute`, `ParentId`, `Description`, `PublishDate`, `isActive`) VALUES
(6, 'আমাদের কথা', 'About-Us', 0, 'শিক্ষা এমন এক প্রজ্জ্বলিত আলো যার পরশে জীবন ঐশ্বর্যমন্ডিত হয় এবং যার বদৌলতে মানুষ সমাজ জীবনে শ্রদ্ধা ও সম্মানের পাত্র হিসাবে আদৃত হয়। জীবন সন্ধানী পথিককে নিজের গন্তব্যে পৌছানোর একমাত্র অবলম্বন শিক্ষা, শিক্ষা এবং শিক্ষা। শিক্ষা মানুষের অন্তর আত্মাকে শুদ্ধ এবং দৃষ্টিশক্তিকে প্রসার করে তার ত্রিলোচনকে জাগ্রত করে। শিক্ষা সত্যের অনুসন্ধান করে। বিদ্যা বিনয় দান করে। বিদ্যা মানব জীবনের অজ্ঞানতা, কুসংস্কার ও অন্ধকার দূর করে জীবনকে করে তোলে মহীয়ান ও সুষমামন্ডিত। বিদ্যার সাহচর্যেই মানবজীবন হয় মোহমুক্ত, সতেজ ও আনন্দপূর্ণ। মানবজীবনকে সুন্দর সতেজ ও সাবলীল করে গড়ে তুলতে হলে শিক্ষাকে অবশ্যই জীবনধর্মী হতে হবে।', '2015-06-09', 1),
(7, 'অফিস', 'অফিস', 0, '<p><img alt="" src="http://10.175.165.11/SP107.190.133.107/SDwww.pakutiacollege.edu.bd/Spuploads/mediauploads/23_Mustaf/Rqae5eb53b-c103-49e4-a363-9cb05f81161d/IDFECA2926103C418C/RV200000/AVSkyController_3.1.2.50020/Br200/CL2-global/EI2135831865/Ht240/IP10.51.69.11:52612/IQ25/MO15/MT0/NIGPMOCCA-SAVDIST1-SKFCTL1/OC0/OS0/Otjpeg/PB200/PNMedCongestion_3G4GWiFi_Desktop/SI0700060084cd50000000000000000000000000000a33450b0000000000000000000000006bbe856b895bae49af0ccb00/SUhttp://www.pakutiacollege.edu.bd/uploads/mediauploads/23_Mustafa.jpg/Sd736B7966697265/TI2135831865/Tr1/Wh400/EUR4SP3Pbp4bIMo0JC5WtHQujFMUPKBymX3rYEqUzKI.tV8UVz2G-922SzjcJudK8Eo.ucpffNRRoqlB8WFNKHMQael9RC8-fMB7rErvW-imOho6Olpaenqamrq62tr6-x/EVc49af2da5f77912a3701ff86117f9a62/file.jpeg" /></p>\r\n\r\n<p>অফিস</p>\r\n', '2015-02-09', 1),
(8, 'নোটিশ বোর্ড', 'notice-board', 6, 'নোটিশ বোর্ড', '0000-00-00 00:00:00', 1),
(11, 'প্রতিষ্ঠানের নিয়ম শৃঙ্খলা', 'rules', 0, '<p><strong>ইউনিফর্ম :</strong><br>\r\n  ছাত্র (স্কুল শাখা): কালো ফুলপ্যান্ট, সাদা শার্ট, সাদা কেড্স।<br>\r\n  ছাত্র (কলেজ শাখা): কালো ফুলপ্যান্ট, সাদা শার্ট, সাদা কেড্স।<br>\r\n  ছাত্রী (স্কুল শাখা): কামিজ নেভি ব্লু , সালোয়ার সাদা, এপ্রোন সাদা, স্কার্ফ সাদা, ওড়না সাদা, বেল্ট সাদা, সাদা কেড্স।<br>\r\n  ছাত্রী (কলেজ শাখা): কামিজ নেভি ব্লু , সালোয়ার সাদা, এপ্রোন সাদা, স্কার্ফ সাদা, ওড়না সাদা, বেল্ট সাদা, সাদা কেড্স।<br>\r\n  শীতকালে ছাত্র ছাত্রীদের জন্য নেভীব্লু সোয়েটার।<br>\r\n</p>\r\n<p><strong>নির্ধারিত পোশাক সবার জন্য বাধ্যতামূলক।</strong></p>\r\n<p><br>\r\n  মোবাইল, সিম কার্ড, ক্যামেরা, বাইনোকুলার ক্লাশে আনা যাবে না।<br>\r\n  নির্ধারিত তারিখে বেতন পরিশোধ করতে হবে। অন্যথায় বিধি অনুযায়ী জরিমানা দিতে হবে।<br>\r\n  প্রত্যেক   মাসিক, সেমিস্টার প্রাক নির্বাচনী পরীক্ষা পর্যন্ত মাসিক বেতন, পরীক্ষার   ফি সহ সমুদয় বকেয়া পরিশোধ করে প্রবেশপত্র সংগ্রহ করতে হবে।<br>\r\n  অধ্যক্ষ/   সহকারী প্রধান শিক্ষক এর পূর্বানুমতি ছাড়া কোন শিক্ষার্থী ক্লাসে অনুপস্থিত   থাকতে পারবে না। অসুস্থতা বা অনিবার্য কোনো কারণে অননুমোদিত অনুপস্থিতির   জন্য পরবর্তী উপস্থিতির দিনেই অভিভাবক এবং ক্লাশ টিচারের সুপারিশসহ লিখিত   দরখাস্ত অধ্যক্ষে/ সহকারী প্রধান শিক্ষকের নিকট জমা দিতে হবে। অন্যথায়   নির্ধারিত হারে জরিমানা দিতে হবে।<br>\r\n  বর্ষ-সমাপনী পরীক্ষায় অংশগ্রহন না করলে বা অনুত্তীর্ণ হলে কোনো ক্রমেই পরবর্তী শ্রেণিতে প্রমোশন দেয়া হবে না।<br>\r\n  পর-পর দুইটি মাসিক/সেমিস্টার পরীক্ষায় অকৃতকার্য হলে কিংবা কোন পরীক্ষায় নকল করলে প্রতিষ্ঠান থেকে সরাসরি বহিষ্কার করা হবে।<br>\r\n  দশম   ও দ্বাদশ শ্রেণিতে নির্বাচনী পরীক্ষায় পর পরই পরীক্ষার্থীদের কোচিং শুরু   হবে। উক্ত কোচিং ক্লাসে উপস্থিত থাকা নির্বাচনী পরীক্ষায় উত্তীর্ণ সকণ   শিক্ষার্থীর জন্য বাধ্যতামূলক।<br>\r\n  অধ্যক্ষ/সহকারী প্রধান শিক্ষক /ক্লাশ   টিচারের অনুমতি ব্যতীত ছুটির পূর্বে কোনোক্রমেই ক্যাম্পাস ত্যাগ করা যাবে   না। শিক্ষার্থীদের সকল প্রকার প্রয়োজন/অভিযোগের কথা সর্ব প্রথম সংশ্লিষ্ট   টিচার/ ক্লাশ টিচারকে জানাতে হবে।<br>\r\n  <strong>জরিমানা বিধি:</strong></p>\r\n<p><strong>ক্লাসে অনুপস্থিতঃ</strong><br>\r\n  প্রতিদিন ক্লাসে অনুপস্থিতির জন্য ২০/-<br>\r\n  ক্লাশ থেকে পালানোর জন্য ৫০/-<br>\r\n  মাসিক পরীক্ষায় অনুপস্থিতির জন্য প্রতি বিষয়ে ১০০/-<br>\r\n  অনুত্তীর্ণ হলে প্রতি বিষয়ে জরিমানা ১০০/-<br>\r\n  সেমিস্টার পরীক্ষায় অনুপস্থিতির থাকলে প্রতি বিষয়ে ১০০/-<br>\r\n  অনুত্তীর্ণ হলে প্রতি বিষয়ে ১০০/-<br>\r\n  কোনো শিক্ষক/কর্মচারীর সংঙ্গে কোনোরূপ অসদাচরণ করলে সর্বোচ্চ শাস্তি কলেজ থেকে বহিষ্কার (জরিমানা পূর্বক)।<br>\r\n  কলেজের   কোনো আসবাবপত্র, লাইট, ফ্যান, ইলেকট্রিক যন্ত্রাপাতি বা কোনো কিছু ক্ষতি   করলে ক্ষতিগ্রন্থ জিনিসের মেরামত খরচ বর্তমান মূল্যে আদায় করা হবে। দোষী   ব্যক্তিকে সনাক্ত করা সম্ভব না হলে সংশ্লিষ্ট সকল ছাত্র/ছাত্রীদের নিকট   থেকে উক্ত জরিমানা আদায় করা হবে।</p>\r\n<p><strong>পরীক্ষা বিষয়ক বিধিঃ</strong><br>\r\n  প্রতিটি   টিউটোরিয়াল পরীক্ষাতে অংশগ্রহন করতে হবে। যুক্তিসঙ্গত কারন ছাড়া পরীক্ষাতে   অংশগ্রহনে ব্যর্থ হলে প্রতিটি পরীক্ষার জন্য ২০ টাকা জরিমানা দিতে হবে।</p>\r\n<p>সেমিস্টার   পরিক্ষায় অংশগ্রহন বাধ্যতামুলক। উপযুক্ত কারন ব্যতিরেকে সেমিস্টার   পরিক্ষায় অনুপস্থিতি অমার্জনীয় বলে গন্য হবে। যুক্তিসঙ্গত কারন ছাড়া   পরীক্ষাতে অংশগ্রহনে ব্যর্থ হলে প্রতিটি বিষয়ের জন্য ১০০ টাকা করে জরিমানা   দিতে হবে।</p>\r\n<p>সেমিস্টার ও সাপ্তাহিক পরিক্ষা সমুহের ফলাফলের গড় নম্বরই   পরবর্তী শ্রেণিতে উত্তীর্ণর ভিত্তিরুপে বিবেচিত হবে। প্রি-টেস্ট ও টেস্ট   পরিক্ষায় উত্তীর্ণ শিক্ষার্থীরাই জে.এস.সি/ এস.এস.সি/ এইচ.এস.সি পরীক্ষাতে   অংশগ্রহনের সুযোগ পাবে। এ ব্যপারে কোনো সুপারিশ গ্রহনযোগ্য হবে না।</p>\r\n<p><strong>উত্তীর্ণ ছাত্রছাত্রীদের প্রতি পরীক্ষার ‘Academic Transcript’ অভিভাবকের স্বাক্ষর নিয়ে ক্গালাশ টিচারের নিকট জমা দিতে হবে।</strong></p>\r\n<p><strong>অনুত্তীর্ণ ছাত্রছাত্রিদের অভিভাবক উপস্থিত হয়ে ‘Academic Transcript’ এ সাক্ষর করতে হবে।</strong></p>\r\n<p><strong>আচরণ বিধিঃ</strong><br>\r\n  প্রতিষ্ঠানের   কোনো কর্মচারীকে ‘তুই’ বা ‘তুই’ বলে সম্বোধন করা যাবে না। কোন   শিক্ষক-কর্মচারীর বিরুদ্ধে কোনো অভিযোগ থাকলে তা অধ্যক্ষকে জানাতে হবে।<br>\r\n  প্রতিষ্ঠানের সম্পদের কোনোরূপ ক্ষতি করা যাবে না।<br>\r\n  প্রতিষ্ঠানের দেয়াল, দরজা, চেয়ার, টেবিল, বেঞ্চ ইত্যাদিতে কোন কিছু লেখা/ আঁকা যাবে না।<br>\r\n  মিথ্যা কখা বলা, পরস্পর অশোভন আচরণ বা ঝগড়া-ঝাটি কিংবা মারামারি করা এবং আইন শৃঙ্খলা পরিপন্থী কোন কাজ করা যাবে না।<br>\r\n  ক্লাস চলাকালে কোন শিক্ষার্থী ক্যাম্পাস বারান্দায় বা অন্যত্র ঘুরাফেরা করতে পারবে না কিংবা ক্যাম্পাসের বাইরে যেতে পারবেনা।<br>\r\n  বাথরুম,   টিফিন কেনা, অযু করা ক্লাসরুমে প্রবেশ ও বের হওয়ার সময় পূর্ণ শৃঙ্খলা বজায়   রাখতে হবে। ক্যাম্পাসের ভিতরকোন রূপ হৈ- চৈ বা শোরগোল করা যাবে না।<br>\r\n  বিনষ্ট কাগজপত্র, ময়লা/আবর্জনা যেখানে সেখানে ফেলা যাবে না।<br>\r\n  ক্যাম্পাসে কোনপ্রকার রাজনৈতিক কার্যকলাপ চালানো যাবে না।<br>\r\n</p>\r\n', '2015-06-09', 1),
(14, 'মাস্টারপ্ল্যান', 'masterplan', 0, '<p>বিজ্ঞান শাখায় বাংলা, ইংরেজি, তথ্য প্রযুক্তি ও যোগাযোগ পদার্থ,রসায়ন,উচ্চতর গণিত, জীববিজ্ঞান,কৃষিশিক্ষা ভূগোল , মানবিক শাখায় বাংলা, ইংরেজি,তথ্যপ্রযুক্তি ও যোগাযোগ অর্থনীতি, পৌরনীতি ও সুশাসন ইসলামের ইতিহাস ও সংস্কৃতি, যুক্তিবিদ্যা, ইসলাম শিক্ষা, কৃষি শিক্ষা, সমাজ বিজ্ঞান, ও ভূগোল বিষয়ে পাঠদানের ব্যবস্থা আছে এবং ব্যবসায় শিক্ষা শাখায় বাংলা, ইংরেজি,তথ্যপ্রযুক্তি ও যোগাযোগ হিসাব বিজ্ঞান, ব্যবসায় সংগঠন ও ব্যবস্থাপনা,ফিনান্স ব্যাংকিং ও বিমা,উৎপাদন ব্যবস্থাপনা ও বিপনন, ভূগোল, অর্থনীতি, কৃষি শিক্ষা বিষয়ে পাঠদান করা হয়। উচ্চতর শিক্ষায় স্নাতক(পাস) পর্যায়ে বিএসএস ও বিবিএস-কোর্সে শিক্ষা দান করা হয়। বিএসএস এ নিম্নবর্ণিত বিষয়ে শিক্ষাদান করা হয় যথা- বাংলা,ইংরেজি,অর্থনীতি,রাষ্ট্রবিজ্ঞান ও ইসলামের ইতিহাস ও সংস্কৃতি এবং বিবিএস কোর্সে বাংলা, ইংরেজী, হিসাববিজ্ঞান, ব্যবস্থাপনা এবং অর্থনীতি। এ কলেজে সমৃদ্ধ একটি লাইব্রেরী আছে। অত্র লাইবেরীতে প্রায় আট হাজার বই সংরক্ষিত আছে।<img alt="" class="fullimg" src="https://scontent-mrs1-1.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/11156306_870326003024055_4215233492335767856_n.jpg?oh=dfcc5ca81e2290ed6e5f8b7386a959c5&oe=56404561" /> বিজ্ঞান বিভাগের জন্য পৃথক পৃথক সমৃদ্ধ বিজ্ঞানাগার রয়েছে। এছাড়াও ছাত্রছাত্রীদের ডিজিটাল শিক্ষায় শিক্ষিত করার জন্য একটি সমৃদ্ধ কম্পিউটার ল্যাব রয়েছে। উক্ত কম্পিউটার ল্যাবে ১০টি সচল কম্পিউটার আছে। কলেজটিতে ২৫০ ফুট দীর্ঘ একটি দ্বিতল বিশিষ্ট একাডেমিক ভবন, একটি তিনতলা বিজ্ঞান ভবন ও একটি নতুন নির্মিত তিনতলা একাডেমিক ভবন এবং একটি জামে মসজিদ রয়েছে।</p>\r\n', '2015-28-07', 1),
(15, 'একাডেমিক  ক্যালেন্ডার', 'academiccalendar', 0, '<h3 style="text-align:center;">২০১৫ শিক্ষাবর্ষের একাডেমিক ক্যালেন্ডার</h3>\n<table class="table table-striped table-bordered dataTable">\n <tbody>\n  <tr>\n   <td>\n   <p>ক্রমিক নং</p>\n   </td>\n   <td>\n   <p>পরীক্ষার নাম</p>\n   </td>\n   <td>\n   <p>তারিখ ও দিন</p>\n   </td>\n   <td>\n   <p>দিন সংখ্যা</p>\n   </td>\n  </tr>\n  <tr>\n   <td>\n   <p>১.</p>\n   </td>\n   <td>অর্ধ-বার্ষিক পরীক্ষা ও প্রাক-নির্বাচনী পরীক্ষা</td>\n   <td>০১ জুন, সোমবার থেকে ১৭ জুন, বুধবার পর্যন্ত</td>\n   <td>\n   <p>১৪ দিন</p>\n   </td>\n  </tr>\n  \n  <tr>\n   <td>\n   <p>১.</p>\n   </td>\n   <td>নির্বাচনী পরীক্ষা</td>\n   <td>০১ অক্টোবর, বৃহস্পতিবার থেকে ১৮ অক্টোবর, বরিবার পর্যন্ত</td>\n   <td>\n   <p>১৪ দিন</p>\n   </td>\n  </tr>\n  \n  <tr>\n   <td>\n   <p>১.</p>\n   </td>\n   <td>বার্ষিক পরীক্ষা</td>\n   <td>২৯ নভেম্বর, রবিবার থেকে ১৫ ডিসেম্বর, মঙ্গলবার পর্যন্ত</td>\n   <td>\n   <p>১৪ দিন</p>\n   </td>\n  </tr>\n </tbody>\n</table>', '2015-28-07', 1),
(19, 'কর্মরত জনবল', 'workingmanpower', 0, '<table class="table table-striped table-bordered dataTable" border="1" cellpadding="0" cellspacing="0">\r\n <tbody>\r\n  <tr>\r\n   <td>\r\n   <p>পদবী</p>\r\n   </td>\r\n   <td>\r\n   <p>কর্মরত মোট</p>\r\n   </td>\r\n   <td>\r\n   <p>কর্মরত মহিলা</p>\r\n   </td>\r\n   <td>\r\n   <p>কর্মরত পুরুষ</p>\r\n   </td>\r\n   <td>\r\n   <p>MPO ভূক্ত মোট</p>\r\n   </td>\r\n   <td>\r\n   <p>MPO  ভূক্ত মহিলা</p>\r\n   </td>\r\n   <td>\r\n   <p>MPO  ভূক্ত পুরুষ</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>অধ্যক্ষ</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>উপাধ্যক্ষ</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>সহকারি শিক্ষক</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>সহকারী শিক্ষক</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>জুনিয়র শিক্ষক</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>কম্পিউটার শিক্ষক</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '2015-28-07', 1),
(20, 'খেলার মাঠ', 'playground', 0, '<p><img alt="" class="fullimg" src="https://pakutiacollege.edu.bd/uploads/mediauploads/217509_3.jpg" [removed] width:900px" />টাংগাইল জেলার ঘাটাইল উপজেলাধীন পাকুটিয়া গ্রামে মনোরম পরিবেশে ১৯৫২ ইং সনের ২রা জানুয়ারী এলাকার গণ্যমান্য ব্যক্তিবর্গের ঐকান্তিক প্রচেষ্ঠায় গড়ে উঠেছিল পাকুটিয়া পাবলিক হাই স্কুল। সেই থেকে পথ চলা। বিদ্যালয়টি এই এলাকার মানুষের মাঝে বিদ্যার আলো ছড়িয়ে যাচ্ছে। বিদ্যালয়টি ১৯৯৮ইং সালে কলেজে উন্নীত হয়। বর্তমানে স্কুল এন্ড কলেজটিতে প্রায় ১৪০০ ছাত্র ছাত্রী লেখাপড়া করছে।</p>\r\n', '2015-30-07', 1),
(30, 'গভর্ণিং বডি', 'governingbody', 0, '<table border="1" cellpadding="0" cellspacing="0">\r\n <tbody>\r\n  <tr>\r\n   <td>\r\n   <p>ক্রমিক নং</p>\r\n   </td>\r\n   <td>\r\n   <p>নাম</p>\r\n   </td>\r\n   <td>\r\n   <p>পদবীর নাম</p>\r\n   </td>\r\n   <td>\r\n   <p>নিযুক্ত তারিখ</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>জনাব ফরিদা রহমান খান</p>\r\n   </td>\r\n   <td>\r\n   <p>সভাপতি</p>\r\n   </td>\r\n   <td>\r\n   <p>০৭-০৫-২০১৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>২</p>\r\n   </td>\r\n   <td>\r\n   <p>জনাব কাজী আওরঙ্গজেব</p>\r\n   </td>\r\n   <td>\r\n   <p>দাতা সদস্য</p>\r\n   </td>\r\n   <td>\r\n   <p>০৭-০৫-২০১৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>\r\n   <p>জনাব ওয়াদুদ মিয়া</p>\r\n   </td>\r\n   <td>\r\n   <p>অভিভাবক সদস্য (কলেজ শাখা)</p>\r\n   </td>\r\n   <td>\r\n   <p>০৭-০৫-২০১৫</p>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '0000-00-00 00:00:00', 1),
(32, 'শিক্ষক ও কর্মচারীদের সৃষ্টপদ ', 'teachersandstaffvacancy', 0, '<table border="1" cellpadding="0" cellspacing="0" class="dataTable table table-bordered table-striped">\r\n <tbody>\r\n  <tr>\r\n   <td>\r\n   <p>পদবী</p>\r\n   </td>\r\n   <td>\r\n   <p>কর্মরত মোট</p>\r\n   </td>\r\n   <td>\r\n   <p>কর্মরত মহিলা</p>\r\n   </td>\r\n   <td>\r\n   <p>MPO ভূক্ত মোট</p>\r\n   </td>\r\n   <td>\r\n   <p>শূন্যপদের তথ্য</p>\r\n   </td>\r\n   <td>\r\n   <p>আবেদন শুরু</p>\r\n   </td>\r\n   <td>\r\n   <p>আবেদনের শেষ তারিখ</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>অধ্যক্ষ</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১০-০৭-২০১৫</p>\r\n   </td>\r\n   <td>\r\n   <p>২১-০৮-২০১৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>উপাধ্যক্ষ</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১০-০৭-২০১৫</p>\r\n   </td>\r\n   <td>\r\n   <p>২১-০৮-২০১৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>সহকারি শিক্ষক</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১০-০৭-২০১৫</p>\r\n   </td>\r\n   <td>\r\n   <p>২১-০৮-২০১৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>সহকারী শিক্ষক</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>১০-০৭-২০১৫</p>\r\n   </td>\r\n   <td>\r\n   <p>২১-০৮-২০১৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>জুনিয়র শিক্ষক</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>১০-০৭-২০১৫</p>\r\n   </td>\r\n   <td>\r\n   <p>২১-০৮-২০১৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>কম্পিউটার শিক্ষক</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>\r\n   <p>১০-০৭-২০১৫</p>\r\n   </td>\r\n   <td>\r\n   <p>২১-০৮-২০১৫</p>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '2015-28-07', 1),
(33, 'সহ শিক্ষা কার্যক্রম', 'Extra-Curricular-Activities', 0, '<p><strong>হাউস কার্যক্রম </strong></p>\n\n<p>কলেজের ছাত্র-ছাত্রী ও শিক্ষক-শিক্ষিকার মধ্যে একতা ও সম্প্রীতি তৈরী করা, শিক্ষা ও সৃজনশীল কর্মকান্ডে দলবদ্ধভাবে উন্নতিসাধন, সহজে ও নির্ভুলভাবে কর্ম সম্পাদনের প্রচেষ্টা, সকল কাজে গতিশীলতা ও সুষ্ঠু প্রতিযোগিতামূলক মনোভাব তৈরী করা এবং পড়াশুনার পাশাপাশি বিভিন্ন সহশিক্ষা কর্যক্রমে ছাত্র-ছাত্রীদের উৎসাহ সৃষ্টি করা প্রভৃতি কাজের লক্ষ্যে কলেজের হাউস কার্যক্রম পরিচালিত হয়। কলেজের সকল ছাত্র-ছাত্রী, শিক্ষক-শিক্ষিকা, ইশা খাঁ, তিতুমীর, শের-এ-বাংলা ও নজরুল এই ৪ টি হাউসের যে কোন একটির সদস্য হয়। সকল ছাত্র-ছাত্রীকে কলেজ ইউনিফর্মের সাথে নিজ হাউসের নির্ধারিত কালারের হাস ব্যাজ ধারণ করতে হয়। হাউসের কালার  হচ্ছে- ইশা খাঁ-গোলাপী, তিতুমীর সবুজ, শের-এ-বাংলা-হলুদ ও নজরুল-লাল। শিক্ষা কার্যক্রমের ন্যায় খেলাধুলা, সাংস্কৃতিক, সাধারণ জ্ঞান, কুইজ, বিতর্ক, পিটি-প্যারেড প্রভৃতি সহশিক্ষা কার্যক্রমে পয়েণ্টের ভিত্তিতে প্রতিবছর এই ৪টি হাউসের মধ্যে থেকে চ্যাম্পিয়ন ও রানারআপ হাউস নির্বাচন করা হয়। </p>\n\n<p> </p>\n\n<p><strong>বিএনসিসি </strong></p>\n\n<p>দেশের বিভিন্ন কলেজ বিশ্ববিদ্যালদের ছাত্র-ছাত্রীদের দেশের সার্বভৌমত্ব রক্ষার দায়েত্বে সামরিক বাহিনীর সহযোগী দ্বিতীয় সারির প্রতিরক্ষা বাহিনী হিসেবে গড়ে তোলার লক্ষ্যে ১৯৭৯ সালে নতুন রূপে প্রতিষ্ঠিত হয়েছে বাংলাদেশ ন্যাশনাল ক্যাডেট কোর। নিজ শিক্ষা প্রতিষ্ঠানের বিভিন্ন অনুষ্ঠানের পাশাপাশি দেশের সামাজিক ও উন্নয়নমুলক কর্মকান্ডে অংশগ্রহণ, জাতীয় ও আন্তর্জাতিক অনুষ্ঠানে স্বেচ্ছাসেবক হিসেবে অংশগ্রহন ও শৃঙ্খলা রক্ষার দায়িত্ব পালনে পুলিশ বাহিনীকে সহায়তা করা প্রভৃতি কাজে এই কোরের যথেষ্ঠ সুখ্যাতি রয়েছে। এই কোরের সকল ক্যাডেটরা স্বেচ্ছাসেবার ভিত্তিতে বিনা খরচে সামরিক বাহিনীর প্রাথমিক প্রশিক্ষণ লাভ করতে পারে। শ্রেষ্ঠ ক্যাডেটরা দেশের বিভিন্ন স্থানে, এমনকি রাষ্ট্রীয়ভাবে বিশ্বের বিভিন্ন দেশ সফর করে থাকে। দক্ষ ও যোগ্য ক্যাডেটদের মধ্য থেকে বিশেষ বাছাইয়ের মাধ্যমে সামরিক বাহিনীতে অফিসার হিসাবে ভর্তির সুযোগ রয়েছে। বিএএফ শাহীন কলেজ চট্টগ্রামের একাদশ ও দ্বাদশ শ্রেণীর ছাত্র-ছাত্রীদের বিএনসিসির এয়ার ইউনিটে ক্যাডেট হিসেবে ভর্তির সুযোগ রয়েছে।</p>\n\n<p><strong>এয়ার স্কাউট </strong></p>\n\n<p>১৯৭৭ সালে বাংলাদেশ বিমান বাহিনীর তত্ত্বাবধানে প্রতিষ্ঠিত হয় এয়ার স্কাউট। দেশের বিভিন্ন শিক্ষা প্রতিষ্ঠানের ছাত্র-ছাত্রীদের সমন্বয়ে গঠিত এয়ার স্কাউটের প্রধান কাজের মধ্যে সরকারি-বেসরকারি গুরুত্বপূর্ণ অনুষ্ঠান সফলভাবে সম্পন্ন করার লক্ষ্যে শৃঙ্খলা রক্ষার কাজে সহায়তা প্রদান করা এবং জাতীয় ও আর্ন্তজাতিক দিবসের তাতপর্য ও গুরুত্ব প্রচারে র‍্যালীতে অংশগ্রহণ করা, স্বাস্থ্য ও শিক্ষা মন্ত্রনালয়ের বিভিন্ন কর্মসূচিতে অংশগ্রহণ করা প্রভৃতি উল্লেখযোগ্য। কলেজের আভ্যন্তরীণ বিভিন্ন অনুষ্ঠান এবং জাতীয় ও আর্ন্তজাতিক বিভিন্ন দিবস সুষ্ঠুভাবে উদযাপন করার কাজে এই ইউনিট গুরুত্বপূর্ণ ভূমিকা পালন করে। এইসব ইউনিট পরিচালনার দায়িত্বে রয়েছেন কলেজের প্রশিক্ষন প্রাপ্ত শিক্ষক।</p>\n\n<p><strong>গার্লস গাইড </strong></p>\n\n<p>আর্ত মানবতার কল্যাণ, সামাজিক কর্মকান্ড ও সরকারি প্রতিষ্ঠানের বিভিন্ন অনুষ্ঠানে স্বেচ্ছাসেবকের কাজ করার লক্ষ্যে শিক্ষা প্রতিষ্ঠানের ছাত্রীদের নিয়ে গঠিত হয় গার্লস গাইড। ১৯৮২ সালে ৮ আগষ্ট বিএএফ শাহীন কলেজ চট্টগ্রামে প্রতিষ্ঠিত হয় গার্ল গাইডের একটি ইউনিট। প্রতিষ্ঠাকাল থেকে বর্তমান পর্যন্ত অত্যন্ত নির্ভরযোগ্যতার সাথে এই কলেজের গার্ল গাইডের দায়িত্ব পালন করে আসছেন এই ইউনিট।</p>\n\n<p><strong>রেঞ্জার</strong></p>\n\n<p>প্রতিদিন একটি ভাল কাজের ব্রত নিয়ে সামাজিক ও সেবামূলক কর্মের শপথ নিয়ে শিক্ষা প্রতিষ্ঠানের ছাত্রীদের নিয়ে প্রতিষ্ঠিত হয়েছে বাংলাদেশ গার্ল গাইড এসোসিয়েশনের তত্ত্বাবধানে পরিচালিত রেঞ্জার ইউনিট। ২০১০ সালে ২জুন ৩৬ জন শিক্ষার্থী নিয়ে বিএএফ শাহীন কলেজে রেঞ্জার ইউনিট গঠিত হয়। বর্তমানে এই ইউনিটের দায়িত্ব পালন করছেন ............ ।</p>\n\n<p><strong>কম্পিউটার ক্লাব</strong></p>\n\n<p>তথ্য প্রযুক্তি ক্ষেত্রে অধিকতর দক্ষতা বৃদ্ধি এবং জাতীয় ও আন্তর্জাতিক পর্যায়ে তথ্য প্রযুক্তি সংক্রান্ত ও কম্পিউটার প্রোগ্রামিং প্রতিযোগিতায় অংশগ্রহণের লক্ষ্যে গড়ে তোলা হয় শাহীন কম্পিউটার ক্লাব। একাদশ ও দ্বাদশ শ্রেণীর শুধুমাত্র কম্পিউটার বিজ্ঞান বিভাগের ছাত্র-ছাত্রীদের মধ্য থেকে বিশেষ বাছাই প্রক্রিয়ার মাধ্যমে এই ক্লাবের সদস্য হিসেবে মনোনীত করা হয়। কম্পিউটার ক্লাশের পাশাপাশি পূর্ব নির্ধারিত সময় অফ-পিরিয়ডের সময় এই ক্লাবের সদস্যরা সি-প্রোগ্রামিং, কম্পিউটার হার্ডওয়ার ও ইন্টারনেটের উপর কম্পিউটার ল্যাব ব্যবহারের সুযোগ পেয়ে থাকে। কম্পিউটার বিভাগের প্রভাষক কম্পিউটার ক্লাবের মডারেটর হিসেবে দায়িত্ব পালন করেন।</p>\n\n<p><strong>বিজ্ঞান ক্লাব </strong></p>\n\n<p>বিজ্ঞান শিক্ষাকে ছাত্র-ছাত্রীদের মাঝে অধিকতর আগ্রহ সৃষ্টি করা, বিজ্ঞানভীতি দূর করা, নিত্যনতুন বিজ্ঞানমূলক সৃজনশীলতা ও শিল্পকর্ম তৈরীতে উৎসাহ প্রদান এবং বিজ্ঞানভিত্তিক বিভিন্ন প্রতিযোগিতায় অংশগ্রহন করার লক্ষ্যে গঠন করা হয় বিজ্ঞান ক্লাব। আমাদের তরুণ শাহীনরা  বিজ্ঞান বিষয়ক সৃজনশীল কাজে দেশে ও বিদেশে বিশেষভাবে অবদান রাখছে।</p>\n\n<p><strong>ডিবেট ক্লাব </strong></p>\n\n<p>পুঁথিগত শিক্ষার পাশাপাশি ছাত্র-ছাত্রীদের সহশিক্ষা কার্যক্রমে উৎসাহিত করার জন্য অত্র কলেজে গঠন করা হয়েছে বিএএফ শাহীন কলেজ ডিবেট ক্লাব। ছাত্র-ছাত্রীদের ভবিষ্যত জীবনে দক্ষ, বাগ্মী নেতৃত্ব দানে সক্ষম ও যুক্তিবাদী করে গড়ে তোলার লক্ষ্য হচ্ছে এই ডিবেট ক্লাবের মূল উদ্দেশ্য।   </p>\n\n<p><strong>কুইজ ক্লাব </strong></p>\n\n<p>ছাত্রজীবন শেষে বিভিন্ন প্রতিযোগিতামূলক পরীক্ষায় সফলতা অর্জন, কর্মজীবনে প্রয়োগ ও বাস্তবায়ন এবং পাঠ্যবইয়ের নির্ধারিত সিলেবাসের পাশাপাশি সাধারণ জ্ঞানের পরিধি আরও সমৃদ্ধ করার লক্ষ্যে বিভিন্ন ক্লাশের ছাত্র-ছাত্রীদের নিয়ে গঠন করা হয়েছে শাহীন কুইজ ক্লাব। এই ক্লাবের রয়েছে বিভিন্ন উল্লেখযোগ্য অর্জন।  </p>\n\n<p><strong>খেলাধুলা </strong></p>\n\n<p>বিএএফ শাহীন কলেজ ঢাকার ছাত্র-ছাত্রীরা শারীরিক শিক্ষার পাশাপাশি স্কুল ও কলেজভিত্তিক বিভিন্ন প্রতিযোগিতামূলক খেলাধূলায় স্বক্রিয় অংশগ্রহণ করে থাকে। ঢাকা শিক্ষা বোর্ড আয়োজিত ২০১২ সালের আন্তঃস্কুল ক্রিকেট প্রতিযোগিতায় বিএএফ শাহীন কলেজ ঢাকা মহানগরী চ্যাম্পিয়ন ও বিভাগীয় পর্যায়ে রানার্স-আপ হওয়ার গৌরব অর্জন করে। একাদশ ও দ্বাদশ শ্রেণীর ছাত্রদের সমন্বয়ে গঠিত ফুটবল, ক্রিকেট, ব্যটমিন্টন ও ভলিবল এই ৪টি টীমে প্রায় শতাধিক খেলোয়াড় রয়েছে।</p>\n\n<p><strong>শাহীন বাদক দল</strong></p>\n\n<p>বিএএফ শাহীন কলেজ ঢাকার ৬ষ্ঠ থেকে ১০ম শ্রেণী পর্যন্ত বিভিন্ন ক্লাসের ছাত্র-ছাত্রীর সমন্বয়ে গঠন করা হয়েছে ‘শাহীন বাদক দল’। কলেজের বার্ষিক ও আন্তঃহাউস ক্রীড়া প্রতিযোগিতা, হাউসের প্যারেড প্রশিক্ষণ, প্রতিদিনের শারীরিক শিক্ষা (পিটি) প্রভৃতি কাজে এই বাদক দল অংশগ্রহণ করে থাকে। সাইড ড্রাম, বেইজ ড্রাম, টেনর ড্রাম, টেমবুরি ড্রাম, প্রভৃতি বাদ্যযন্ত্রের সমন্বয়ে সুসজ্জিত দলটি এই সব অনুষ্ঠানে চমৎকার ও আকর্ষনীয় বাদ্য পরিবেশন করে থাকে।</p>\n\n<p><strong>শাহীন নৃত্য ও সংগীত দল </strong></p>\n\n<p>বিএএফ শাহীন কলেজ এর ১ম থেকে ৮ম শ্রেণী পর্যন্ত ছাত্র-ছাত্রীদের নিয়মিত পড়াশুনা ও ক্লাসের পাশাপাশি নৃত্য ও সঙ্গীত চর্চার সুযোগ রয়েছে। এই বিভাগের ছাত্র-ছাত্রীরা কলেজের বার্ষিক সাংস্কৃতিক অনুষ্ঠান, নবীন বরণ, বিদায় সংবর্ধনা, বিশেষ দিবস উদযাপণ, প্রখ্যাত ও আন্তর্জাতিক ব্যক্তিত্বের কলেজ পরিদর্শন প্রভৃতি ক্ষেত্রে নৃত্য ও সঙ্গীত পরিবেশন করে থাকে। এই দল সশস্ত্রবাহিনী পরিবেশিত জনপ্রিয় অনুষ্ঠান “অনির্বাণ”সহ বিভিন্ন টেলিভিশন চ্যনেলের সাংস্কৃতিক বিষয়ক বিভিন্ন অনুষ্ঠানে অংশগ্রহণ করে থাকে।</p>\n\n<p><strong>কলেজ বার্ষিকী </strong></p>\n\n<p>সাহিত্য-সংস্কৃতি চর্চাকে সমৃদ্ধশালী ও সমুন্নত করতে প্রতিবছরি বিএএফ শাহীন কলেজ প্রকাশ করছে কলেজ বার্ষিকী ‘শাহীন’। কলেজের শিশু শ্রেনী থেকে উচ্চমাধ্যমিক শ্রেণীর ছাত্র-ছাত্রীরা, শিক্ষক-শিক্ষিকারা গল্প, কবিতা, প্রবন্ধ, চিত্রাংকন, বাস্তব অভিজ্ঞতা, ভ্রমণ কাহিনী প্রভৃতি বিষয়ক লেখা দিয়ে সমৃদ্ধ করে কলেজ বার্ষিকী শাহীনকে। এছাড়া শাহীনে কলেজের বার্ষিক কর্মসূচী ও গুরত্বপূর্ণ কর্মকান্ড, শিক্ষা ও সহশিক্ষা কার্যক্রম, ফলাফল ও গৌরবময় অর্জন প্রভৃতি সচিত্র আকারে প্রকাশিত হয়। সাধারণত এটি বছরের শেষের দিকে প্রকাশিত হয়। </p>\n', '2015-08-08', 1);
INSERT INTO `webpages` (`PageId`, `PageTitle`, `PageRoute`, `ParentId`, `Description`, `PublishDate`, `isActive`) VALUES
(34, 'প্রতিষ্ঠান প্রধানদের কার্যকাল', 'previous-headmaster-workingtime', 0, '<table class="dataTable table table-bordered table-striped">\r\n <tbody>\r\n  <tr>\r\n   <td>\r\n   <p>ক্রমিক নং</p>\r\n   </td>\r\n   <td>\r\n   <p>নাম</p>\r\n   </td>\r\n   <td>\r\n   <p>হইতে</p>\r\n   </td>\r\n   <td>\r\n   <p>পর্যন্ত</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১.</p>\r\n   </td>\r\n   <td>বাবু কেশব চন্দ্র ভৌমিক এ</td>\r\n   <td>০৫/০১/১৯৫২</td>\r\n   <td>\r\n   <p>৩১/১২/১৯৫২</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>২।</p>\r\n   </td>\r\n   <td>মৌঃ মোঃ আব্দুল কাদের খান এম.এ</td>\r\n   <td>০৪/০১/১৯৫৩</td>\r\n   <td>\r\n   <p>০৩/০৯/১৯৫৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৩।</p>\r\n   </td>\r\n   <td>মৌঃ মোঃ ইউসুফ আলী বি.এ</td>\r\n   <td>১০/০৯/১৯৫৫</td>\r\n   <td>\r\n   <p>৩১/০৩/১৯৫৬</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৪।</p>\r\n   </td>\r\n   <td>বাবু অশ্বিনী কুমার সাহা বি.এসসি, বিটি</td>\r\n   <td>০১/০৪/১৯৫৬</td>\r\n   <td>\r\n   <p>১৭/০২/১৯৫৭</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৫।</p>\r\n   </td>\r\n   <td>মৌঃ মোঃ আব্দুস সাত্তার বি.এ, এল.এল.বি</td>\r\n   <td>১৮/০২/১৯৫৭</td>\r\n   <td>\r\n   <p>১৪/০৫/১৯৫৮</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৬।</p>\r\n   </td>\r\n   <td>শাহ এ. এম বকতিয়ার বি.এ, বি.টি</td>\r\n   <td>১৫/০৫/১৯৫৮</td>\r\n   <td>\r\n   <p>০৭/০৯/১৯৬২</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৭।</p>\r\n   </td>\r\n   <td>মৌঃ মোঃ আজমত আলী এম.এ, বি.টি</td>\r\n   <td>০৮/০৯/১৯৬২</td>\r\n   <td>\r\n   <p>৩১/১২/১৯৬৭</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৮।</p>\r\n   </td>\r\n   <td>এস.এম. শাহাদৎ হোসেন বি.এ, বি.এড</td>\r\n   <td>০১/০১/১৯৬৮</td>\r\n   <td>\r\n   <p>৩১/১০/১৯৯৮</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৯।</p>\r\n   </td>\r\n   <td>ভারপ্রাপ্ত অধ্যক্ষ এস.এম. শাহাদৎ হোসেন বি.এ, বি.এড</td>\r\n   <td>০১/১১/১৯৯৮</td>\r\n   <td>\r\n   <p>০৬/০১/১৯৯৯</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১০।</p>\r\n   </td>\r\n   <td>অধ্যক্ষ মুহাম্মদ আব্দুল খালেক এম.এ</td>\r\n   <td>০৭/০১/১৯৯৯</td>\r\n   <td>\r\n   <p>৩০/০৭/২০০০</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১১।</p>\r\n   </td>\r\n   <td>ভারপ্রাপ্ত অধ্যক্ষ কাজী আব্দুল বারী বি.এসসি, বি.এড</td>\r\n   <td>৩১/০৭/২০০০</td>\r\n   <td>\r\n   <p>০৯/০৯/২০০০</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১২।</p>\r\n   </td>\r\n   <td>অধ্যক্ষ মোঃ মনসুরুর রহমান এম.এসসি</td>\r\n   <td>১০/০৯/২০০০</td>\r\n   <td>\r\n   <p>২৫/০৪/২০০১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৩।</p>\r\n   </td>\r\n   <td>ভারপ্রাপ্ত অধ্যক্ষ কাজী আব্দুল বারী বি.এসসি, বি.এড</td>\r\n   <td>২৬/০৪/২০০১</td>\r\n   <td>\r\n   <p>৩১/০৭/২০০১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৪।</p>\r\n   </td>\r\n   <td>অধ্যক্ষ আব্দুল হালিম এম.এ</td>\r\n   <td>০১/০৮/২০০১</td>\r\n   <td>\r\n   <p>৩১/০৭/২০০২</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৫।</p>\r\n   </td>\r\n   <td>ভারপ্রাপ্ত অধ্যক্ষ কাজী আব্দুল বারী বি.এসসি, বি.এড</td>\r\n   <td>০১/০৮/২০০২</td>\r\n   <td>\r\n   <p>৩১/০৮/২০০২</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৬।</p>\r\n   </td>\r\n   <td>অধ্যক্ষ মোঃ গোলাম মোস্তফা এম.এ, বি.এড</td>\r\n   <td>০১/০৯/২০০২</td>\r\n   <td>\r\n   <p>৩১/০১/২০০৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৭।</p>\r\n   </td>\r\n   <td>অধ্যক্ষ মোঃ নাজিম উদ্দিন বি.এসসি (সম্মান), এম.এসসি, এম.ফিল</td>\r\n   <td>০১/০২/২০০৫</td>\r\n   <td>\r\n   <p>৩১/০৫/২০১০</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৮।</p>\r\n   </td>\r\n   <td>ভারপ্রাপ্ত অধ্যক্ষ বাবু নিত্যানন্দ গোপ বি.এসসি (সম্মান), এম.এসসি, বি.এড</td>\r\n   <td>০১/০৬/২০১০</td>\r\n   <td>\r\n   <p>০২/১০/২০১০</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৯।</p>\r\n   </td>\r\n   <td>অধ্যক্ষ জীবুন নিছা, বি.এস.এস (সম্মান), এম.এস.এস (রাষ্ট্র বিজ্ঞান)</td>\r\n   <td>০৩/১০/২০১০</td>\r\n   <td>\r\n   <p> </p>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '2015-02-09', 1),
(35, 'পঠিত বিষয়সমূহ', 'Read-Topics', 0, '<table class="dataTable table table-bordered table-striped">\r\n <tbody>\r\n  <tr>\r\n   <td>\r\n   <p><strong>ক্রমিক নং</strong></p>\r\n   </td>\r\n   <td>\r\n   <p><strong>বিষয়ের নাম</strong></p>\r\n   </td>\r\n   <td>\r\n   <p><strong>বিষয় কোড</strong></p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১</p>\r\n   </td>\r\n   <td>বাংলা</td>\r\n   <td>\r\n   <p>১০১-১০২</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>২</p>\r\n   </td>\r\n   <td>ইংরেজি</td>\r\n   <td>\r\n   <p>১০৭-১০৮</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৩</p>\r\n   </td>\r\n   <td>সাধারণ গণিত</td>\r\n   <td>\r\n   <p>১০৯</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৪</p>\r\n   </td>\r\n   <td>ভূগোল</td>\r\n   <td>\r\n   <p>১১০</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৫</p>\r\n   </td>\r\n   <td>ইসলাম শিক্ষা</td>\r\n   <td>\r\n   <p>১১১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৬</p>\r\n   </td>\r\n   <td>হিন্দু ধর্ম শিক্ষা</td>\r\n   <td>\r\n   <p>১১২</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৭</p>\r\n   </td>\r\n   <td>বৌদ্ধ ধর্ম শিক্ষা</td>\r\n   <td>\r\n   <p>১১৩</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৮</p>\r\n   </td>\r\n   <td>খ্রিস্টান ধর্ম শিক্ষা</td>\r\n   <td>\r\n   <p>১১৪</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>৯</p>\r\n   </td>\r\n   <td>উচ্চতর গণিত</td>\r\n   <td>\r\n   <p>১২৬</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১০</p>\r\n   </td>\r\n   <td>সাধারণ বিজ্ঞান</td>\r\n   <td>\r\n   <p>১২৭</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১১</p>\r\n   </td>\r\n   <td>কম্পিউটার শিক্ষা</td>\r\n   <td>\r\n   <p>১৩১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১২</p>\r\n   </td>\r\n   <td>কৃষি শিক্ষা</td>\r\n   <td>\r\n   <p>১৩৪</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৩</p>\r\n   </td>\r\n   <td>পদার্থ বিজ্ঞান</td>\r\n   <td>\r\n   <p>১৩৬</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৪</p>\r\n   </td>\r\n   <td>রসায়ন</td>\r\n   <td>\r\n   <p>১৩৭</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৫</p>\r\n   </td>\r\n   <td>জীব বিজ্ঞান</td>\r\n   <td>\r\n   <p>১৩৮</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৬</p>\r\n   </td>\r\n   <td>ইতিহাস</td>\r\n   <td>\r\n   <p>১৩৯</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৭</p>\r\n   </td>\r\n   <td>পৌরনীতি</td>\r\n   <td>\r\n   <p>১৪০</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৮</p>\r\n   </td>\r\n   <td>অর্থনীতি</td>\r\n   <td>\r\n   <p>১৪১</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>১৯</p>\r\n   </td>\r\n   <td>ব্যবসায় পরিচিতি</td>\r\n   <td>\r\n   <p>১৪২</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>২০</p>\r\n   </td>\r\n   <td>ব্যবসায় উদ্যোগ</td>\r\n   <td>\r\n   <p>১৪৩</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>২১</p>\r\n   </td>\r\n   <td>বাণিজ্যিক ভূগোল</td>\r\n   <td>\r\n   <p>১৪৪</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>২২</p>\r\n   </td>\r\n   <td>সামাজিক বিজ্ঞান</td>\r\n   <td>\r\n   <p>১৪৫</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <p>২৩</p>\r\n   </td>\r\n   <td>হিসাববিজ্ঞান</td>\r\n   <td>\r\n   <p>১৪৬</p>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '2015-09-08', 1),
(36, 'পরিষ্কার-পরিচ্ছন্নতা', 'Cleanliness', 0, '<p [removed]="text-align:justify"> </p>\n\n<p dir="LTR" [removed]="text-align:justify"> </p>\n\n<p dir="LTR" [removed]="text-align:justify"> </p>\n\n<p dir="LTR" [removed]="text-align:justify"> </p>\n\n<p dir="LTR" [removed]>বন্ধুরা, তোমরা যদি পবিত্র কুরআনের শিক্ষার দিকে দৃষ্টি দাও তাহলে দেখতে পাবে যে, ইসলামী সংস্কৃতিতে বাহ্যিক পরিষ্কার পরিচ্ছন্নতা ও পরিপাটি অবস্থা বা বাহ্যিক সৌন্দর্যের ওপর গুরুত্ব দেয়ার পাশাপাশি আত্মিক পরিচ্ছন্নতা এবং আত্মিক শুভ্রতা ও সৌন্দর্যের ওপরও ব্যাপক গুরুত্ব দেয়া হয়েছে।</p>\n', '2015-10-08', 1),
(37, 'শরীরচর্চা', 'Athletics', 0, '<p>নিয়োগপ্রাপ্ত শরীর চর্চা শিক্ষক আছেন। প্রতিদিন সকাল ৯.৩০ হতে ১০.০০ টা পর্যন্ত শরীর চর্চা ক্লাশ অনুষ্ঠিত হয়। এছাড়াও ছুটির পর বিভিন্ন খেলাধুলার ব্যবস্থা রয়েছে। </p>\r\n\r\n<p> </p>\r\n', '2015-01-09', 1),
(38, 'স্যানিটেশন সংক্রান্ত তথ্য', 'sanitation-information', 0, '<p>শিগ্রই আসিতেছে ...   </p>\r\n', '2015-10-08', 1),
(40, 'যানবাহন', 'transport', 0, '<p>শিগ্রই আসিতেছে ...   </p>\r\n', '2015-10-08', 1),
(41, 'বিভিন্ন পরীক্ষার পরিসংখ্যান', 'exam-statistics', 0, '<table class="dataTable table table-bordered table-striped">\r\n <tbody>\r\n  <tr>\r\n   <td><p>সন</p></td>\r\n   <td><p>মোট পরীক্ষার্থী</p></td>\r\n   <td><p>মোট উত্তীর্ণ</p></td>\r\n   <td><p>পাশের হার</p></td>\r\n   <td><p>A+</p></td>\r\n   <td><p>A</p></td>\r\n   <td><p>A-</p></td>\r\n  </tr>\r\n  <tr>\r\n   <td><p>২০১৫</p></td>\r\n   <td>২১৫</td>\r\n   <td>২১৫</td>\r\n   <td><p>৯৩%</p></td>\r\n   <td>১৫</td>\r\n   <td>২৫</td>\r\n   <td>২৫</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '2015-09-08', 1),
(45, 'লক্ষ ও উদ্দেশ্য', 'ourgoal', 0, '<p>শিগ্রই আসিতেছে ...   </p>\r\n', '2015-10-08', 1),
(49, 'প্রতিষ্ঠাতার ইতিহাস', 'founder-history', 0, '<p><img alt="" class="leftimg" src="http://www.pakutiacollege.edu.bd/uploads/slides/rsz_1koala.jpg" /></p>\r\n\r\n<div>\r\n<p><strong>শীঘ্রই লেখা হচ্ছে...... নিচের লেখাগুলো ডেমো হিসেবে দেওয়া ছিল। </strong></p>\r\n\r\n<p>একবিংশ শতাব্দীর সূচনালগ্নে জ্ঞান-বিজ্ঞানের এই চলমান স্রোত ধারায় উন্নত জাতি হিসেবে বিশ্ব আসনে সমাসীন হবার প্রধান অবলম্বন হল সু-শিÿÿত মানব সম্পদ। </p>\r\n\r\n<p>এতকিছুর পরেআবার ফিরে আসতে থাকে অতীতের সেই দিনগুলি।১৯৯৫-৯৬শিক্ষাবর্ষ হতে বাংলাদেশ কারিগরি শিক্ষা বোর্ডে অধীনে ব্যবসায় ব্যবস্থাপনা শাখা চালু হয়।শাখাটি চালুর পর হতে ভালো ফলাফল করে যাচ্ছে। বাংলাদেশ কম্পিউটার কাউন্সিল কর্তৃক প্রতিষ্ঠিত একটি আধুনিক কম্পিউটার ল্যাব রয়েছে যেখান থেকে বাংলাদেশ সরকারের ডিজিটাল বাংলাদেশ বাসত্মবায়নের জন্য ছাত্রছাত্রীদের প্রশিক্ষণের ব্যবস্থা আছে এবং প্রশিক্ষণের পর কলেজ হতে সনদপত্র দেওয়া হয়। বর্তমান অধ্যক্ষ মহোদয় দায়িত্ব গ্রহণের পর সকলের সাহায্য সহযোগিতায় শিক্ষার সেই পরিবেশ ফিরে এনেছেন, যা ছিল সকলের কাম্য। বর্তমানে কলেজে সুষ্ঠু পরিবেশ বিরাজ করছে, তার প্রমাণ সরূপ বলা যায় যে, কলেজের ফলাফল, আর্থিক অবস্থা, শিক্ষদের আন্তরিকতা, শৃঙ্খলা, নিয়োমিত পাঠদান, সকল পরীক্ষা সময়মত শেষ করা সেই সাথে সেগুলোর মূল্যায়ন, এবং সর্বোপরি এখানে একটি সুন্দর ও মনোরম পরিবেশে একটিগ্রন্থাগার রয়েছে যেটি পূর্বে অযত্ন ও অবহেলায় পরিত্যক্ত হিসাবে গণ্য করা হত সেটি এখন শুধু ব্যবহারযোগ্যই নয় আধুনিক প্রযুক্তির সমন্বয় ও বটে।</p>\r\n</div>\r\n', '2015-06-09', 1),
(50, 'পরিচালনা পর্ষদ', 'Governing Body', 0, '<p><strong>cvKzwUqv cvewjK ¯‹zj GÛ K‡jR</strong></p>\r\n\r\n<p>¯’vwcZ t 1952Bs (¯‹zj) 1998Bs (K‡jR)</p>\r\n\r\n<p>cwiPvjbv cwil`</p>\r\n\r\n<p>Kvh©Kvj t 14-06-2014- 13-06-2016Bs ch©šÍ|</p>\r\n\r\n<p> </p>\r\n\r\n<table align="left" border="1" cellpadding="0" cellspacing="0">\r\n <tbody>\r\n  <tr>\r\n   <td [removed]="width:180px">\r\n   <p><strong>bvg</strong></p>\r\n   </td>\r\n   <td [removed]="width:48px">\r\n   <p>1|</p>\r\n   </td>\r\n   <td [removed]="width:192px">\r\n   <p>mfvcwZ</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td [removed]="width:180px">\r\n   <p>Rbve KvRx AvIi½‡Re</p>\r\n   </td>\r\n   <td [removed]="width:48px">\r\n   <p>3|</p>\r\n   </td>\r\n   <td [removed]="width:192px">\r\n   <p>AwffveK m`m¨ (K‡jR kvLv)</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td [removed]="width:180px">\r\n   <p>Rbve Avãyj ev‡m`</p>\r\n   </td>\r\n   <td [removed]="width:48px">\r\n   <p>5|</p>\r\n   </td>\r\n   <td [removed]="width:192px">\r\n   <p>AwffveK m`m¨ (¯‹zj kvLv)</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td [removed]="width:180px">\r\n   <p>Rbve ev`j PµeZ©x</p>\r\n   </td>\r\n   <td [removed]="width:48px">\r\n   <p>7|</p>\r\n   </td>\r\n   <td [removed]="width:192px">\r\n   <p>wkÿK cÖwZwbwa (K‡jR kvLv)</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td [removed]="width:180px">\r\n   <p>Rbve চায়না ইয়াসমিন</p>\r\n   </td>\r\n   <td [removed]="width:48px">\r\n   <p>9|</p>\r\n   </td>\r\n   <td [removed]="width:192px">\r\n   <p>wkÿK cÖwZwbwa (¯‹zj kvLv)</p>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td [removed]="width:180px">\r\n   <p>Rbve nviæb Ai iwk` Lvb</p>\r\n   </td>\r\n   <td [removed]="width:48px">\r\n   <p>11|</p>\r\n   </td>\r\n   <td [removed]="width:192px">\r\n   <p>m`m¨ mwPe</p>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n', '2015-06-09', 1),
(51, NULL, NULL, NULL, NULL, '1448185297', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `u_basicinfos`
--
ALTER TABLE `u_basicinfos`
  ADD CONSTRAINT `u_basicinfos_ibfk_1` FOREIGN KEY (`CountryId`) REFERENCES `country` (`CountryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `u_basicinfos_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `u_businesses`
--
ALTER TABLE `u_businesses`
  ADD CONSTRAINT `u_businesses_ibfk_1` FOREIGN KEY (`CateogryId`) REFERENCES `categories` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `u_businesses_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `u_educationhistory`
--
ALTER TABLE `u_educationhistory`
  ADD CONSTRAINT `u_educationhistory_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `u_images`
--
ALTER TABLE `u_images`
  ADD CONSTRAINT `FK_u_images_users` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `u_workhistory`
--
ALTER TABLE `u_workhistory`
  ADD CONSTRAINT `u_workhistory_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
