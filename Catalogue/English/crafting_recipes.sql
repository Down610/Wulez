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
  `secret` enum('0','1') NOT NULL DEFAULT '1',
  `limited` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `crafting_recipes` (`id`, `product_name`, `achievement`, `reward`, `remaining`, `enabled`, `secret`, `limited`) VALUES
(1, 'hween_c18_toy1new', '', 4310016, 0, '1', '0', '0'),
(2, 'hween_c18_toy2new', '', 4310006, 0, '1', '0', '0');

ALTER TABLE `crafting_recipes`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `crafting_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;