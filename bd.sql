CREATE DATABASE DB_ezif_technoelogie;

CREATE TABLE CLIENTS (
    id_client int primary key NOT NULL ,
    nomclient varchar(35) NOT NULL,
    prenomclient varchar (35)NOT NULL,
    telephone int(15) NOT NULL,
    secteur int(15) NOT NULL,
    ville VARCHAR(25)
);

INSERT INTO clients (id_client, nomclient, prenomclient, telephone, secteur, ville)
VALUES (1,'OUEDRAGO', 'stella', '66540833', '23', 'BOBO'),
       (2,'SELEFIO', 'neige', '01582549', '22', 'kaya'),
       (3,'KABRE', 'moussa', '69540853', '30', 'ouaga'),
        (4,'DOBAYA', 'chancevie', '52356299', '28', 'ouaga');
       

       
CREATE TABLE CATEGORIES (
    id_categorie int primary key NOT NULL,
    libelle varchar(120)
);

INSERT INTO CATEGORIES (id_categorie, libelle)
VALUES ('ORDINATEUR', 'CLE USB', 'DISQUE DUR', 'TELEPHONE');


CREATE TABLE ARTICLES (
    id_article int(11) primary key NOT NULL,
    nom varchar(35) NOT NULL,
    prix int(35),
    id_categorie int,
     FOREIGN KEY(id_categorie) REFERENCES categorie(categorieid)
);  

INSERT INTO ARTICLES (id_article, nom, prix)
VALUES (1,'ORDINATEUR', '45000fcfa'),
       (2,'CLE USB', '600fcfa'),
       (3,'DISQUE DUR', '3500fcfa'),
        (4,'TELEPHONE', '105000fcfa');




CREATE TABLE FOURNISSEUR (
    id_fournisseur int primary key NOT NULL,
    nomfournisseur varchar(35) NOT NULL,
    prenomfournisseur varchar(35) NOT NULL,
    telephone int(15) NOT NULL,
    adresse varchar(35) NOT NULL,
    ville varchar(25)
);

INSERT INTO FOURNISSEUR (id_fournisseur, nomfournisseur,prenomfournisseu, telephone, adresse, ville)
VALUES ('IMBATIA', 'Cynthia', '66540833', '23', 'cynthaiimba@gmail.com', 'ouaga');
 
     

CREATE TABLE ACHATS (
    id_achats int primary key  NOT NULL,
    quantitéachats int(15),
    dateachats varchar(35),
    id_fournisseur int,
     id_articles int,
     FOREIGN KEY(id_fournisseur) REFERENCES fournisseur(id_fournisseur),
      FOREIGN KEY(id_articles) REFERENCES articles(id_articles)
); 

INSERT INTO ACHATS (id_achats, quantitéachats, dateachats)
VALUES (1, '25', '2/05/2023'),
       (2, '32', '02/2/2023'),
       (3, '35', '23/05/2023'),
        



CREATE TABLE VENTE (
    id_vente int PRIMARY KEY  NOT NULL,
    id_article int,
    id_clients int,
      FOREIGN KEY(id_article) REFERENCES articles(articles_id),
      FOREIGN KEY(id_clients) REFERENCES clients(clients_id)
   
);

INSERT INTO VENTE (id_vente)
VALUES() 
       



