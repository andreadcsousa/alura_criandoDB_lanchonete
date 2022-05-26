-- Criando o esquema
CREATE SCHEMA `lanchonete`;

-- Criando a tabela de clientes
CREATE TABLE `lanchonete`.`clientes` (
  `cpf` VARCHAR(11) NOT NULL,
  `nome` VARCHAR(100) NULL,
  `endereco` VARCHAR(150) NULL,
  `complemento` VARCHAR(150) NULL,
  `bairro` VARCHAR(50) NULL,
  `cidade` VARCHAR(50) NULL,
  `estado` VARCHAR(2) NULL,
  `cep` VARCHAR(8) NULL,
  `nascimento` DATE NULL,
  `idade` SMALLINT(2) NULL,
  `genero` VARCHAR(1) NULL,
  `limite-credito` DECIMAL(10,0) NULL,
  `volume-compras` FLOAT NULL,
  `primeira-compra` BIT(1) NULL,
  PRIMARY KEY (`cpf`)
);


 -- Inserindo dados na tabela de clientes
INSERT INTO `lanchonete`.`clientes`
VALUES
    ('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','','Agua Santa','Rio de Janeiro','RJ','22000000','2000-02-12',18,'M',100000,200000,1),
    ('2600586709','Cesar Teixeira','Rua Conde de Bonfim','','Tijuca','Rio de Janeiro','RJ','22020001','2000-03-12',18,'M',120000,220000,0),
    ('95939180787','Fabio Carvalho','R. dos Jacarandas da Peninsula','','Barra da Tijuca','Rio de Janeiro','RJ','22002020','1992-01-05',16,'M',90000,180000,1),
    ('9283760794','Edson Meilelles','R. Pinto de Azevedo','','Cidade Nova','Rio de Janeiro','RJ','22002002','1995-10-07',22,'M',150000,250000,1),
    ('7771579779','Marcelo Mattos','R. Eduardo Luis Lopes','','Bras','São Paulo','SP','88202912','1992-03-25',25,'M',120000,200000,1),
    ('5576228758','Petra Oliveira','R. Benicio de Abreu','','Lapa','Sao Paulo','SP','88192029','1995-11-14',22,'F',70000,160000,1),
    ('8502682733','Valdeci da Silva','R. Srg. Edison de Oliveira','','Jardins','Sao Paulo','SP','82122020','1995-10-07',22,'M',110000,190000,0),
    ('1471156710','Erica Carvalho','R. Iriquitia','','Jardins','Sao Paulo','SP','80012212','1990-09-01',27,'F',170000,245000,0),
    ('3623344710','Marcos Nogueira','Av. Pastor Martin Luther King Junior','','Inhauma','Rio de Janeiro','RJ','22002012','1995-01-13',23,'M',110000,220000,1),
    ('50534475787','Abel Silva ','Rua Humaita','','Humaita','Rio de Janeiro','RJ','22000212','1995-09-11',22,'M',170000,260000,0),
    ('5840119709','Gabriel Araujo','R. Manuel de Oliveira','','Santo Amaro','Sao Paulo','SP','80010221','1985-03-16',32,'M',140000,210000,1),
    ('94387575700','Walber Lontra','R. Cel. Almeida','','Piedade','Rio de Janeiro','RJ','22000201','1989-06-20',28,'M',60000,120000,1),
    ('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura','','Jardins','Sao Paulo','SP','81192002','1983-12-20',34,'M',200000,240000,0),
    ('5648641702','Paulo Cesar Mattos','Rua Helio Beltrao','','Tijuca','Rio de Janeiro','RJ','21002020','1991-08-30',26,'M',120000,220000,0),
    ('492472718','Eduardo Jorge','R. Volta Grande','','Tijuca','Rio de Janeiro','RJ','22012002','1994-07-19',23,'M',75000,95000,1);
--

-- Criando a tabela de produtos
CREATE TABLE `lanchonete`.`produtos` (
  `codigo-produto` VARCHAR(10) NOT NULL,
  `nome-produto` VARCHAR(50) NULL,
  `embalagem` VARCHAR(20) NULL,
  `tamanho` VARCHAR(10) NULL,
  `sabor` VARCHAR(20) NULL,
  `preco-lista` DECIMAL(10,4) NOT NULL,
  PRIMARY KEY (`codigo-produto`)
);


-- Inserindo dados na tabela de produtos
INSERT INTO `lanchonete`.`produtos`
VALUES
    ('1040107','Light - 350 ml - Melancia','Lata','350 ml','Melancia',4.555),
    ('1037797','Clean - 2 Litros - Laranja','PET','2 Litros','Laranja',16.008),
    ('1000889','Sabor da Montanha - 700 ml - Uva','Garrafa','700 ml','Uva',6.309),
    ('1004327','Videira do Campo - 1,5 Litros - Melancia','PET','1,5 Litros','Melancia',19.51),
    ('1088126','Linha Citros - 1 Litro - Limao','PET','1 Litro','Limao',7.004),
    ('544931','Frescor do Verao - 350 ml - Limao','Lata','350 ml','Limao',2.4595),
    ('1078680','Frescor do Verao - 470 ml - Manga','Garrafa','470 ml','Manga',5.1795),
    ('1042712','Linha Citros - 700 ml - Limao','Garrafa','700 ml','Limao',4.904),
    ('788975','Pedacos de Frutas - 1,5 Litros - Maca','PET','1,5 Litros','Maca',18.011),
    ('1002767','Videira do Campo - 700 ml - Cereja/Maca','Garrafa','700 ml','Cereja/Maca',8.41),
    ('231776','Festival de Sabores - 700 ml - Acai','Garrafa','700 ml','Acai',13.312),
    ('479745','Clean - 470 ml - Laranja','Garrafa','470 ml','Laranja',3.768),
    ('1051518','Frescor do Verao - 470 ml - Limao','Garrafa','470 ml','Limao',3.2995),
    ('1101035','Linha Refrescante - 1 Litro - Morango/Limao','PET','1 Litro','Morango/Limao',9.0105),
    ('229900','Pedacos de Frutas - 350 ml - Maca','Lata','350 ml','Maca',4.211),
    ('1086543','Linha Refrescante - 1 Litro - Manga','PET','1 Litro','Manga',11.0105),
    ('695594','Festival de Sabores - 1,5 Litros - Acai','PET','1,5 Litros','Acai',28.512),
    ('838819','Clean - 1,5 Litros - Laranja','PET','1,5 Litros','Laranja',12.008),
    ('326779','Linha Refrescante - 1,5 Litros - Manga','PET','1,5 Litros','Manga',16.5105),
    ('520380','Pedacos de Frutas - 1 Litro - Maca','PET','1 Litro','Maca',12.011),
    ('1041119','Linha Citros - 700 ml - Lima/Limao','Garrafa','700 ml','Lima/Limao',4.904),
    ('243083','Festival de Sabores - 1,5 Litros - Maracuja','PET','1,5 Litros','Maracuja',10.512),
    ('394479','Sabor da Montanha - 700 ml - Cereja','Garrafa','700 ml','Cereja',8.409),
    ('746596','Light - 1,5 Litros - Melancia','PET','1,5 Litros','Melancia',19.505),
    ('773912','Clean - 1 Litro - Laranja','PET','1 Litro','Laranja',8.008),
    ('826490','Linha Refrescante - 700 ml - Morango/Limao','Garrafa','700 ml','Morango/Limao',6.3105),
    ('723457','Festival de Sabores - 700 ml - Maracuja','Garrafa','700 ml','Maracuja',4.912),
    ('812829','Clean - 350 ml - Laranja','Lata','350 ml','Laranja',2.808),
    ('290478','Videira do Campo - 350 ml - Melancia','Lata','350 ml','Melancia',4.56),
    ('783663','Sabor da Montanha - 700 ml - Morango','Garrafa','700 ml','Morango',7.709),
    ('235653','Frescor do Verao - 350 ml - Manga','Lata','350 ml','Manga',3.8595),
    ('1002334','Linha Citros - 1 Litro - Lima/Limao','PET','1 Litro','Lima/Limao',7.004),
    ('1013793','Videira do Campo - 2 Litros - Cereja/Maca','PET','2 Litros','Cereja/Maca',24.01),
    ('1096818','Linha Refrescante - 700 ml - Manga','Garrafa','700 ml','Manga',7.7105),
    ('1022450','Festival de Sabores - 2 Litros - Acai','PET','2 Litros','Acai',38.012);
--

-- Visualizando os clientes
SELECT * FROM `lanchonete`.`clientes`;

SELECT `cpf`, `nome` FROM `clientes`;

SELECT `cpf`  AS Identificador, `nome` AS Cliente FROM `clientes`;
SELECT `nome` AS Cliente, `cpf` AS Identificador FROM `clientes`;


-- Filtrando os produtos com where + igual
SELECT * FROM `lanchonete`.`produtos`;

DELETE   FROM `produtos` WHERE `codigo-produto` = '1000889';
SELECT * FROM `produtos` WHERE `codigo-produto` = '1000889';

SELECT * FROM `produtos` WHERE `sabor` = 'Uva';
SELECT * FROM `produtos` WHERE `sabor` = 'Limao';
DELETE   FROM `produtos` WHERE `sabor` = 'Limao';


-- Filtrando os produtos com outros operadores
SELECT * FROM `produtos`;

SELECT * FROM `produtos` WHERE `embalagem` = 'PET';
SELECT * FROM `produtos` WHERE `preco-lista` = 4.555;

SELECT * FROM `produtos` WHERE `preco-lista` > 10.5120;
SELECT * FROM `produtos` WHERE `preco-lista` < 10.5120;

SELECT * FROM `produtos` WHERE `preco-lista` <= 4.555;
SELECT * FROM `produtos` WHERE `preco-lista` >= 4.555;

SELECT * FROM `produtos` WHERE `embalagem` <= 'Lata';

SELECT * FROM `produtos` WHERE `embalagem` <> 'Lata';
SELECT * FROM `produtos` WHERE `preco-lista` <> 4.555;


-- Filtrando os produtos por datas
SELECT * FROM `clientes`;

SELECT * FROM `clientes` WHERE `nascimento` = '1995-09-11';

SELECT * FROM `clientes` WHERE `nascimento` >= '1995-09-11';
SELECT * FROM `clientes` WHERE `nascimento` <= '1995-09-11';

SELECT * FROM `clientes` WHERE YEAR(`nascimento`) = 1995;
SELECT * FROM `clientes` WHERE YEAR(`nascimento`) < 1995;
SELECT * FROM `clientes` WHERE MONTH(`nascimento`) = 12;
SELECT * FROM `clientes` WHERE DAY(`nascimento`) = 11;