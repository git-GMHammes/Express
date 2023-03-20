-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para express
DROP DATABASE IF EXISTS `express`;
CREATE DATABASE IF NOT EXISTS `express` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `express`;

-- Copiando estrutura para tabela express.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela express.users: ~7 rows (aproximadamente)
INSERT IGNORE INTO `users` (`id`, `name`, `email`, `Password`, `createdAt`, `updatedAt`) VALUES
	(1, 'sdfsdfsdf', 'gustavo@habilidade.com', 'sdfskjfsdf', '2023-03-19', '2023-03-19'),
	(2, 'ddddddddd', 'gustavo@habilidade.com', 'sdfskjfsdf', '2023-03-19', '2023-03-19'),
	(3, 'ddddddddd', 'gustavo@habilidade.com', 'sdfskjfsdf', '2023-03-19', '2023-03-19'),
	(4, 'cccccccccccccc', 'gustavo@habilidade.com', 'sdfskjfsdf', '2023-03-19', '2023-03-19'),
	(5, 'ddddddddddd', 'gustavo@habilidade.com', 'sdfskjfsdf', '2023-03-19', '2023-03-19'),
	(6, 'dddddddddd', 'gustavo@habilidade.com', 'sdfskjfsdf', '2023-03-19', '2023-03-19'),
	(7, 'sssssss', 'gustavo@habilidade.com', 'sdfskjfsdf', '2023-03-19', '2023-03-19'),
	(8, 'sdfsdf', 'sdfsdf@dfgdfg.com', 'sdfsdfsdf', '2023-03-19', '2023-03-19'),
	(9, 'bbbbbbbbbbbbb', 'sdfsdf@dfgdfg.com', 'sdfsdfsdf', '2023-03-19', '2023-03-19'),
	(10, 'bbbbbbbbbbbbb', 'sdfsdf@dfgdfg.com', 'sdfsdfsdf', '2023-03-19', '2023-03-19');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
