USE douglasestate;

INSERT INTO hosts VALUES
(1,'Diana Taylor','Dtaylor@email.com','416-555-0101'),
(2,'Chris Tuckerr','CTuck@email.com','416-555-0102'),
(3,'Lethrell Douglas','lethrell@email.com','416-555-0103'),
(4,'Maya Singh','maya@email.com','416-555-0104'),
(5,'Oliver Chen','OCDchen@email.com','416-555-0105'),
(6,'Zara Ali','zara@email.com','416-555-0106'),
(7,'Adam Adam','AA_adam@email.com','416-555-0107'),
(8,'Sofia Rossi','sofia@email.com','416-555-0108'),
(9,'Noah Johnson','noah@email.com','416-555-0109'),
(10,'Chloe Mikfi','chloemikd@email.com','416-555-0110');

INSERT INTO properties VALUES
(1,1,'Maple Townhouse','123 Maple St','Toronto','Canada'),
(2,2,'Lake Cottage','88 Lake Rd','Muskoka','Canada'),
(3,3,'Downtown Loft','501 King St','Toronto','Canada'),
(4,4,'Luxury Penthouse','123 Yorkville','Toronto','Canada'),
(5,5,'Harbour Condo','20 Queens Quay','Toronto','Canada'),
(6,6,'Junction Studios','789 Dundas','Toronto','Canada'),
(7,7,'West End Duplex','55 Roncy','Toronto','Canada'),
(8,8,'Mountain Escape','5 Hilltop','Whistler','Canada'),
(9,9,'Waterfront Retreat','90 Lake Rd','Kelowna','Canada'),
(10,10,'City Suites','11 Bay St','Toronto','Canada');

INSERT INTO units VALUES
(1,1,'Unit A','Main floor',2,1,1),
(2,2,'Cottage Main','Entire cottage',3,2,1),
(3,3,'Loft Suite','Open loft',1,1,1),
(4,4,'Penthouse Suite','Luxury suite',2,2,1),
(5,5,'Harbour View','Waterfront',1,1,1),
(6,6,'Studio One','Compact',0,1,1),
(7,7,'Upper Duplex','Spacious',2,1,1),
(8,8,'Lodge Room','Private room',1,1,1),
(9,9,'Lake Suite','Scenic',1,1,1),
(10,10,'Bay Studio','Downtown',0,1,1);

INSERT INTO tenants VALUES
(1,'Noah Lee','np@email.com','416-111-1111',1),
(2,'Sophia Chen','sc@email.com','416-111-1112',1),
(3,'Shanel Brown','sb@email.com','416-111-1113',0),
(4,'Samantha Smith','ss@email.com','416-111-1114',1),
(5,'Chris Staple','cs@email.com','416-111-1115',0),
(6,'Tim Turner','tt@email.com','416-111-1116',1),
(7,'Henry Adams','ha@email.com','416-111-1117',1),
(8,'Michael Jordan','mj@email.com','416-111-1118',1),
(9,'Jack Turner','jt@email.com','416-111-1119',0),
(10,'Jack Black','jb@email.com','416-111-1120',1);

INSERT INTO bookings VALUES
(1,1,1,'2026-05-01','2026-05-05'),
(2,2,2,'2026-06-10','2026-06-15'),
(3,3,3,'2026-04-01','2026-04-03'),
(4,4,4,'2026-07-10','2026-07-17'),
(5,5,5,'2026-03-15','2026-03-18'),
(6,6,6,'2026-08-01','2026-08-04'),
(7,7,7,'2026-09-02','2026-09-06'),
(8,8,8,'2026-02-20','2026-02-22'),
(9,9,9,'2026-10-10','2026-10-12'),
(10,10,10,'2026-11-16','2026-11-18');

INSERT INTO payments VALUES
(1,1,650,'credit_card','2026-04-20'),
(2,2,1400,'bank_transfer','2026-06-01'),
(3,3,300,'paypal','2026-03-30'),
(4,4,1800,'credit_card','2026-06-20'),
(5,5,200,'cash','2026-03-10'),
(6,6,500,'paypal','2026-07-20'),
(7,7,900,'bank_transfer','2026-08-25'),
(8,8,300,'credit_card','2026-02-10'),
(9,9,200,'paypal','2026-10-01'),
(10,10,700,'bank_transfer','2026-10-15');
