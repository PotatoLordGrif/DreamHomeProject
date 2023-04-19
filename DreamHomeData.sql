/*
DreamHome Data
Griffin Davies
Group with Dhananjay(G), Igri, Griffin
*/
USE dreamhome;
INSERT INTO branch VALUES
('B002','56 Cover Drive','London','NW10 6EU'),
('B003','163 Main Street','Glasgow','G11 9QX'),
('B004','32 Manse Road','Bristol','BS99 1NZ'),
('B005','22 Deer Road','London','SW1 4EH'),
('B007','16 Argyll Street','Aberdeen','AB2 3SU');

INSERT INTO Client VALUES
(2,'CR56','Fred','Flintstone','555 1234','12 Rock Way','Bedrock','BD3 8RK','fred@flintyrock.com','2004-05-09',NULL,'House',450),
(6,'CR62','Wilma','Flintstone','555 1234','12 Rock Way','Bedrock','BD3 8RK','wilma@flintyrock.com','2004-05-09',NULL,'Flat',350),
(7,'CR74','Albert','Johnstone',NULL,'1 Way St.','Chicago','PO34 5FB','albie@johnstone.com','2004-05-9','(N/A)','Flat',450),
(9,'CR77','Clark','Kent','555 9999','1 Super Way','Smallville','SM4 2ME','clark@supersite.com','2004-05-09','(N/A)','Flat',400),
(10,'CR79','Joe','Bloggs','123 4567','5 High St','Paisley','PA2 2BB','joe@paisley.com','2004-05-10','London (North West)','House',450),
(12,'CR83','Edward','Scissorhands','123 4567','1 Snip St.','Scissorland','SC1 2XX','eddie@scix.com','2004-05-21','(N/A)','House',300),
(17,NULL,'Albert','Enistein','555 6789','12 Long Island Way','New Jersey','NJ44 2RD','bert@nuclearintent.com','2004-05-21','London (North West)',NULL,450),
(18,'Snorrie','Sturrluson','333 4567','1 Vik Way','Rekjavik','RK22 3RD','snorrie@iceland.com','2004-05-21','(N/A)',400.00),
(19,'Ferdinand','Oblogiotta','123 5555','12 Strumpetwise Street','Lagrange Orage','PP2 1BB','ferdy@orage.com','2004-05-31','(N/A)','House',450.00),
(20,'Joe','Schmoe','123 45678','1 High St','Largs','KA30 9DD','joes@largy.com','2004-05-31','(N/A)','House',550.00),
(21,'Bill','Gates','123 5555','1 Rich Street','Seattle','SE2 TTL','bill@gatesland.com','2004-06-01','London (South)','House',1000.00),
(24,'Bruce','Wayne','555 6789','1 Wayne Manor','Gotham','BA01 TT0','wayne@batty.com','2004-11-22','Glasgow','House',900.00);


INSERT INTO Staff VALUES
('SA9','Mary','Howe','Assistant','F','1970-02-19',9000,'B007','1338','079555 12345','MaryHowe@Dreamhome.co.uk'),
('SG14','David','Ford','Supervisor','M','1958-03-24',18000,'B003','0223','079555 12344','DavidFord@Dreamhome.co.uk'),
('SG37','Ann','Beech','Assistant','F','1960-11-10',12000,'B003','0224','079555 12346','AnnBeech@Dreamhome.co.uk'),
('SG5','Susan','Brand','Manager','F','1940-06-03',24000,'B003','0225','079555 12347','SusanBrand@Dreamhome.co.uk'),
('SL21','John','White','Manager','M','1945-10-01',30000,'B005','1512','090555 12345','JohnWhite@Dreamhome.co.uk'),
('SL41','Julie','Lee','Assistant','F','1965-06-13',9000,'B005','1514','090555 12346','JulieLee@Dreamhome.co.uk');

INSERT INTO PropertyForRent VALUES
('PG16','5 Novar Drive','Glasgow','G12 9AX','Flat',4,450,'CO93','SG14','B003','images/house3.jpg','images/plan1.jpg'),
('PG21','18 Dale Road','Glasgow','G12','House',5,600,'CO87','SG37','B003','images/house4.jpg','images/plan1.jpg'),
('PG36','2 Manor Road','Glasgow','G32 4QX','Flat',3,375,'CO93','SG37','B003','images/house5.jpg','images/plan1.jpg'),
('PG4','6 Lawrence Street','Glasgow','G11 9QX','Flat',3,350,'CO40','SA9','B003','images/house2.jpg','images/plan1.jpg'),
('PG97','Muir Drive','Aberdeen','AB42 1DD','House',3,380,'CO46','SA9','B007','images/house1.jpg','images/plan1.jpg'),
('PL94','6 Argyll Street','London','NW2','Flat',4,400,'CO87','SL41','B005','images/house3.jpg','images/plan1.jpg');


INSERT INTO Viewing VALUES
(2,2,'PA14','7/1/2004',11,NULL,No),
(3,7,'PG36','7/1/2004',12,NULL,No),
(4,9,'PG4','7/1/2004',12,'Tidy but too small',No),
(5,10,'PA14','7/2/2004',10,NULL,No),
(6,12,'PG4','7/2/2004',14,NULL,No),
(7,6,'PA14','6/20/2004',12,NULL,No),
(8,6,'PG21','6/21/2004',13,NULL,No),
(11,6,'PA14','6/20/2004',12,NULL,No),
(12,9,'PG21','11/22/2004',9,'Not bad at all.',No),
(13,9,'PG36','11/23/2004',9,'Kitchen too small.',No),
(14,9,'PG16','11/23/2004',9,NULL,No),
(15,24,'PG21','11/25/2004',11,NULL,No);