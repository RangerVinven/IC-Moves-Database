CREATE DATABASE IC_Moves;
use IC_Moves;

# Creates the tables
CREATE TABLE Users(id int auto_increment not null unique primary key, email varchar(50), password varchar(64) not null, session_token varchar(64));
CREATE TABLE Properties (
    id int auto_increment not null primary key,
    name varchar(20) NOT NULL,
    address varchar(255) NOT NULL,
    bedrooms int NOT NULL,
    showers int NOT NULL,
    noise_level varchar(5) NOT NULL,
    property_type varchar(5) NOT NULL,
    rent int NOT NULL,
    council_tax int NOT NULL,
    furnished tinyint(1) NOT NULL,
    folder varchar(25) NOT NULL,
    map_link TEXT NOT NULL,
    realtor_number varchar(12) NOT NULL
);
CREATE TABLE SavedProperties(user_id int not null, property_id int not null);
CREATE TABLE Images(id int auto_increment not null primary key, image_number int not null, property_id int not null, alt_description varchar(255) not null);

# Adds the properties
INSERT INTO Properties (id, name, address, bedrooms, showers, noise_level, property_type, rent, council_tax, furnished, folder, map_link, realtor_number) VALUES (1,'26 Orchard Road','26 Orchard Road, Aberdeen, AB24 3DP',2,1,'4/10','House',800,100,0,'26_Orchard_Road','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1179.6828477315833!2d-2.0992828695505485!3d57.16188535125746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48840e11c405bf69%3A0x884bd97dd7520f91!2s26%20Orchard%20Rd%2C%20Aberdeen%20AB24%203DP!5e0!3m2!1sen!2suk!4v1705884358312!5m2!1sen!2suk','07361 839125'),
 (2,'20 The Avenue','20 The Avenue, London, W4 1AG',3,2,'7','House',1500,120,1,'20_The_Avenue','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2483.263654018435!2d-0.27201078422881564!3d51.49048527963188!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48761ab5f1e9768d%3A0x30575ad53105cf0a!2s20%20The%20Ave%2C%20Chiswick%2C%20London%20W4%201AG!5e0!3m2!1sen!2suk!4v1643377268379!5m2!1sen!2suk','07821 457890'),
 (3,'9 Brighton Terrace','9 Brighton Terrace, Brighton, BN1 9SN',2,1,'5','Flat',1100,90,0,'9_Brighton_Terrace','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1986.7470363105222!2d-0.14239858413334903!3d50.835377662105064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48758def75053f57%3A0x26eb81d7a5b9e4d0!2s9%20Brighton%20Terrace%2C%20Brighton%20BN1%209SN!5e0!3m2!1sen!2suk!4v1643377474609!5m2!1sen!2suk','07592 364781'),
 (4,'12 Oxford Street','12 Oxford Street, Manchester, M1 5EH',1,1,'6','Flat',900,80,1,'12_Oxford_Street','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2372.971145458865!2d-2.238318384238205!3d53.474667602234294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487bb185f9150679%3A0x7c216f3b24a7f292!2s12%20Oxford%20St%2C%20Manchester%20M1%205EH%2C%20UK!5e0!3m2!1sen!2suk!4v1643378435321!5m2!1sen!2suk','07973 245689'),
 (5,'34 Victoria Road','34 Victoria Road, Bristol, BS1 6BY',4,2,'8','House',1800,150,0,'34_Victoria_Road','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2481.719794733753!2d-2.591360684227885!3d51.45512317962628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48718316f2a320ff%3A0x2fcf2e75b04e64fd!2s34%20Victoria%20Rd%2C%20Bristol%20BS1%206BY%2C%20UK!5e0!3m2!1sen!2suk!4v1643378655649!5m2!1sen!2suk','07782 918364'),
 (6,'7 Elmwood Drive','7 Elmwood Drive, Glasgow, G12 8QQ',3,2,'4','House',1300,100,1,'7_Elmwood_Drive','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2206.650872216238!2d-4.304669584326243!3d55.87750118054493!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4888446e314b5dcb%3A0xf34692f30f23dbbc!2s7%20Elmwood%20Dr%2C%20Glasgow%20G12%208QQ%2C%20UK!5e0!3m2!1sen!2suk!4v1643378835801!5m2!1sen!2suk','07361 839125'),
 (7,'15 Queens Road','15 Queens Road, Birmingham, B13 8PE',2,1,'6','House',950,85,1,'15_Queens_Road','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2409.6550452285394!2d-1.8788428842512544!3d52.43340606407786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4870bc6ee5d531eb%3A0x378a9070a91dc1a3!2s15%20Queens%20Rd%2C%20Birmingham%20B13%208PE%2C%20UK!5e0!3m2!1sen!2suk!4v1643381755644!5m2!1sen!2suk','07904 623518'),
 (8,'29 Elm Street','29 Elm Street, Edinburgh, EH6 7HD',3,2,'4','House',1400,110,0,'29_Elm_Street','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2235.5302752575195!2d-3.183228884343083!3d55.97454478087718!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4887c76a49b5b267%3A0xa06f4dbb1d4c92a6!2s29%20Elm%20St%2C%20Edinburgh%20EH6%207HD%2C%20UK!5e0!3m2!1sen!2suk!4v1643382086607!5m2!1sen!2suk','07791 832046'),
 (9,'5 Park View','5 Park View, Leeds, LS1 3HN',2,1,'7','House',1100,95,1,'5_Park_View','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2372.1818872424674!2d-1.5518995842396935!3d53.79810464567173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48795baf23607325%3A0x64d5bbfd4ba21df5!2s5%20Park%20View%2C%20Leeds%20LS1%203HN%2C%20UK!5e0!3m2!1sen!2suk!4v1643382307103!5m2!1sen!2suk','07856 320971'),
 (10,'8 High Street','8 High Street, Cambridge, CB2 1NT',4,2,'5','House',1600,130,0,'8_High_Street','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3879.5113246637237!2d0.12331231433731242!3d52.20465518616058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d870a66d4f0001%3A0x1ea6eb4b3b61f570!2s8%20High%20St%2C%20Cambridge%20CB2%201NT%2C%20UK!5e0!3m2!1sen!2suk!4v1643382475770!5m2!1sen!2suk','07642 985123'),
 (11,'3 Queens Drive','3 Queens Drive, Liverpool, L15 6TA',2,1,'8','House',1000,90,1,'3_Queens_Drive','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2373.1998839494765!2d-2.910945184239788!3d53.38845758247871!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487b203','07918 524761'),
 (12,'42 Highfield Avenue','42 Highfield Avenue, Southampton, SO17 1SJ',3,2,'6','House',1400,120,1,'42_Highfield_Avenue','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2515.626199810343!2d-1.4038246842732433!3d50.93028235971321!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48747114ec81e655%3A0x781bd16263d1fe95!2s42%20Highfield%20Ave%2C%20Southampton%20SO17%201SJ%2C%20UK!5e0!3m2!1sen!2suk!4v1643382861511!5m2!1sen!2suk','07918 554761'),
 (13,'6 Park Lane','6 Park Lane, Oxford, OX1 1HN',2,1,'4','Flat',1200,100,0,'6_Park_Lane','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2479.3810581118467!2d-1.2604438842525032!3d51.753320179674434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4876c6a8301fbf51%3A0x5b935667e9c1d5de!2s6%20Park%20Ln%2C%20Oxford%20OX1%201HN%2C%20UK!5e0!3m2!1sen!2suk!4v1643383167471!5m2!1sen!2suk','07520 687934'),
 (14,'10 Rosewood Court','10 Rosewood Court, Cardiff, CF24 4RN',1,1,'5','Flat',800,70,1,'10_Rosewood_Court','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2483.5761439038717!2d-3.165758384228934!3d51.49309807963432!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x486e52823d94c4f1%3A0x78344fd653f67c','07918 524721'),
 (15,'14 Elm Grove','14 Elm Grove, Nottingham, NG1 2JR',4,2,'7','House',1600,130,0,'14_Elm_Grove','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2410.2682043767174!2d-1.1496601842517865!3d52.95568985856523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4879c59f68b19925%3A0x4836c073d78179a8!2s14%20Elm%20Grove%2C%20Nottingham%20NG1%202JR%2C%20UK!5e0!3m2!1sen!2suk!4v1643383527193!5m2!1sen!2suk','07631 895402'),
 (16,'18 Victoria Crescent','18 Victoria Crescent, Belfast, BT7 1NF',2,1,'5','House',1100,90,1,'18_Victoria_Crescent','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2300.708762511933!2d-5.935781584296546!3d54.584856780265715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x486101b9d6d6939f%3A0xe964d50c7a0850fb!2s18%20Victoria%20Cres%2C%20Belfast%20BT7%201NF%2C%20UK!5e0!3m2!1sen!2suk!4v1643383756249!5m2!1sen!2suk','07854 621984'),
 (17,'5 Crescent Road','5 Crescent Road, Sheffield, S10 2PL',4,2,'7','House',1600,120,1,'5_Crescent_Road','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d379.29137002693226!2d-1.4950320848394767!3d53.37869933453604!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487982ebe22891a5%3A0xc6699327d9c684c0!2s5%20Crescent%20Rd%2C%20Sheffield%20S10%202PL%2C%20UK!5e0!3m2!1sen!2suk!4v1643383858357!5m2!1sen!2suk','07723 891456'),
 (18,'24 Park Avenue','24 Park Avenue, Swansea, SA1 5AJ',3,2,'6','House',1400,100,0,'24_Park_Avenue','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1698.2727965187815!2d-3.9466651849662783!3d51.62229841249525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x486e6e638dfc3147%3A0xd7f85a3ee60d4088!2s24%20Park%20Ave%2C%20Swansea%20SA1%205AJ%2C%20UK!5e0!3m2!1sen!2suk!4v1643383943465!5m2!1sen!2suk','07632 456789');

INSERT INTO Users (id, email, password, session_token) VALUES (1, 'daniel.mcpherson@live.co.uk', '79032b8a85663acddd601fd25371b7cb91f3ee6fbe68215f3cf6d4736bcbeea9', null),
(2, 'test@example.com', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', null);

INSERT INTO Images (property_id, image_number, alt_description)
VALUES
(1, 1, 'A house with a garage and a driveway'),
(1, 2, 'A living room with a television on the wall'),
(1, 3, 'A kitchen with grey cabinets and white countertops'),
(1, 4, 'A bed with pillows and lamps in a room'),
(1, 5, 'A bathroom with a bath and shower'),

(2, 1, 'A house with a lawn and a tree'),
(2, 2, 'A living room with a TV and couch'),
(2, 3, 'A kitchen with white cabinets and white countertops'),
(2, 4, 'A bedroom with a large window'),
(2, 5, 'A bathtub in a bathroom'),

(3, 1, 'A building with plants on the balconies'),
(3, 2, 'A living room with a TV and a fireplace'),
(3, 3, 'A kitchen with a large island and white cabinets'),
(3, 4, 'A bedroom with a bed and a rug'),
(3, 5, 'A bedroom with a bed and a bench'),

(4, 1, 'A tall building with balconies and windows'),
(4, 2, 'A living room with a large window and a couch'),
(4, 3, 'A kitchen with white cabinets and stainless steel appliances'),
(4, 4, 'A bedroom with a bed and two stools'),
(4, 5, 'A bathroom with a sink and toilet'),

(5, 1, 'A house with a driveway'),
(5, 2, 'A living room with a couch and dining table'),
(5, 3, 'A kitchen with white cabinets and stainless steel appliances'),
(5, 4, 'A bathroom with marble countertop and sink'),
(5, 5, 'A bathroom with a bath and shower curtain'),

(6, 1, 'A white house with a white picket fence and trees'),
(6, 2, 'A couch with pillows and a painting on the wall'),
(6, 3, 'A kitchen with a bar and stools'),
(6, 4, 'A bedroom with a black wall and a bed'),
(6, 5, 'A bathroom with a tub and sink'),

(7, 1, 'A small house with a small garden outside'),
(7, 2, 'A bedroom with a TV and a bed'),
(7, 3, 'A kitchen with white cabinets and black appliances'),
(7, 4, 'A bedroom with a large bed and a rug'),
(7, 5, 'A bathroom with a shower curtain and sink'),

(8, 1, 'A house with a lawn and a sidewalk'),
(8, 2, 'A living room with a couch and a coffee table'),
(8, 3, 'A large kitchen with a large counter in the middle'),
(8, 4, 'A bathroom with blue tiles'),
(8, 5, 'A bathroom with a tub and a mirror'),

(9, 1, 'A house on a dirt hill'),
(9, 2, 'A living room with a couch and a coffee table'),
(9, 3, 'A kitchen with white cabinets and black handles'),
(9, 4, 'A bedroom with a desk and a bed'),
(9, 5, 'A bathroom with a white door and two round mirrors'),

(10, 1, 'A red house with a chimney on grass'),
(10, 2, 'A living room with a staircase and a couch'),
(10, 3, 'A kitchen with a marble counter and some chairs'),
(10, 4, 'A bedroom with a bed and a bench'),
(10, 5, 'A bathroom with a glass shower and a sink'),

(11, 1, 'A house with a driveway and lawn'),
(11, 2, 'A room with a table and chairs'),
(11, 3, 'A kitchen with blue and white cabinets'),
(11, 4, 'A large room with a bed and couches'),
(11, 5, 'A bathroom with a sink and a tub'),

(12, 1, 'A large house with a lake'),
(12, 2, 'A living room with a couch and dining table'),
(12, 3, 'A kitchen with a sink and a stove'),
(12, 4, 'A bedroom with a bed and two lamps next to it'),
(12, 5, 'A bathroom with a marble countertop and a toilet'),

(13, 1, 'A balcony with potted plants on it'),
(13, 2, 'A living room with a couch and a TV'),
(13, 3, 'A kitchen with black cabinets and gold handles'),
(13, 4, 'A bedroom with a bed and a bench'),
(13, 5, 'A bathroom with a tub and a shower'),

(14, 1, 'A brick building with windows and two bikes outside'),
(14, 2, 'A living room with a television and plants'),
(14, 3, 'A kitchen with a large window'),
(14, 4, 'A bedroom with a bed and a bench'),
(14, 5, 'A bathroom with a tub and double sinks'),

(15, 1, 'A house next to a large body of water'),
(15, 2, 'A living room with a couch and a TV'),
(15, 3, 'A kitchen with white cabinets and a sink'),
(15, 4, 'A bedroom with pillows and a plant'),
(15, 5, 'A bathroom with a blue ceiling'),

(16, 1, 'A house with two garages'),
(16, 2, 'A living room with a couch and rug'),
(16, 3, 'A kitchen with a bar and stools'),
(16, 4, 'A bed with white bedding and white lamps'),
(16, 5, 'A white toilet with the seat up'),

(17, 1, 'A house with a lawn'),
(17, 2, 'A living room with a couch and a table and a TV'),
(17, 3, 'A kitchen with a table and chairs'),
(17, 4, 'A bedroom with a bed and a chair'),
(17, 5, 'A bathroom with a glass shower and a sink'),

(18, 1, 'A house with a lawn and a sign'),
(18, 2, 'A living room with a couch and a table'),
(18, 3, 'A kitchen with a table and chairs'),
(18, 4, 'A bedroom with a bed and a bench'),
(18, 5, 'A bathroom with a sink and a shower');
