DROP TABLE IF EXISTS `crafting_recipes`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `crafting_recipes` (
  `id` int(11) NOT NULL,
  `product_name` varchar(55) NOT NULL COMMENT 'WARNING! This field must match a entry in your productdata or crafting WILL NOT WORK!',
  `achievement` varchar(500) NOT NULL,
  `reward` int(11) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('0','1') NOT NULL DEFAULT '1',
  `secret` enum('0','1') NOT NULL DEFAULT '0',
  `limited` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `crafting_recipes` (`id`, `product_name`, `achievement`, `reward`, `remaining`, `enabled`, `secret`, `limited`) VALUES
(1, 'hween_c18_toy1new', 'InfectedLab', 4310016, 0, '1', '0', '0'),
(2, 'hween_c18_toy2new', 'InfectedLab', 4310006, 0, '1', '0', '0'),
(3, 'hween_c18_toy3new', 'InfectedLab', 4310005, 0, '1', '0', '0'),
(4, 'hween_c18_toy4new', 'InfectedLab', 4310024, 0, '1', '0', '0'),
(5, 'hween_c18_toy5new', 'InfectedLab', 439991, 0, '1', '0', '0'),
(6, 'clothing_legwarmershoes', 'InfectedLab', 4310023, 0, '1', '0', '0'),
(7, 'clothing_brownglasses', 'InfectedLab', 439988, 0, '1', '0', '0'),
(8, 'clothing_shortcurlhair', 'InfectedLab', 4310042, 0, '1', '0', '0'),
(9, 'clothing_sideponytail', 'InfectedLab', 4310017, 0, '1', '0', '0'),
(10, 'clothing_vintagejacket', 'InfectedLab', 4310014, 0, '1', '0', '0');

ALTER TABLE `crafting_recipes`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `crafting_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;