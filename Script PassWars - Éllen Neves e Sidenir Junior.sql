-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema PASSWARS
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `PASSWARS` ;

-- -----------------------------------------------------
-- Schema PASSWARS
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PASSWARS` DEFAULT CHARACTER SET utf8 ;
USE `PASSWARS` ;

-- -----------------------------------------------------
-- Table `Empregado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Empregado` (
  `IdMatrEmpr` INT NOT NULL,
  `NomeEmpr` VARCHAR(50) NOT NULL,
  `ValorSalarEmpr` DECIMAL(10,2) NOT NULL,
  `DatAdmsEmpr` DATE NOT NULL,
  PRIMARY KEY (`IdMatrEmpr`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Dependente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Dependente` (
  `IdDepend` INT NOT NULL,
  `NomeDepend` VARCHAR(50) NOT NULL,
  `DataNascDepend` DATE NOT NULL,
  `IndSexoDepend` CHAR(1) NOT NULL,
  `Empregado_IdMatrEmpr` INT NOT NULL,
  PRIMARY KEY (`IdDepend`),
  INDEX `fk_Dependente_Empregado_idx` (`Empregado_IdMatrEmpr` ASC),
  CONSTRAINT `fk_Dependente_Empregado`
    FOREIGN KEY (`Empregado_IdMatrEmpr`)
    REFERENCES `Empregado` (`IdMatrEmpr`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Matrícula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Matrícula` (
  `IdMatrícula` INT NULL,
  `DtMatrícula` DATE NULL,
  `Ausências` INT NULL,
  PRIMARY KEY (`IdMatrícula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Turma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Turma` (
  `IdTurma` INT NOT NULL,
  `HorAula` DATETIME NOT NULL,
  `QtdMinDurAula` TIME NOT NULL,
  `DtInicio` DATE NOT NULL,
  `DtFinal` DATE NOT NULL,
  `TipoAtiv` VARCHAR(50) NOT NULL,
  `Matrícula_IdMatrícula` INT NOT NULL,
  PRIMARY KEY (`IdTurma`, `Matrícula_IdMatrícula`),
  INDEX `fk_Turma_Matrícula1_idx` (`Matrícula_IdMatrícula` ASC),
  CONSTRAINT `fk_Turma_Matrícula1`
    FOREIGN KEY (`Matrícula_IdMatrícula`)
    REFERENCES `Matrícula` (`IdMatrícula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Participantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Participantes` (
  `IdNome` VARCHAR(50) NOT NULL,
  `Endereço` VARCHAR(50) NOT NULL,
  `Telefone` VARCHAR(50) NOT NULL,
  `DtNasc` DATE NOT NULL,
  `RgInstr` VARCHAR(50) NULL,
  `TítuloInstr` VARCHAR(50) NULL,
  `ValMensAlu` INT NULL,
  `PesoAlu` INT NULL,
  `Matrícula_IdMatrícula` INT NOT NULL,
  PRIMARY KEY (`IdNome`),
  INDEX `fk_Participantes_Matrícula1_idx` (`Matrícula_IdMatrícula` ASC),
  CONSTRAINT `fk_Participantes_Matrícula1`
    FOREIGN KEY (`Matrícula_IdMatrícula`)
    REFERENCES `Matrícula` (`IdMatrícula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Cliente` (
  `Código` INT NOT NULL,
  `RG` VARCHAR(50) NOT NULL,
  `CPF` VARCHAR(50) NOT NULL,
  `Nome` VARCHAR(50) NOT NULL,
  `Endereço` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Código`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pedido` (
  `idNotaFiscal` INT NOT NULL,
  `PreçoTotal` FLOAT NOT NULL,
  `DataPedido` DATE NOT NULL,
  `QntVendida` INT NULL,
  `Cliente_Código` INT NOT NULL,
  PRIMARY KEY (`idNotaFiscal`),
  INDEX `fk_Pedido_Cliente1_idx` (`Cliente_Código` ASC),
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_Código`)
    REFERENCES `Cliente` (`Código`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Mercadoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Mercadoria` (
  `Código` INT NOT NULL,
  `Descrição` VARCHAR(50) NOT NULL,
  `PreçoUnid` FLOAT NOT NULL,
  `QtdVendida` INT NOT NULL,
  `QtdEstoque` INT NOT NULL,
  `MinEstoque` INT NOT NULL,
  `Pedido_idNotaFiscal` INT NOT NULL,
  PRIMARY KEY (`Código`),
  INDEX `fk_Mercadoria_Pedido1_idx` (`Pedido_idNotaFiscal` ASC),
  CONSTRAINT `fk_Mercadoria_Pedido1`
    FOREIGN KEY (`Pedido_idNotaFiscal`)
    REFERENCES `Pedido` (`idNotaFiscal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Fornecedores` (
  `Código` VARCHAR(50) NOT NULL,
  `Nome` VARCHAR(50) NOT NULL,
  `Endereço` VARCHAR(50) NOT NULL,
  `Telefone` VARCHAR(50) NOT NULL,
  `CGC` VARCHAR(50) NULL,
  `MeioTransp` VARCHAR(50) NULL,
  `País` VARCHAR(50) NULL,
  `Moeda` VARCHAR(50) NULL,
  `Mercadoria_Código` INT NOT NULL,
  PRIMARY KEY (`Código`),
  INDEX `fk_Fornecedores_Mercadoria1_idx` (`Mercadoria_Código` ASC),
  CONSTRAINT `fk_Fornecedores_Mercadoria1`
    FOREIGN KEY (`Mercadoria_Código`)
    REFERENCES `Mercadoria` (`Código`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RespPergSeg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RespPergSeg` (
  `IdRespPergSeg` INT NOT NULL,
  `DscRespPergSeg` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdRespPergSeg`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PerguntaSeg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PerguntaSeg` (
  `IdPergSeg` INT NOT NULL,
  `DscPergSeg` VARCHAR(45) NOT NULL,
  `IdRespPergSeg` INT NOT NULL,
  PRIMARY KEY (`IdPergSeg`),
  INDEX `fk_PerguntaSeg_RespPergSeg1_idx` (`IdRespPergSeg` ASC),
  CONSTRAINT `fk_PerguntaSeg_RespPergSeg1`
    FOREIGN KEY (`IdRespPergSeg`)
    REFERENCES `RespPergSeg` (`IdRespPergSeg`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Utilizador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Utilizador` (
  `IdUtilizador` INT NOT NULL,
  `NomUser` VARCHAR(50) NOT NULL,
  `NomSobreUser` VARCHAR(50) NOT NULL,
  `NomSocialUser` VARCHAR(50) NULL,
  `DatNascUser` DATE NOT NULL,
  `DscLoginUser` VARCHAR(50) NOT NULL,
  `DscEmailUser` VARCHAR(50) NOT NULL,
  `DscSenhaUser` VARCHAR(50) NOT NULL,
  `NumTelUser` INT NULL,
  `IdPergSeg` INT NOT NULL,
  PRIMARY KEY (`IdUtilizador`),
  INDEX `fk_Utilizador_PerguntaSeg1_idx` (`IdPergSeg` ASC),
  CONSTRAINT `fk_Utilizador_PerguntaSeg1`
    FOREIGN KEY (`IdPergSeg`)
    REFERENCES `PerguntaSeg` (`IdPergSeg`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Software`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Software` (
  `IdSoft` INT NOT NULL,
  `NomSoft` VARCHAR(45) NOT NULL,
  `NomSoftUsuário` VARCHAR(45) NOT NULL,
  `DscSoftSenha` VARCHAR(50) NOT NULL,
  `IdUtilizador` INT NOT NULL,
  PRIMARY KEY (`IdSoft`),
  INDEX `fk_Software_Utilizador1_idx` (`IdUtilizador` ASC),
  CONSTRAINT `fk_Software_Utilizador1`
    FOREIGN KEY (`IdUtilizador`)
    REFERENCES `Utilizador` (`IdUtilizador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `RespPergSeg`
-- -----------------------------------------------------
START TRANSACTION;
USE `PASSWARS`;
INSERT INTO `RespPergSeg` (`IdRespPergSeg`, `DscRespPergSeg`) VALUES (1, 'JC City');
INSERT INTO `RespPergSeg` (`IdRespPergSeg`, `DscRespPergSeg`) VALUES (2, 'Las Vegas');
INSERT INTO `RespPergSeg` (`IdRespPergSeg`, `DscRespPergSeg`) VALUES (3, 'Mel');
INSERT INTO `RespPergSeg` (`IdRespPergSeg`, `DscRespPergSeg`) VALUES (4, 'Como Treinar Seu Dragão 2');
INSERT INTO `RespPergSeg` (`IdRespPergSeg`, `DscRespPergSeg`) VALUES (5, 'Silva');
INSERT INTO `RespPergSeg` (`IdRespPergSeg`, `DscRespPergSeg`) VALUES (6, 'Agenda');
INSERT INTO `RespPergSeg` (`IdRespPergSeg`, `DscRespPergSeg`) VALUES (7, 'Isabella');
INSERT INTO `RespPergSeg` (`IdRespPergSeg`, `DscRespPergSeg`) VALUES (8, 'Camburi');

COMMIT;


-- -----------------------------------------------------
-- Data for table `PerguntaSeg`
-- -----------------------------------------------------
START TRANSACTION;
USE `PASSWARS`;
INSERT INTO `PerguntaSeg` (`IdPergSeg`, `DscPergSeg`, `IdRespPergSeg`) VALUES (01, 'Qual a cidade onde você nasceu?', 1);
INSERT INTO `PerguntaSeg` (`IdPergSeg`, `DscPergSeg`, `IdRespPergSeg`) VALUES (02, 'Qual o nome do seu primeiro animal de estimação?', 3);
INSERT INTO `PerguntaSeg` (`IdPergSeg`, `DscPergSeg`, `IdRespPergSeg`) VALUES (03, 'Qual o nome do seu filme favorito?', 4);
INSERT INTO `PerguntaSeg` (`IdPergSeg`, `DscPergSeg`, `IdRespPergSeg`) VALUES (04, 'Qual o nome de solteira da sua mãe?', 5);
INSERT INTO `PerguntaSeg` (`IdPergSeg`, `DscPergSeg`, `IdRespPergSeg`) VALUES (05, 'Qual o local da sua primeira viagem?', 2);
INSERT INTO `PerguntaSeg` (`IdPergSeg`, `DscPergSeg`, `IdRespPergSeg`) VALUES (06, 'Qual o seu apelido de infância?', 6);
INSERT INTO `PerguntaSeg` (`IdPergSeg`, `DscPergSeg`, `IdRespPergSeg`) VALUES (07, 'Qual o nome do seu melhor amigo de infância?', 7);
INSERT INTO `PerguntaSeg` (`IdPergSeg`, `DscPergSeg`, `IdRespPergSeg`) VALUES (08, 'Qual o nome da primeira praia que você visitou?', 8);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Utilizador`
-- -----------------------------------------------------
START TRANSACTION;
USE `PASSWARS`;
INSERT INTO `Utilizador` (`IdUtilizador`, `NomUser`, `NomSobreUser`, `NomSocialUser`, `DatNascUser`, `DscLoginUser`, `DscEmailUser`, `DscSenhaUser`, `NumTelUser`, `IdPergSeg`) VALUES (01, 'Amanda', 'Nudes', '', '13/07/2001', 'Ryka', 'eraumavez@generico.com', 'VemHexa66', 4002-8922, 01);
INSERT INTO `Utilizador` (`IdUtilizador`, `NomUser`, `NomSobreUser`, `NomSocialUser`, `DatNascUser`, `DscLoginUser`, `DscEmailUser`, `DscSenhaUser`, `NumTelUser`, `IdPergSeg`) VALUES (02, 'Jeffersom', 'Machado', 'Isadora Pinto', '06/06/2006', 'isinhaalinda', 'isadorapinto@generico.com', '3Ss4C0k4&f4N7A', NULL, 05);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Software`
-- -----------------------------------------------------
START TRANSACTION;
USE `PASSWARS`;
INSERT INTO `Software` (`IdSoft`, `NomSoft`, `NomSoftUsuário`, `DscSoftSenha`, `IdUtilizador`) VALUES (1, 'Consciencia', DEFAULT, 'Batatinha', 01);
INSERT INTO `Software` (`IdSoft`, `NomSoft`, `NomSoftUsuário`, `DscSoftSenha`, `IdUtilizador`) VALUES (2, 'VemHexa', DEFAULT, 'OHexaVem', 02);

COMMIT;

