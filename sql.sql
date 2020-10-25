-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema testeSuperlogica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema testeSuperlogica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `testeSuperlogica` DEFAULT CHARACTER SET utf8 ;
USE `testeSuperlogica` ;

-- -----------------------------------------------------
-- Table `testeSuperlogica`.`Marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testeSuperlogica`.`Marca` (
  `codMarca` INT NOT NULL,
  `Marca` VARCHAR(45) NULL,
  `Origem` VARCHAR(45) NULL,
  PRIMARY KEY (`codMarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `testeSuperlogica`.`Modelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `testeSuperlogica`.`Modelo` (
  `idModelo` INT NOT NULL AUTO_INCREMENT,
  `Modelo` VARCHAR(45) NULL,
  `Cor` VARCHAR(45) NULL,
  `Ano` VARCHAR(45) NULL,
  `Valor` VARCHAR(45) NULL,
  `Marca_codMarca` INT NOT NULL,
  PRIMARY KEY (`idModelo`),
  INDEX `fk_Modelo_Marca_idx` (`Marca_codMarca` ASC) VISIBLE,
  CONSTRAINT `fk_Modelo_Marca`
    FOREIGN KEY (`Marca_codMarca`)
    REFERENCES `testeSuperlogica`.`Marca` (`codMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ------------------------------------------------------------
-- Insert tabela marcas
-- ------------------------------------------------------------
INSERT INTO `testesuperlogica`.`marca` (`codMarca`, `Marca`, `Origem`) VALUES ('1', 'Fiat', 'Italiana');
INSERT INTO `testesuperlogica`.`marca` (`codMarca`, `Marca`, `Origem`) VALUES ('2', 'Ford', 'Americana');
INSERT INTO `testesuperlogica`.`marca` (`codMarca`, `Marca`, `Origem`) VALUES ('3', 'GM', 'Americana');
INSERT INTO `testesuperlogica`.`marca` (`codMarca`, `Marca`, `Origem`) VALUES ('4', 'Volkswagem', 'Alemã');
INSERT INTO `testesuperlogica`.`marca` (`codMarca`, `Marca`, `Origem`) VALUES ('5', 'Toyota', 'Japonesa');
INSERT INTO `testesuperlogica`.`marca` (`codMarca`, `Marca`, `Origem`) VALUES ('6', 'Ferrari', 'Italiana');
INSERT INTO `testesuperlogica`.`marca` (`codMarca`, `Marca`, `Origem`) VALUES ('7', 'Renault', 'Francesa');

-- -------------------------------------------------------------
-- Insert modelos
-- -------------------------------------------------------------
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Uno', 'Azul', '1997', '14000', '1');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Palio', 'Preto', '1999', '16000', '1');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Palio', 'Azul', '2008', '32000', '1');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Palio', 'Branco', '2002', '22000', '1');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Fiesta', 'Branco', '2000', '18000', '2');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Ka', 'Azul', '2005', '22500', '2');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Fiesta', 'Azul', '2007', '28000', '2');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Monza', 'Preto', '1995', '15000', '3');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Vectra', 'Prata', '2006', '35000', '3');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Vectra', 'Azul', '1999', '29000', '3');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Monza', 'Prata', '1997', '12000', '3');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Gol', 'Prata', '1997', '16000', '4');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Fox', 'Preto', '2002', '31000', '4');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Gol', 'Azul', '1999', '25000', '4');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Fox', 'Prata', '2008', '39000', '4');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Gol', 'Vermelho', '2005', '16000', '4');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Corolla', 'Prata', '2004', '60000', '5');
INSERT INTO `testesuperlogica`.`modelo` (`Modelo`, `Cor`, `Ano`, `Valor`, `Marca_codMarca`) VALUES ('Renault 206', 'Vermelho', '2003', '25000', '7');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- ------------------------------------------------------------------
-- a) Faça um select que retorne a marca, modelo, cor e valor de todos os carros com valores entre 20000 e 30000.
-- ------------------------------------------------------------------
SELECT mo.idModelo, ma.Marca, mo.Modelo, mo.Cor, mo.valor FROM testesuperlogica.modelo mo
INNER JOIN marca ma ON mo.Marca_codMarca = ma.codMarca
WHERE mo.Valor >= '20000' AND mo.Valor <= '30000';

-- ------------------------------------------------------------------
-- b) Faça um select que retorne a marca, origem, modelo e ano de fabricação de todos os carros de marcas europeias, ordenado por ano de fabricação.
-- ------------------------------------------------------------------
-- Ascendente
SELECT mo.idModelo, ma.Marca, ma.Origem, mo.Modelo, mo.Ano FROM testesuperlogica.modelo mo
INNER JOIN marca ma ON mo.Marca_codMarca = ma.codMarca
WHERE ma.Origem = 'Italiana' OR ma.Origem = 'Alemã' OR ma.Origem = 'Francesa'
ORDER BY mo.Ano ASC;

-- Descendente
SELECT mo.idModelo, ma.Marca, ma.Origem, mo.Modelo, mo.Ano FROM testesuperlogica.modelo mo
INNER JOIN marca ma ON mo.Marca_codMarca = ma.codMarca
WHERE ma.Origem = 'Italiana' OR ma.Origem = 'Alemã' OR ma.Origem = 'Francesa'
ORDER BY mo.Ano DESC;

-- ------------------------------------------------------------------
-- c) Faça um select que retorne a marca, origem, modelo e valor de todos os carros inclusive as marcas sem nenhum carro.
-- ------------------------------------------------------------------
-- Não é possivel retornar no select Valor de um carro não cadastrado pois temos o campo valor na tabela modelos, e uma vez que não existe um registro relacionado,
-- não possivel retorná-lo.
SELECT mo.idModelo, ma.Marca, ma.Origem, mo.Modelo, mo.Valor FROM testesuperlogica.marca ma
INNER JOIN modelo mo ON ma.codMarca = mo.Marca_codMarca;


-- ----------------------------------------------------------------------------
-- d) Faça um select que retorne a marca e valor total (renomear a coluna valor para Total) de todos os carros e ordenar por marcas com maior valor agrupado.
-- ----------------------------------------------------------------------------
SELECT ma.Marca, SUM(mo.Valor) 'Valor Total' FROM testesuperlogica.modelo mo
INNER JOIN marca ma ON mo.Marca_codMarca = ma.codMarca
WHERE ma.Origem = 'Italiana' OR ma.Origem = 'Alemã' OR ma.Origem = 'Francesa'
GROUP BY ma.Marca
ORDER BY ma.Marca ASC;


