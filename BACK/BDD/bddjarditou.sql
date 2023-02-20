DROP DATABASE IF EXISTS `jarditou_full`;

CREATE DATABASE `jarditou_full`;

USE `jarditou_full`;


CREATE TABLE client(
        CliID               INT,
        Typee               BIT(1),
        Nom                 VARCHAR(50),
        Prenom              VARCHAR(50),
        Adresse             VARCHAR(100),
        CP                  CHAR(5),
        Ville               VARCHAR(50),
        Tel                 VARCHAR(10),
        Mail                VARCHAR(50),
        PRIMARY KEY (CliID)
);

CREATE TABLE commande(
        ComID               INT NOT NULL AUTO_INCREMENT,
        DateCommande        DATE NOT NULL,
        DateLivraison       DATE NOT NULL,
        EtatCommande        VARCHAR(25),
        EditionFacture      BIT(1),
        client              INT
        PRIMARY KEY (ComID),
        FOREIGN KEY (client) REFERENCES client(CliID)
);

CREATE TABLE fournisseur(
        FouID               INT,
        Nom                 VARCHAR(50),
        Adresse             VARCHAR(100),
        CP                  CHAR(5),
        Ville               VARCHAR(50),
        Tel                 VARCHAR(10),
        Mail                VARCHAR(50),
        Typee               BIT(1),
        PRIMARY KEY (FouID)
);

CREATE TABLE rubrique(
        RubID               INT,
        Libelle             VARCHAR(50),
        PRIMARY KEY (RubID)
);

CREATE TABLE produit(
        ProCode             CHAR(6),
        Libelle             VARCHAR(100),
        Descriptioon        VARCHAR(250),
        Photo               VARCHAR(250),
        Affichage           BIT(1),
        PrixAchat           INT,
        StockPhysique       INT,
        StockAlerte         INT,
        fournisseur         INT,
        rubrique            INT,
        PRIMARY KEY (ProCode),
        FOREIGN KEY (fournisseur) REFERENCES fournisseur(FouID),
        FOREIGN KEY (rubrique) REFERENCES rubrique(RubID)

);


CREATE TABLE panier(
        compQuantiteProduit     INT,
        compPrixVentePar        FLOAT,
        compPrixVentrePro       FLOAT,
        produit                 CHAR(6),
        commande                INT,
        FOREIGN KEY (commande) REFERENCES commande(ComID),
        FOREIGN KEY (produit) REFERENCES produit(ProCode)
);