CREATE DATABASE  IF NOT EXISTS `scmb_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `scmb_schema`;
-- MySQL dump 10.13  Distrib 5.6.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: scmb_schema
-- ------------------------------------------------------
-- Server version	5.6.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bicicleta`
--

DROP TABLE IF EXISTS `bicicleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bicicleta` (
  `id_bicicleta` int(11) NOT NULL AUTO_INCREMENT,
  `cor_bicicleta` varchar(45) NOT NULL,
  `marca_bicicleta` varchar(45) NOT NULL,
  `modelo_bicicleta` varchar(45) NOT NULL,
  `aro_bicicleta` varchar(45) NOT NULL,
  `observacao_bicicleta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_bicicleta`),
  UNIQUE KEY `id_bicicleta_UNIQUE` (`id_bicicleta`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicicleta`
--

LOCK TABLES `bicicleta` WRITE;
/*!40000 ALTER TABLE `bicicleta` DISABLE KEYS */;
INSERT INTO `bicicleta` VALUES (1,'Vermelha','Shimano','GTX-900','26',NULL),(2,'Verde','Calloi','Cross','24',NULL),(3,'Laranja','Gallo','X-2000','26',NULL),(4,'Branca','GPS','Fulls','21',NULL),(5,'Verde','Fox','900-xb','22',NULL),(6,'Verde Lima','Calloi','300-XD','22',NULL);
/*!40000 ALTER TABLE `bicicleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(100) NOT NULL,
  `sexo_cliente` varchar(45) NOT NULL,
  `data_nasc_cliente` varchar(45) NOT NULL,
  `rg_cliente` varchar(45) NOT NULL,
  `cpf_cliente` varchar(45) NOT NULL,
  `telefone_cliente` varchar(14) NOT NULL,
  `celular_cliente` varchar(45) DEFAULT NULL,
  `email_cliente` varchar(45) NOT NULL,
  `rua_cliente` varchar(45) NOT NULL,
  `numero_cliente` varchar(10) NOT NULL,
  `bairro_cliente` varchar(45) NOT NULL,
  `cidade_cliente` varchar(45) NOT NULL,
  `cep_cliente` varchar(45) DEFAULT NULL,
  `complemento_cliente` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente_UNIQUE` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Nayara Suelen Fernandes Lopes','M','1994-10-26','349088019','43272888888','1125565057','11983300855','nayara.lopes2007@gmail.com','Rua Tejupa','240','vila Babilonia','sap paulo','0845020','Casa 07'),(2,'Renan Bunda','M','1991-12-26','111111111111','11111111111111','33333333333333','444444444444444','renan.renan@mamae.com','sao bento','123','Jabaquara','sao paulo','0000000000',''),(4,'Julia santos','M','2009-11-25','888888888888','1212121212','35353535353535','454545454545454','julia.julia@hotmail.com','rua maria flor','369','centro','sao paulo','8596321458',''),(7,'Aldira Maria Fernandes Silva','M','1979-08-05','35.584.963-9','365.726.999-25','(11) 2556-5057','(11) 98632-6596','aldira.maria@gmail.com','Flores maria','236','Patriarca','Sao Paulo','08963-250',''),(8,'Marcos fernandes','','2007-07-17','966326215151','99999999999999','63636365','956523658','marcos.fernandes@bol.com','Rosas de ouro','55','Paulista','Sao Paulo','62659485','casa 03');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_bicicletas`
--

DROP TABLE IF EXISTS `clientes_bicicletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes_bicicletas` (
  `id_clientes_bicicletas` int(11) NOT NULL AUTO_INCREMENT,
  `id_clientes` int(11) NOT NULL,
  `id_bicicleta` int(11) NOT NULL,
  PRIMARY KEY (`id_clientes_bicicletas`),
  UNIQUE KEY `id_clientes_bicicletas_UNIQUE` (`id_clientes_bicicletas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_bicicletas`
--

LOCK TABLES `clientes_bicicletas` WRITE;
/*!40000 ALTER TABLE `clientes_bicicletas` DISABLE KEYS */;
INSERT INTO `clientes_bicicletas` VALUES (1,1,3),(2,1,4),(3,2,5),(4,3,2),(5,4,3),(6,5,3),(7,6,2),(8,7,6),(9,8,6),(10,8,3);
/*!40000 ALTER TABLE `clientes_bicicletas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nome_empresa` varchar(45) NOT NULL,
  `cnpj_empresa` varchar(45) NOT NULL,
  `rua_empresa` varchar(45) NOT NULL,
  `numero_empresa` varchar(13) NOT NULL,
  `complemento_empresa` varchar(45) NOT NULL,
  `cep_empresa` varchar(45) NOT NULL,
  `bairro_empresa` varchar(45) NOT NULL,
  `cidade_empresa` varchar(45) NOT NULL,
  `telefone1_empresa` varchar(45) NOT NULL,
  `telefone2_empresa` varchar(45) DEFAULT NULL,
  `email_empresa` varchar(45) DEFAULT NULL,
  `observacao_empresa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`),
  UNIQUE KEY `id_empresa_UNIQUE` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Fundac','0000000000','São bento','85','ap 14','05759220','Centro','Sao Paulo','1125634587','1139658524','www.fundac.com.br',''),(2,'Rizzo','9999999999','Cantareira','111','loja02','3265983265','centro','sao paulo','5555555555','6666666666','www.rizzo.com.br',''),(3,'Fma','6302365215','frei oestes girard','127','','08465040','itaquera','sao paulo','32659852','32659574','',''),(4,'Anexos','5555555555','Av.Brasil','5555','14 º andar','326598523','Jabaquara','Sao Paulo','3265985625','3232626232','anexos.100.com.br',''),(5,'H3 solution','3235656556','Rua vovo','2365','','3254846264','Santa Cruz','Sao Paulo','3265659561','1548946261','www.h3.com.br','');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque` (
  `id_estoque` int(11) NOT NULL AUTO_INCREMENT,
  `nome_estoque` varchar(45) NOT NULL,
  `unidade_estoque` varchar(45) NOT NULL,
  `marca_estoque` varchar(45) NOT NULL,
  `valor_estoque` double NOT NULL,
  `id_referencia` int(11) NOT NULL,
  PRIMARY KEY (`id_estoque`),
  UNIQUE KEY `id_estoque_UNIQUE` (`id_estoque`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,'Slim','1','Pirelli',120,1),(2,'Cross','17','Pirelli',80,1),(3,'Sram','1','Hollow',55,2),(4,'Elos','10','Shimano',90.5,2),(5,'Brake','30','Gts',72.72,3),(6,'Disco','20','Shimano',61.92,3),(7,'Dianteiro','10','Shimano',54.11,4),(8,'Traseiro','10','Shimano',51.1,4),(9,'Racing','30','Mtb',141.1,5),(10,'Suspen&ccedil;&atilde;o','30','Gts',189.5,5),(11,'Elite','20','Mtb',46.9,6),(12,'Tranz-x','10','Shimano',54.5,6),(13,'Pvc','40','Gallo',9.95,7),(14,'Gel','20','Velo',27.42,7),(15,'Regulagem','10','Kalloy',44.95,8),(16,'Carbono','10','Rancing',59.7,8),(17,'Dobr&aacute;vel','10','Vp',62.73,9),(18,'Export-Sueco','20','RoyalCiclo',13.8,9),(19,'Aero','50','Vzan',195.5,10),(20,'Vmax','20','Vzan',225.95,10),(21,'Vazado','15','Mtb - Tito',49.9,11),(22,'Plush - Saddle','10','Velo',74.04,11),(23,'Cs-5700','30','Shimano',50.66,12),(24,'Cs-hg50-9','60','Shimano',47.28,12),(25,'Dianteiro','25','Shimano',42.98,13),(26,'Traseiro','25','Shimano',56.24,13),(27,'Acera','30','Shimano',49.24,14),(28,'Alivio','30','Shimano',41.23,14),(29,'DT','10','Navi',35,6);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fornecedor` varchar(100) NOT NULL,
  `rg_fornecedor` varchar(13) NOT NULL,
  `cpf_fornecedor` varchar(13) NOT NULL,
  `telefone_fornecedor` varchar(20) NOT NULL,
  `celular_fornecedor` varchar(40) NOT NULL,
  `email_fornecedor` varchar(45) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`),
  UNIQUE KEY `id_fornecedor_UNIQUE` (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Maria Lopes','4561637418','3188723482','1158412909','1195211824','mary27lopes@gmail.com',1),(2,'Ingrid Bispo Silva','6666666666','8888888888','5555555555','6666666666','ingrid.ingrid@hotmail.com',2),(3,'Marcelo Adno Fernandes Lopes','1023526529','3333333333','6666666666','9999999999','marcelo.ad@hotmail.com',3),(4,'Wagner silva','9565853265','123654123','3626525454','3265612121','wagner.silva@gmail.com',4),(5,'Janaina silva','2326565364','5415412621','1216464163','2154612632','jana.h3.com',5);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerar_pdf`
--

DROP TABLE IF EXISTS `gerar_pdf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerar_pdf` (
  `id_gerar_pdf` int(11) NOT NULL AUTO_INCREMENT,
  `texto` longtext NOT NULL,
  PRIMARY KEY (`id_gerar_pdf`),
  UNIQUE KEY `id_gerar_pdf_UNIQUE` (`id_gerar_pdf`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerar_pdf`
--

LOCK TABLES `gerar_pdf` WRITE;
/*!40000 ALTER TABLE `gerar_pdf` DISABLE KEYS */;
INSERT INTO `gerar_pdf` VALUES (1,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>GTX-900</td>\r\n															<th>Marca:</th><td>Shimano</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Vermelha</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Completa</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>2016-05-19</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>2016-05-31</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>3006.45</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(2,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>GTX-900</td>\r\n															<th>Marca:</th><td>Shimano</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Vermelha</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Preventiva</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>2016-05-19</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>31/05/2016</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>4415.72</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(3,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>GTX-900</td>\r\n															<th>Marca:</th><td>Shimano</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Vermelha</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o de Suspens&atilde;o</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>20/05/2016</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>30/05/2016</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>8007.44</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(4,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Renan Bunda</td>\r\n													<th>Telefone:</th><td>33333333333333</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>sao bento</td>\r\n													<th>E-mail:</th><td>renan.renan@mamae.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>900-xb</td>\r\n															<th>Marca:</th><td>Fox</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Verde</td>\r\n															<th>Aro:</th><td>22</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Preventiva</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>//</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>//</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>1368.22</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(5,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua Tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>X-2000</td>\r\n															<th>Marca:</th><td>Gallo</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Laranja</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Completa</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>//</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>//</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>1902.2</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(6,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua Tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>Fulls</td>\r\n															<th>Marca:</th><td>GPS</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Branca</td>\r\n															<th>Aro:</th><td>21</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Completa</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>//</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>//</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>2095</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(7,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua Tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>X-2000</td>\r\n															<th>Marca:</th><td>Gallo</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Laranja</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Preventiva</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>17/05/2016</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>25/05/2016</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>495</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(8,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua Tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>X-2000</td>\r\n															<th>Marca:</th><td>Gallo</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Laranja</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Completa</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>//</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>//</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>240</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(9,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua Tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>X-2000</td>\r\n															<th>Marca:</th><td>Gallo</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Laranja</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Preventiva</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>25/05/2016</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>17/05/2016</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>55</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(10,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua Tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>X-2000</td>\r\n															<th>Marca:</th><td>Gallo</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Laranja</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Preventiva</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>24/05/2016</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>25/05/2016</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>55</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(11,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua Tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>X-2000</td>\r\n															<th>Marca:</th><td>Gallo</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Laranja</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Completa</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>//</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>//</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>2040</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>'),(12,'<!DOCTYPE html>\r\n						<html lang=\"pt-br\">\r\n							<head>\r\n								<meta http-equiv = \"content-type\" content =\"text/html\";	charset= utf-8/>\r\n\r\n\r\n							</head>\r\n								<body>\r\n									<div style=\"width:900px; background-color:white; margin:-20px auto 0px auto; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); padding:10px;\">\r\n										<img style=\"margin-top:10px; \" src=\"../images/logo.png\">\r\n									<div  style=\"margin-left:220px;color:blue;margin-top:-120px;\">\r\n										<h1>Sistema SCMB</h1>\r\n										<hr style=\" width:500px;margin-top:-15px; float:left; margin-left:-10px;\"/>\r\n									</div>\r\n										<h1 style=\"margin-left:300px; margin-top:-15px;\">Ordem de Servi&ccedil;o</h1>\r\n										<hr style=\"margin-top:-40px;width:720px;margin-left:-10px;\"/>\r\n										<h2 style=\"margin-top:-2px;\">Dados Cliente</h2>\r\n											<table id=\"tabela\" style=\"width:80%\" >\r\n												<tr>\r\n													<th style=\"margin-right:20px;\">Cliente:</th><td>Nayara Suelen Fernandes Lopes</td>\r\n													<th>Telefone:</th><td>1125565057</td>\r\n												</tr><br/><br/>\r\n												<tr>\r\n													<th>Endere&ccedil;o:</th>\r\n													<td>Rua Tejupa</td>\r\n													<th>E-mail:</th><td>nayara.lopes2007@gmail.com</td>\r\n												</tr>\r\n												</table>\r\n													<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n												<h2 style=\"margin-top:-2px;\">Dados Bicicleta</h2>\r\n													<table style=\"width:80%\">\r\n														<tr>\r\n															<th>Modelo:</th><td>X-2000</td>\r\n															<th>Marca:</th><td>Gallo</td>\r\n														</tr><br/><br/>\r\n														<tr>\r\n															<th>Cor:</th><td>Laranja</td>\r\n															<th>Aro:</th><td>26</td>\r\n														</tr>\r\n														</table>\r\n														<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n															<h2 style=\"margin-top:-2px;\">Tipo de Servi&ccedil;o</h2>\r\n																<table style=\"width:80%\">\r\n															<tr>\r\n																<th>Tipo de Servi&ccedil;o:</th><td>Manuten&ccedil;&atilde;o Completa</td>\r\n															</table><br/>\r\n															<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n																	<h2 style=\"margin-top:-2px;\">Informa&ccedil;&otilde;es</h2>\r\n																	<table style=\"width:80%\">\r\n																		<tr>\r\n																			<th>Data de Entrada:</th><td>//</td>\r\n																			<th>Data de Sa&iacute;da:</th><td>//</td>\r\n																		</tr><br/><br/>\r\n																		<tr>\r\n																			<th>Valor Total:</th><td>240</td>\r\n																		</tr>\r\n																		</table>\r\n																			<hr style=\"margin-top:-10px;width:720px;margin-left:-10px;\"/>\r\n\r\n																		<table style=\"margin-top:80px; width: 79%;\">\r\n																			<tr>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																				<td style=\"width:10%;\"></td>\r\n																				<td style=\"width:40%;\"><hr /></td>\r\n																			</tr>\r\n																			<tr>\r\n																				<td style=\"text-align:center;\">CLIENTE</td>\r\n																				<td></td>\r\n																				<td style=\"text-align:center;\">LOJA</td>\r\n																			</tr>\r\n																		</table>\r\n\r\n\r\n													</div>\r\n					</body>\r\n					</html>');
/*!40000 ALTER TABLE `gerar_pdf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordem_de_servico`
--

DROP TABLE IF EXISTS `ordem_de_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordem_de_servico` (
  `id_ordem_de_servico` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_de_servico` int(11) NOT NULL,
  `valor_ordem_de_servico` float NOT NULL,
  `data_entrada_ordem_de_servico` varchar(45) NOT NULL,
  `data_saida_ordem_de_servico` varchar(45) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_bicicleta` int(11) NOT NULL,
  PRIMARY KEY (`id_ordem_de_servico`),
  UNIQUE KEY `idordem_de_servico_UNIQUE` (`id_ordem_de_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordem_de_servico`
--

LOCK TABLES `ordem_de_servico` WRITE;
/*!40000 ALTER TABLE `ordem_de_servico` DISABLE KEYS */;
INSERT INTO `ordem_de_servico` VALUES (1,1,3006.45,'2016-05-19','2016-05-31',1,1),(2,2,4415.72,'2016-05-19','2016-05-31',1,1),(3,3,8007.44,'2016-05-20','2016-05-30',1,1),(4,2,1368.22,'','',2,5),(5,1,1902.2,'','',1,3),(6,1,2095,'','',1,4),(7,2,495,'2016-05-17','2016-05-25',1,3),(8,1,240,'','',1,3),(9,2,55,'2016-05-25','2016-05-17',1,3),(10,2,55,'2016-05-24','2016-05-25',1,3),(11,1,2040,'','',1,3),(12,1,240,'','',1,3);
/*!40000 ALTER TABLE `ordem_de_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peca_servico`
--

DROP TABLE IF EXISTS `peca_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peca_servico` (
  `id_peca_servico` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tipos_servico` int(11) NOT NULL,
  `id_referencia` int(11) NOT NULL,
  PRIMARY KEY (`id_peca_servico`),
  UNIQUE KEY `id_peca_servico_UNIQUE` (`id_peca_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peca_servico`
--

LOCK TABLES `peca_servico` WRITE;
/*!40000 ALTER TABLE `peca_servico` DISABLE KEYS */;
INSERT INTO `peca_servico` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(8,1,5),(9,1,6),(10,1,7),(11,1,8),(12,1,9),(13,1,10),(14,1,11),(15,1,12),(16,1,13),(17,1,14),(18,2,2),(19,2,1),(20,2,4),(21,2,5),(22,2,7),(23,2,9),(24,2,11),(25,2,12),(26,2,13),(27,3,1),(28,3,5),(29,3,10),(30,3,3);
/*!40000 ALTER TABLE `peca_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencia`
--

DROP TABLE IF EXISTS `referencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencia` (
  `id_referencia` int(10) NOT NULL AUTO_INCREMENT,
  `nome_referencia` varchar(45) NOT NULL,
  PRIMARY KEY (`id_referencia`),
  UNIQUE KEY `id_referencia_UNIQUE` (`id_referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencia`
--

LOCK TABLES `referencia` WRITE;
/*!40000 ALTER TABLE `referencia` DISABLE KEYS */;
INSERT INTO `referencia` VALUES (1,'pneu'),(2,'corrente'),(3,'freio'),(4,'conduite'),(5,'garfo'),(6,'guidao'),(7,'manopla'),(8,'mesa'),(9,'pedal'),(10,'roda'),(11,'banco'),(12,'coroa'),(13,'cambio'),(14,'passador');
/*!40000 ALTER TABLE `referencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_servico`
--

DROP TABLE IF EXISTS `tipos_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_servico` (
  `id_tipos_servico` int(11) NOT NULL AUTO_INCREMENT,
  `nome_servico` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipos_servico`),
  UNIQUE KEY `id_tipos_servico_UNIQUE` (`id_tipos_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_servico`
--

LOCK TABLES `tipos_servico` WRITE;
/*!40000 ALTER TABLE `tipos_servico` DISABLE KEYS */;
INSERT INTO `tipos_servico` VALUES (1,'Manuten&ccedil;&atilde;o Completa'),(2,'Manuten&ccedil;&atilde;o Preventiva'),(3,'Manuten&ccedil;&atilde;o de Suspens&atilde;o');
/*!40000 ALTER TABLE `tipos_servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int(10) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`),
  UNIQUE KEY `idusuarios_UNIQUE` (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'nayara','123mudar');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'scmb_schema'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-30 11:29:41
