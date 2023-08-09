CREATE DATABASE local_eateries_platform;

USE local_eateries_platform;

-- 1. Creating users table
CREATE TABLE users (
    Id INT PRIMARY KEY,
    Full_Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Gender ENUM('Male', 'Female'),
    Joining_Date DATE
);

-- Inserting the data
INSERT INTO users (Id, Full_Name, Email, Gender, Joining_Date) VALUES 
(1, 'Rebecka Colenutt', 'rcolenutt0@pcworld.com', 'Female', '2022-12-25'),
(2, 'Adrianne Bearfoot', 'abearfoot1@java.com', 'Female', '2022-12-06'),
(3, 'Kathy Linklater', 'klinklater2@auda.org.au', 'Female', '2023-03-24'),
(4, 'Aili Gruszecki', 'agruszecki3@accuweather.com', 'Female', '2023-06-12'),
(5, 'Pren Keniwell', 'pkeniwell4@tinyurl.com', 'Male', '2023-07-18'),
(6, 'Keriann Slimon', 'kslimon5@independent.co.uk', 'Female', '2023-05-13'),
(7, 'Sargent Janus', 'sjanus6@sourceforge.net', 'Male', '2022-12-17'),
(8, 'Jada Fishley', 'jfishley7@sfgate.com', 'Female', '2022-10-28'),
(9, 'Dedie Kittles', 'dkittles8@wikimedia.org', 'Female', '2022-09-27'),
(10, 'Maurine Heaney', 'mheaney9@gmpg.org', 'Female', '2022-09-09'),
(11, 'Drud Jepperson', 'djeppersona@google.de', 'Male', '2022-11-25'),
(12, 'Kayne Kingdon', 'kkingdonb@msn.com', 'Male', '2022-12-22'),
(13, 'Karoline McDill', 'kmcdillc@moonfruit.com', 'Female', '2022-09-01'),
(14, 'Beverlie Duddin', 'bduddind@archive.org', 'Female', '2023-04-06'),
(15, 'Abdul Lathom', 'alathome@sciencedirect.com', 'Male', '2023-07-18'),
(16, 'Kristopher Dutt', 'kduttf@seesaa.net', 'Male', '2023-05-30'),
(17, 'Brendan Antonomolii', 'bantonomoliig@ehow.com', 'Male', '2022-08-25'),
(18, 'Stillmann Brayford', 'sbrayfordh@rediff.com', 'Male', '2023-04-25'),
(19, 'Rosco Vasilkov', 'rvasilkovi@vimeo.com', 'Male', '2023-08-04'),
(20, 'Ashia Dawks', 'adawksj@live.com', 'Female', '2022-12-16'),
(21, 'Selene McCutcheon', 'smccutcheonk@illinois.edu', 'Female', '2023-01-01'),
(22, 'Dudley Jones', 'djonesl@unblog.fr', 'Male', '2023-06-08'),
(23, 'Rorke Wooff', 'rwooffm@umich.edu', 'Male', '2022-11-10'),
(24, 'Rachel Stagge', 'rstaggen@privacy.gov.au', 'Female', '2022-10-07'),
(25, 'Lyndy Painten', 'lpainteno@comcast.net', 'Female', '2023-01-12'),
(26, 'Jarrid Huggan', 'jhugganp@nymag.com', 'Male', '2022-09-04'),
(27, 'Mort Lazare', 'mlazareq@imageshack.us', 'Male', '2022-08-24'),
(28, 'Pattin Valance', 'pvalancer@wikia.com', 'Male', '2022-11-05'),
(29, 'Brook Campagne', 'bcampagnes@de.vu', 'Male', '2023-02-12'),
(30, 'Aldin Swinburn', 'aswinburnt@tinypic.com', 'Male', '2022-11-16'),
(31, 'Aksel Khristoforov', 'akhristoforovu@ycombinator.com', 'Male', '2023-05-08'),
(32, 'Zaccaria Domico', 'zdomicov@icq.com', 'Male', '2022-11-10'),
(33, 'Dasya Andreou', 'dandreouw@alexa.com', 'Female', '2022-11-28'),
(34, 'Philippine Melin', 'pmelinx@weebly.com', 'Female', '2023-01-01'),
(35, 'Jerrie Winch', 'jwinchy@studiopress.com', 'Male', '2022-08-12'),
(36, 'Arlyn Havik', 'ahavikz@sogou.com', 'Female', '2023-04-05'),
(37, 'Mala Dodridge', 'mdodridge10@smugmug.com', 'Female', '2023-03-12'),
(38, 'Dasha McMurtyr', 'dmcmurtyr11@rediff.com', 'Female', '2023-03-09'),
(39, 'Anica Covert', 'acovert12@dropbox.com', 'Female', '2023-01-04'),
(40, 'Isador Doylend', 'idoylend13@123-reg.co.uk', 'Male', '2023-05-25');

-- 2. Creating eateries table
CREATE TABLE eateries (
    Eatery_id INT PRIMARY KEY,
    Name VARCHAR(255),
    Type VARCHAR(255)
);

-- Inserting the data
INSERT INTO eateries (Eatery_id, Name, Type) VALUES 
(1, 'Pasta Paradiso', 'Italian Restaurant'),
(2, 'Bamboo Bites', 'Asian Fusion Café'),
(3, 'Sunrise Bakery', 'Bakery and Coffee Shop'),
(4, 'Taco Terrain', 'Mexican Fast Food'),
(5, 'Seaside Grille', 'Seafood Restaurant');

-- 3. Creating eatery_types table
CREATE TABLE Eatery_Types (
    type_id INT PRIMARY KEY,
    type_name VARCHAR(255)
);

-- Inserting the data
INSERT INTO Eatery_Types(type_id, type_name) VALUES
(1, 'Italian Restaurant'),
(2, 'Asian Fusion Café'),
(3, 'Bakery and Coffee Shop'),
(4, 'Mexican Fast Food'),
(5, 'Seafood Restaurant');

-- 4. Creating eatery_images table
CREATE TABLE Eatery_Images (
    image_id INT PRIMARY KEY,
    eatery_id INT,
    image_path VARCHAR(255),
    FOREIGN KEY (eatery_id) REFERENCES Eateries(Eatery_id)
);

-- Inserting the data
INSERT INTO Eatery_Images(image_id, eatery_id, image_path) VALUES
(1, 1, '/images/pasta_paradiso.jpg'),
(2, 2, '/images/bamboo_bites.jpg'),
(3, 3, '/images/sunrise_bakery.jpg'),
(4, 4, '/images/taco_terrain.jpg'),
(5, 5, '/images/seaside_grille.jpg');

-- 5. Creating reviews table
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    user_id INT,
    eatery_id INT,
    rating DECIMAL(3, 2),
    review_text TEXT,
    date_reviewed DATE,
    FOREIGN KEY (user_id) REFERENCES Users(Id),
    FOREIGN KEY (eatery_id) REFERENCES Eateries(Eatery_id)
);

-- Inserting the data
INSERT INTO Reviews(review_id, user_id, eatery_id, rating, review_text, date_reviewed) VALUES
(1, 1, 1, 4.5, 'The spaghetti carbonara is to die for!', '2022-12-26'),
(2, 2, 2, 4.3, 'Loved the sushi rolls.', '2022-12-07'),
(3, 3, 3, 1.2, 'Their croissants are amazing!', '2023-03-25'),
(4, 4, 4, 1.5, 'Best tacos in town.', '2023-06-13'),
(5, 5, 5, 4.1, "A seafood lover's paradise!", '2023-07-19'),
(6, 6, 1, 4.4, 'Pasta cooked to perfection.', '2023-05-14'),
(7, 7, 2, 4.2, 'The Asian fusion dishes are unique.', '2022-12-18'),
(8, 8, 3, 1.0, 'Love their muffins and lattes.', '2022-10-29'),
(9, 9, 4, 1.6, 'Great place for a quick bite.', '2022-09-28'),
(10, 10, 5, 4.2, 'The view is amazing, so is the food!', '2022-09-10');
