CREATE DATABASE smartcity;

USE smartcity;

CREATE TABLE login (
   firstname VARCHAR(20) NOT NULL,
   lastname VARCHAR(20) NOT NULL,
   phoneNumber VARCHAR(20) NOT NULL CHECK (phoneNumber LIKE '__________'),
   userName VARCHAR(20) PRIMARY KEY,
	Password VARCHAR(20) NOT NULL,
	TYPE VARCHAR(10) NOT NULL DEFAULT 'user'
	);
	
INSERT INTO login(firstname,lastname,phoneNumber,userName,PASSWORD,type) VALUES('Lenin','Sai','9154712305','Lenin123','india','Admin');
	
INSERT INTO login(firstname,lastname,phoneNumber,userName,Password) VALUES('Charan','Sai','9807772111','Charan123','sai@');
INSERT INTO login(firstname,lastname,phoneNumber,userName,Password) VALUES('Vamshi','Krishna','8686877668','Vamshi1','vamshi1@');

-- select * from login;

CREATE TABLE Hotels (
   Code VARCHAR(20) PRIMARY KEY,
	Name VARCHAR(20) NOT NULL,
	Area VARCHAR(20) NOT NULL,
	landMark VARCHAR(50) NOT NULL,
	phoneNumber VARCHAR(20) UNIQUE NOT NULL CHECK (phoneNumber LIKE '__________')
	);

INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H1','Brooms-Stays','mgbs','Near_Metro-Pillar C01','9848055227');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H2','Taj-Krishna','Banjarahills','Near_Metro-Pillar B10 ','9154712305');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H3','The-Novotel','mgbs','Near_Metro-Pillar R101','8096727397');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H4','TheParkhyatt','Banjarahills','Near_Metro-Pillar B70','7901079484');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H5','Deella-Hotel','kphb','Near_Metro-Pillar C88','9842312345');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H6','The-Marriot','Dsnr','Near_Metro-Pillar C48','8778676761');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H7','D-FairFields','dsnr','Near_Metro-Pillar C33','9898787671');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H8','AmrithCastle','Ameerpet','Near_Metro-Pillar C12','9890989035');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H9','Contis-Stays','Ameerpet','Near_Metro-Pillar C08','8878767645');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H10','RedFoxVilla','Ameerpet','Near_Metro-Pillar C09','9999923232');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H11','BlueFoxStay','Miyapur','Near_Metro-Pillar H21','9555566665');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H12','TheVivanta','Miyapur','Near_Metro-Pillar B22','8323232311');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H13','DeLemonTree','Rtcx','Near_Metro-Pillar H89','9123454321');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H14','TheRaddison','Rtcx','Near_Metro-Pillar H02','8998899889');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H15','Gis-Select','Rtcx','Near_Metro-Pillar R222','7667564631');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H16','Grand-Hyatt','Malakpet','Near_Metro-Pillar L11','9389043361');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H17','DeRoosevelt','osmania','Near_Metro-Pillar L13','9489943298');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H18','OrientalH12','kphb','Near_Metro-Pillar M41','9689943270');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H19','PrilandStay','Miyapur','Near_Metro-Pillar M27','9889943212');
INSERT INTO Hotels (Code,Name,Area,landMark,phoneNumber) VALUES ('H20','FortuneHouse','Miyapur','Near_Metro-Pillar P52','9799432153');

-- SELECT * FROM Hotels;

CREATE TABLE Restaurants (
      Code VARCHAR(20) PRIMARY KEY,
		Name VARCHAR(20) NOT NULL,
		Area VARCHAR(20) NOT NULL,
		landMark VARCHAR(50) NOT NULL,
		phoneNumber VARCHAR(20) UNIQUE NOT NULL CHECK (phoneNumber LIKE '__________')
		);
	

INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R1','De-Fusion','mgbs','Near_Metro-Pillar J25','9000667712');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R2','Olivefood ','BanjaraHills','Near_Metro-Pillar J75','9111667712');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R3','BRBQNAtion','Banjarahills','Near_Metro-Pillar B37','9154712305');
INSERT INTO restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R4','Indigrills','Osmania','Near_Metro-Pillar K420','8096727397');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R5','OlvieGrand','Ameerpet','Near_Metro-Pillar A20','8567453645');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R6','MekongEats','Ameerpet','Near_Metro-Pillar A132','2233432431');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R7','Kalalis33','Kphb','Near_Metro-Pillar B77','9876787656');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R8','AbsNAtion','Kphb','Near_Metro-Pillar B12','8987876787');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R9','DeTreForn','Kphb','Near_Metro-Pillar N121','9877787777');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R10','HardRock','Osmania','Near_Metro-Pillar RG33','9887122234');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R11','DeBawarchi','Osmania','Near_Metro-Pillar U22','9000099876');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R12','IndianFood','Osmania','Near_Metro-Pillar H40','7990987887');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R13','Onestas','Miyapur','Near_Metro-Pillar Kg220','7877651232');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R14','DIQBATAN','Miyapur','Near_Metro-Pillar KG300','7676543452');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R15','Millets-K','Miyapur','Near_Metro-Pillar K20','8987666654');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R16','GismatFood','mgbs','Near_Metro-Pillar B75','9440016565');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R17','DePlatform','mgbs','Near_Metro-Pillar H45','7730948789');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R18','EntryExit','rtcx','Near_Metro-Pillar R15','9505578261');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R19','BabaKDhaba','rtcx','Near_Metro-Pillar T2G','9553044335');
INSERT INTO Restaurants (Code,Name,Area,landMark,phoneNumber) VALUES ('R20','Pavalions','Osmania','Near_Metro-Pillar N20','9321688282');

-- SELECT * FROM Restaurants;		


CREATE TABLE ShoppingMalls(
      Code VARCHAR(20)  PRIMARY KEY,
		Name VARCHAR(20) NOT NULL,
		Area VARCHAR(20) NOT NULL,
		landMark VARCHAR(50) NOT NULL,
		phoneNumber VARCHAR(20) UNIQUE NOT NULL CHECK (phoneNumber LIKE '__________')
		);
		
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S1','InorbitMall','Mgbs','Near_Metro-Pillar M90','9222007792');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S2','THE-GVK-ONE','Banjarahills','Near_Metro-Pillar B69','9889007790');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S3','Hyd-Central','BanjaraHills','Near_Metro-Pillar P79','7901079484');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S4','ChennaiMall','Kphb','Near_Metro-Pillar K57','9154712305');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S5','MegaTruMall','Kphb','Near_Metro-Pillar K56','9987676757');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S6','Forum-SMall','Kphb','Near_Metro-Pillar K22','9111222321');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S7','City-Centre','Dsnr','Near_Metro-Pillar K80','9009871267');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S8','CTimesquare','Ameerpet','Near_Metro-Pillar G44','9099999898');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S9','SGMega-Mall','Ameerpet','Near_Metro-Pillar A15','8888998976');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S10','GalleriaMall','Osmania','Near_Metro-Pillar U11','7112131411');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S11','AlcazarMall','Ameerpet','Near_Metro-Pillar K90','9099333222');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S12','PodiumMall','Dsnr','Near_Metro-Pillar K33','9949850789');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S13','ArtiumMall','Osmania','Near_Metro-Pillar J11','9119809251');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S14','ModernCentre','rtcx','Near_Metro-Pillar U11','9091267643');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S15','MonarchMall','rtcx','Near_Metro-Pillar M11','6301234576');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S16','PrasadsMall','rtcx','Near_Metro-Pillar K70','6121909176');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S17','TalluriMall','Miyapur','Near_Metro-Pillar K93','9012166472');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S18','Sec-Centre','Miyapur','Near_Metro-Pillar K92','9878345611');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S19','SwissMall','Miyapur','Near_Metro-Pillar K91','9035777765');
INSERT INTO ShoppingMalls (Code,Name,Area,landMark,phoneNumber) VALUES ('S20','PurpleLeaf','Malakpet','Near_Metro-Pillar K12','9990983345');


-- SELECT * FROM shoppingmalls;


CREATE TABLE admin (
   firstname VARCHAR(20) NOT NULL,
   lastname VARCHAR(20) NOT NULL,
   phoneNumber VARCHAR(20) NOT NULL CHECK (phoneNumber LIKE '__________'),
   userName VARCHAR(20) PRIMARY KEY,
	Password VARCHAR(20) NOT NULL
	);


CREATE TABLE metro(
Sno INT PRIMARY KEY AUTO_INCREMENT,
BookingId INT NOT NULL,
userName VARCHAR(20) NOT NULL,
Name VARCHAR(20) NOT NULL,
Source VARCHAR(20) NOT NULL,
Dest VARCHAR(50) NOT NULL,
pfno INT NOT NULL,
tCost INT NOT NULL,
Tdate DATE DEFAULT CURRENT_DATE,
mtime TIME  DEFAULT CURRENT_TIME,
    CONSTRAINT fk_metro FOREIGN KEY(userName)
    REFERENCES login(userName)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
);


-- SELECT * from metro;
