CREATE TABLE IF NOT EXISTS USERS (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username varchar(100),
    email varchar(100) unique,
    password varchar(255) default NULL
    
);

CREATE TABLE IF NOT EXISTS CARS (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    brand varchar(100),
    manufacture_year int,
    model varchar(100),
    color varchar(100),
    price decimal(10,2),
    used boolean default FALSE

);

CREATE TABLE IF NOT EXISTS ITEM_SALE (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    car_id int,
    salesman_id int,
    costumer_id int,
    price decimal(10,2),
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (car_id) REFERENCES Cars(id) ON DELETE CASCADE,
    FOREIGN KEY (salesman_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY (costumer_id) REFERENCES Users(id) ON DELETE CASCADE
    
);

INSERT INTO `cars` (`brand`, `model`, `manufacture_year`, `color`, `price`, `used`) VALUES
   ("Mitsubishi","Pajero Sport 2.8 4x4 Diesel Aut.","2000","Bege", 40000.0, 1),
   ("Mitsubishi","Diamant  LS 3.0 V6","1991","Vermelho", 40000.0, 1),
   ("Mitsubishi","Pajero GLS 3.5 V6 4p Mec.","1998","Marrom", 40000.0, 1),
   ("Mitsubishi","ASX 2.0 16V 160cv Mec.","2011","Branco", 40000.0, 1),
   ("Mitsubishi","Galant ES","1992","Amarelo", 40000.0, 1),
   ("Mitsubishi","Pajero HPE Full 3.2 4x4 T.I.Dies. 5p Aut","2006","Laranja", 40000.0, 1),
   ("Mitsubishi","Expo LRV Sport 2.3 16V","1992","Preto", 40000.0, 1),
   ("Mitsubishi","Airtrek 2.4 16V 163cv/ 136cv 4x4 5p Aut.","2003","Preto", 40000.0, 1),
   ("Mitsubishi","Pajero DAKAR HPE 3.2 4x4 T.I Dies 5p Aut","2011","Bege", 40000.0, 1),
   ("Mitsubishi","L300 Base/DX/Canter 2.5 Diesel","1995","Bege", 40000.0, 1),
   ("Mitsubishi","L200 Sport HPE 2.5 4x4 CD DTI Dies. Mec.","2004","Marrom", 40000.0, 1),
   ("Mitsubishi","Lancer GTi Mec","1994","Vermelho", 40000.0, 1),
   ("Mitsubishi","Lancer 2.0 16V 160cv Mec.","2012","Branco", 40000.0, 1),
   ("Mitsubishi","Airtrek 2.0 16V TB-IC 202cv 4x4 5p","2005","Amarelo", 40000.0, 1),
   ("Mitsubishi","Pajero HPE-S 3.2 4x4 T.I.Diesel 5p Aut.","2016","Laranja", 40000.0, 1),
   ("Mitsubishi","Galant ES","1992","Verde", 30000.0, 1),
   ("Mitsubishi","Colt GTi Mec","1995","Amarelo", 30000.0, 1),
   ("Mitsubishi","L200 HPE 2.5 8v 95/118cv TB-IC Diesel","2002","Verde", 30000.0, 1),
   ("Mitsubishi","Eclipse GST 2.0 16V Turbo","1991","Verde", 30000.0, 1),
   ("Mitsubishi","Pajero iO Aut","1999","Branco", 30000.0, 1),
   ("Mitsubishi","Lancer Evol. X J. Easton 2.0 16V TB Int.","2015","Laranja", 30000.0, 1),
   ("Mitsubishi","Pajero OUTDOOR 3.2 4x4 T.I. Dies.5p Aut.","2017","Branco", 30000.0, 1),
   ("Mitsubishi","L200 Sport HPE 2.5 4x4 CD DTI Dies. Aut.","2004","Amarelo", 30000.0, 1),
   ("Mitsubishi","Pajero TR4 2.0/ 2.0 Flex 16V 4x4 Mec.","2003","Cinza", 30000.0, 1),
   ("Mitsubishi","Pajero Sport SE 3.0 4x2 V6 177cv Aut.","2002","Branco", 30000.0, 1),
   ("Mitsubishi","Pajero Sport HPE 2.5 4x4 Diesel Mec.","2007","Preto", 15000.0, 1),
   ("Mitsubishi","Pajero iO Mec","1999","Cinza", 15000.0, 1),
   ("Mitsubishi","Pajero GLS 3.5 V6 2p Aut","1998","Branco", 15000.0, 1),
   ("Mitsubishi","Space Wagon/ Glxi 2.4","1994","Cinza", 15000.0, 1),
   ("Mitsubishi","OUTLANDER 2.2 165cv Diesel Aut.","2016","Branco", 15000.0, 1),
   ("Mitsubishi","Lancer LS 1.8","1993","Amarelo", 15000.0, 1),
   ("Mitsubishi","Pajero Full GLS/GLS/PKHPE 3.2 Dies.TI 5p","2001","Cinza", 15000.0, 1),
   ("Mitsubishi","L200 Triton HLS 2.4 Flex 16V CD Mec.","2013","Cinza", 15000.0, 1),
   ("Mitsubishi","Eclipse GS/ GS Turbo Mec","1991","Preto", 15000.0, 1),
   ("Mitsubishi","OUTLANDER 2.0 16V 160cv Aut.","2012","Laranja", 15000.0, 1),
   ("Mitsubishi","Expo LRV Sport 2.3 16V","1992","Prata", 15000.0, 1),
   ("Mitsubishi","Lancer Evol. 2.0 Turbo","1998","Verde", 45000.0, 1),
   ("Mitsubishi","Lancer Sport Ralliart 2.0 16V TB Int. 5p","2010","Bege", 45000.0, 1),
   ("Mitsubishi","L200 Triton KTM 3.2 CD TB Int.Dies. Mec.","2016","Laranja", 45000.0, 1),
   ("Mitsubishi","L200 GLS Sport 2.5 4x4 121cv CD DTI Dies","2003","Vermelho", 45000.0, 1),
   ("Mitsubishi","Pajero GLS 2.8 Diesel Turbo Mec.","1992","Prata", 45000.0, 1),
   ("Mitsubishi","Pajero TR4 2.0/ 2.0 Flex 16V 4x4 Mec.","2003","Prata", 45000.0, 1),
   ("Mitsubishi","OUTLANDER PHEV (Hybrid) 2.0 16V 4x4 Aut.","2014","Verde", 45000.0, 1),
   ("Mitsubishi","Pajero Sport 2.8 4x4 Diesel Aut.","2000","Cinza", 45000.0, 1),
   ("Mitsubishi","Lancer GLX","1993","Verde", 45000.0, 1),
   ("Mitsubishi","L200 2.5 4x2 CD Turbo Diesel","1992","Amarelo", 45000.0, 1),
   ("Mitsubishi","L200 2.5 4x4 CD Turbo Diesel","1991","Azul", 45000.0, 1),
   ("Mitsubishi","Pajero GLS Full 3.8 V6 250cv 5p Aut.","2008","Vermelho", 45000.0, 1),
   ("Mitsubishi","L200 Sport HPE 2.5 4x4 CD DTI Dies. Mec.","2004","Bege", 45000.0, 1),
   ("Mitsubishi","Pajero Sport 2.8 4x4 Diesel Mec.","2020","Verde", 70000.0, 0),
   ("Mitsubishi","Pajero Evolution 4x4 3.5 V6","2020","Marrom", 70000.0, 0),
   ("Mitsubishi","Eclipse GS/ GS Turbo Mec","2020","Prata", 70000.0, 0),
   ("Mitsubishi","Lancer HL-T 2.0 16V 160cv Aut.","2020","Verde", 70000.0, 0),
   ("Mitsubishi","Lancer HL-T 2.0 16V 160cv Aut.","2020","Marrom", 70000.0, 0),
   ("Mitsubishi","Pajero GLS 3.5 V6 4p Mec.","2020","Azul", 70000.0, 0),
   ("Mitsubishi","Pajero Sport SE 3.0 4x2 V6 177cv Aut.","2020","Preto", 70000.0, 0),
   ("Mitsubishi","Pajero iO Mec","2020","Azul", 70000.0, 0),
   ("Mitsubishi","Lancer HL 2.0 16V 160cv Aut.","2020","Bege", 70000.0, 0),
   ("Mitsubishi","Space Wagon/ Glxi 2.4","2020","Azul", 70000.0, 0),
   ("Mitsubishi","Space Wagon GLS 2.0","2020","Preto", 80000.0, 0),
   ("Mitsubishi","Pajero GLS 3.5 V6 Top 4p Aut","2020","Branco", 80000.0, 0),
   ("Mitsubishi","Pajero 3.2 4x4 T.I. Dies. 5p Aut","2020","Vermelho", 80000.0, 0),
   ("Mitsubishi","Lancer HL-T 2.0 16V 160cv Aut.","2020","Marrom", 80000.0, 0),
   ("Mitsubishi","Pajero GLS 3.5 V6 Top 2p Aut","2020","Bege", 80000.0, 0),
   ("Mitsubishi","Mirage GS 16V/ GLSi1.6","2020","Dourado", 80000.0, 0),
   ("Mitsubishi","Colt GLXi","2020","Laranja", 80000.0, 0),
   ("Mitsubishi","Pajero iO SE 0.8 16V Aut.","2020","Prata", 80000.0, 0),
   ("Mitsubishi","3000 GT SL 3.0","2020","Amarelo", 80000.0, 0),
   ("Mitsubishi","Pajero GLS 3.5 V6 2p Mec.","2020","Azul", 80000.0, 0),
   ("Mitsubishi","Expo LRV Sport 2.3 16V","2020","Preto", 80000.0, 0),
   ("Mitsubishi","Pajero Full GLS/ HPE Full 3.2 4x4 T.I.Dies.5p","2020","Marrom", 50000.0, 0),
   ("Mitsubishi","Pajero Sport HPE 3.5 4x4 200cv Aut.","2020","Vermelho", 50000.0, 0),
   ("Mitsubishi","L200 T.OUTDOOR 3.2 CD TB Int. Dies. Aut.","2020","Vermelho", 50000.0, 0),
   ("Mitsubishi","OUTLANDER 2.2 165cv Diesel Aut.","2020","Cinza", 50000.0, 0),
   ("Mitsubishi","Eclipse GT 3.8 V6 267cv","2020","Dourado", 50000.0, 0),
   ("Mitsubishi","L200 Triton OUTDOOR 2.4 Flex 16V CD Mec.","2020","Prata", 50000.0, 0),
   ("Mitsubishi","L200 RI/ RII/ RIII CD 2.5 TB Int. Diesel","2020","Laranja", 50000.0, 0),
   ("Mitsubishi","L200 Tri.HLS Chrome Ed. 2.4 CD Flex Mec.","2020","Amarelo", 50000.0, 0),
   ("Mitsubishi","Pajero GLZ 2.8 4x4 Turbo Diesel","2020","Cinza", 50000.0, 0),
   ("Mitsubishi","Pajero HPE Full 3.2 4x4 T.I.Dies.3p Aut.","2020","Azul", 50000.0, 0),
   ("Mitsubishi","Galant GS 2.0 V6","2020","Branco", 50000.0, 0),
   ("Mitsubishi","Eclipse GS/ GS Turbo Mec","2020","Laranja", 50000.0, 0),
   ("Mitsubishi","L200 Tri.HLS Chrome Ed. 2.4 CD Flex Mec.","2020","Amarelo", 50000.0, 0),
   ("Mitsubishi","Pajero Sport HPE 2.5 4x4 Diesel Mec.","2020","Azul", 50000.0, 0),
   ("Mitsubishi","L200 Triton GLS 3.2 CD TB Int.Diesel Mec","2020","Bege", 50000.0, 0),
   ("Mitsubishi","Pajero HPE 3.2 4x4 T.I. Dies. 5p Aut.","2020","Marrom", 90000.0, 0),
   ("Mitsubishi","Pajero HPE Full 3.2 4x4 T.I.Dies. 5p Aut","2020","Dourado", 90000.0, 0),
   ("Mitsubishi","Pajero Sport HPE 2.5 4x4 Diesel Mec.","2020","Laranja", 90000.0, 0),
   ("Mitsubishi","Pajero iO Aut","2020","Preto", 90000.0, 0),
   ("Mitsubishi","Pajero 3.2 4x4 T.I. Dies. 5p Aut","2020","Bege", 90000.0, 0),
   ("Mitsubishi","L200 Evolution 3.2 4x4 TB Int. Diesel","2020","Amarelo", 90000.0, 0),
   ("Mitsubishi","Lancer GT 2.0 16V 4X4 160cv Aut.","2020","Bege", 90000.0, 0),
   ("Mitsubishi","L200 T. Savana 3.2 CD TB Int. Dies. Aut.","2020","Bege", 90000.0, 0),
   ("Mitsubishi","L200 L 2.5 4X4 CD Turbo Diesel","2020","Azul", 90000.0, 0),
   ("Mitsubishi","Pajero GLS HPE/HPE Full 3.8 233cv 3p Aut","2020","Amarelo", 90000.0, 0),
   ("Mitsubishi","Lancer GT 2.0 16V 160cv Aut.","2020","Amarelo", 90000.0, 0),
   ("Mitsubishi","Lancer GTi Mec","2020","Laranja", 90000.0, 0),
   ("Mitsubishi","L200 Sport RS 2.5 CD DTI (passeio) Dies.","2020","Marrom", 90000.0, 0);

INSERT INTO `users` (`username`, `email`, `salesman`) VALUES
   ("Luawabui", "Luawabui@mail.com", 0),
   ("Zisipuy", "Zisipuy@mail.com", 0),
   ("Untzo", "Untzo@mail.com", 0),
   ("Caple", "Caple@mail.com", 0),
   ("Kacius", "Kacius@mail.com", 0),
   ("Leyrena", "Leyrena@mail.com", 0),
   ("Wilo", "Wilo@mail.com", 0),
   ("Bokwo", "Bokwo@mail.com", 0),
   ("Vewe", "Vewe@mail.com", 1),
   ("Uthsuen", "Uthsuen@mail.com", 1);