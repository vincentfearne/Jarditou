DROP DATABASE IF EXISTS `exercice1`;

CREATE DATABASE `exercice1`;

USE `exercice1`;

CREATE TABLE client(
cli_num     INT,
cli_nom     VARCHAR(50),
cli_adresse VARCHAR(100),
cli_tel     VARCHAR(10),
PRIMARY KEY (cli_num)
);

CREATE TABLE commande(
com_num     INT NOT NULL AUTO_INCREMENT,
cli_num     INT,
com_date    DATE NOT NULL,
com_obs     VARCHAR(250),
PRIMARY KEY (com_num),
FOREIGN KEY (cli_num) REFERENCES client(cli_num)
);

CREATE TABLE produit(
pro_num         INT,
pro_libelle     VARCHAR(50),
pro_description VARCHAR(250),
PRIMARY KEY (pro_num)
);

CREATE TABLE detail(
com_num     INT,
pro_num     INT,
det_qte     INT,
FOREIGN KEY (com_num) REFERENCES commande(com_num),
FOREIGN KEY (pro_num) REFERENCES produit(pro_num)
);



