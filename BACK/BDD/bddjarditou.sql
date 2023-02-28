DROP DATABASE IF EXISTS `jarditou_full`;

CREATE DATABASE `jarditou_full`;

USE `jarditou_full`;


CREATE TABLE client(
        CliID               INT NOT NULL AUTO_INCREMENT,
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
        client              INT,
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




USE jarditou_full;
INSERT INTO client (CliID, Typee, Nom, Prenom, Adresse, CP, Ville, Tel, Mail)
VALUES (1, 0, 'DUPONT', 'Xavier', '1 rue afpa', '80000', 'AMIENS', '0134353638', 'dupontxavier@afpa.uk'),
(2, 0, 'DUPUIS', 'Toujours', '2 rue afpa', '80000', 'AMIENS', '0131303235', 'dupuistoujours@afpa.uk'),
(3, 0, 'DUFOUR', 'Pizza', '3 rue afpa', '80000', 'AMIENS', '0164579212', 'dufourpizza@afpa.uk'),
(4, 0, 'DURANT', 'En', '4 rue afpa', '80000', 'AMIENS', '0145653297', 'duranten@afpa.uk'),
(5, 0, 'DUGLAND', 'Mou', '5 rue afpa', '80000', 'AMIENS', '0115496834', 'duglandmou@afpa.uk'),
(6, 0, 'DUSLIP', 'Chaud', '6 rue afpa', '80000', 'AMIENS', '0121548798', 'duslipchaud@afpa.uk'),
(7, 0, 'DUPULL', 'Laine', '7 rue afpa', '80000', 'AMIENS', '0132659887', 'dupulllaine@afpa.uk'),
(8, 0, 'DUCUL', 'Pu', '8 rue afpa', '80000', 'AMIENS', '0187546598', 'duculpu@afpa.uk'),
(9, 0, 'DUCALECON', 'Trou', '9 rue afpa', '80000', 'AMIENS', '0132655421', 'ducalecontrou@afpa.uk'),
(10, 0, 'DUCHANTIER', 'Electricien', '10 rue afpa', '80000', 'AMIENS', '0154218765', 'duchantierelectricien@afpa.uk');


USE jarditou_full;
INSERT INTO fournisseur (FouID, Nom, Adresse, CP, Ville, Tel, Mail, Typee)
VALUES (1, 'Ecolab', '11 rue du Pigeon', '80000', 'AMIENS', '0321564523', 'ecolab@hotmail.fr', 1),
(2, 'Techlab', '12 rue du Faucon', '80000', 'AMIENS', '0332548765', 'techlab@hotmail.fr', 1),
(3, 'Mecalab', '13 rue du Rougegorge', '80000', 'AMIENS', '0325364758', 'mecalab@hotmail.fr', 1),
(4, 'Cheaplab', '14 rue de Chine', '80000', 'AMIENS', '0374529685', 'cheaplab@hotmail.fr', 1),
(5, 'Stronglab', '15 rue du Vautour', '80000', 'AMIENS', '0373481659', 'stronglab@hotmail.fr', 1);


USE jarditou_full;
INSERT INTO rubrique (RubID, Libelle)
VALUES (1, 'accessoires jardinage'),
(2, 'mobilier de jardin'),
(3, 'barbecues'),
(4, 'appareillage'),
(5, 'produits entretien');

USE jarditou_full;
INSERT INTO produit (ProCode, Libelle, Descriptioon, Photo, Affichage, PrixAchat, StockPhysique, StockAlerte, fournisseur, rubrique)
VALUES ('v01', 'Parasol', 'parasol de jardin', '', 1, 80, 6, 3, 5, 2),
('v02', 'Barbecue', 'grill haute performance', '', 1, 90, 8, 2, 2, 3),
('v03', 'Barbecue grill', 'bbq exterieur', '', 1, 10, 11, 4, 4, 3),
('v04', 'Table pierre', 'table exterieur en pierre', '', 1, 110, 4, 1, 5, 2),
('v05', 'Rateau', 'rateau large','', 1, 8, 14, 6, 1, 1),
('v06', 'Pelle', 'pelle en bois', '', 1, 7, 12, 6, 1, 1),
('v07', 'Beche', 'beche en bois', '', 1, 8, 7, 5, 1, 1),
('v08', 'Pioche', 'pioche en bois', '', 1, 12, 8, 5, 1, 1),
('v09', 'Debroussailleuse', 'debroussailleuse sans fil', '', 1, 45, 4, 3, 3, 4),
('v10', 'Taille haie', 'taille haie sans fil', '', 1, 65, 5, 3, 3, 4),
('v11', 'Tronçonneuse', 'tronçonneuse thermique', '', 1, 80, 6, 2, 3, 4),
('v12', 'Tondeuse', 'tondeuse thermique', '', 1, 60, 5, 3, 3, 4),
('v13', 'Tondeuse robot', 'tondeuse automatique du futur', '', 1, 140, 6, 2, 4, 4),
('v14', 'Robot tondeuse', 'tondeuse automatique autonome', '', 1, 210, 5, 2, 3, 4),
('v15', 'Désherbant', 'désherbant surpuissant', '', 1, 4, 14, 8, 1, 5),
('v16', 'Engrais', 'engrais ultrachimique', '', 1, 5, 21, 10, 1, 5),
('v17', 'Engrais naturel', 'engrais à base fiente', '', 1, 4, 18, 10, 5, 5),
('v18', 'MX02', 'produit synthétique favorisant la pousse', '', 1, 6, 14, 10, 1, 5),
('v19', 'ClearStop', 'produit anti mauvaises herbes', '', 1, 6, 12, 10, 1, 5),
('v20', 'Banc', 'banc de jardin en bois', '', 1, 35, 3, 1, 5, 2);

USE jarditou_full;
INSERT INTO commande (ComID, DateCommande, DateLivraison, EtatCommande, EditionFacture, client)
VALUES (1, '2023/03/12', '2023/03/15', "commande en cours", 1, 1),
(2, '2023/03/12', '2023/03/15', "commande en cours", 1, 1),
(3, '2023/02/05', '2023/02/09', "commande livrée", 1, 2),
(4, '2023/02/05', '2023/02/09', "commande livrée", 1, 2),
(5, '2023/02/05', '2023/02/09', "commande livrée", 1, 3);

CREATE USER 'gestionnaire'@'localhost' IDENTIFIED BY 'gestion';
CREATE USER 'approvisionneur'@'localhost' IDENTIFIED BY 'approvisionnement';
CREATE USER 'administrateur'@'localhost' IDENTIFIED BY 'administration';

GRANT SELECT
ON jarditou_full.produit
TO 'gestionnaire'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT
ON jarditou_full.commande
TO 'gestionnaire'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT
ON jarditou_full.client
TO 'gestionnaire'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT
ON jarditou_full.panier
TO 'gestionnaire'@'localhost';
FLUSH PRIVILEGES;

GRANT SELECT, UPDATE
ON jarditou_full.produit
TO 'approvisionneur'@'localhost';
FLUSH PRIVILEGES;
GRANT SELECT
ON jarditou_full.fournisseur
TO 'approvisionneur'@'localhost';
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES
ON jarditou_full.*
TO 'administrateur'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
  