CREATE TABLE salle(
    id int PRIMARY KEY,
    numeroSalle int UNIQUE NOT NULL,
    numeroCleSalle int UNIQUE,
    surface int
);

CREATE TABLE equipements(
    id int PRIMARY KEY,
    nom varchar(30) NOT NULL,
    nombreEquipement int NOT NULL,
    salle_id int, 
    FOREIGN KEY (salle_id) REFERENCES salle(id)
    
);
CREATE TABLE address(
    id int PRIMARY KEY,
    rue varchar (30),
    ville varchar (30),
    Code_Postale int,
    pays varchar (30)
);
CREATE TABLE employe (
    id int PRIMARY KEY,
    nom varchar (30) NOT NULL,
    PhoneNumber int NOT NULL,
    emailAddress varchar (50),
    address_id int ,
    FOREIGN KEY (address_id) REFERENCES address(id)
);


CREATE TABLE reservation_salles(
    id int PRIMARY KEY,
    prix float NOT NULL,
    debutDate date NOT NULL,
    finDate date NOT NULL,
    salle_id int NOT NULL,
    employe_id int NOT NULL,
    equipement_id int,
    FOREIGN KEY (equipement_id) REFERENCES equipements(id),
    FOREIGN KEY (employe_id) REFERENCES employe(id),
    FOREIGN KEY (salle_id) REFERENCES salle(id)
);

INSERT INTO salle(id, numeroSalle) 
VALUES (9,38)

INSERT INTO salle(id, numeroSalle) 
VALUES (11,39)

INSERT INTO salle(id, numeroSalle) 
VALUES (12,40)

INSERT INTO reservation_salles(id, prix, debut_date, fin_date, Salle_id, employe_id)
 VALUES (12,1000,'21/11/2023','22/11/2023',8,45)

 INSERT INTO reservation_salles
 VALUES (15,1000,'21/11/2023','22/11/2023',11,95,29)


alter 



