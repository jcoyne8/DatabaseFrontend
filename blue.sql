-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2023 at 05:18 PM
-- Server version: 10.5.18-MariaDB-0+deb11u1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blue`
--

-- --------------------------------------------------------

--
-- Table structure for table `Actor`
--

CREATE TABLE `Actor` (
  `ActorID` smallint(6) NOT NULL,
  `ActornameLast` varchar(20) NOT NULL,
  `ActornameFirst` varchar(20) NOT NULL,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Actor`
--

INSERT INTO `Actor` (`ActorID`, `ActornameLast`, `ActornameFirst`, `Photo`) VALUES
(2001, 'McKellen', 'Ian', 'https://upload.wikimedia.org/wikipedia/commons/1/15/SDCC13_-_Ian_McKellen.jpg'),
(2002, 'Mortensen', 'Viggo', 'https://upload.wikimedia.org/wikipedia/commons/6/64/Viggo_Mortensen_B_%282020%29.jpg'),
(2003, 'Wood', 'Elijah', 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Elijah_Wood_%2847955397556%29_%28cropped%29.jpg'),
(2004, 'Astin', 'Sean', 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Sean_Astin_%2827506939735%29_%28cropped%29.jpg'),
(2005, 'Waititi', 'Taika', 'https://upload.wikimedia.org/wikipedia/commons/1/13/Taika_Waititi_by_Gage_Skidmore_2.jpg'),
(2006, 'Bale', 'Christian', 'https://upload.wikimedia.org/wikipedia/commons/0/0a/Christian_Bale-7837.jpg'),
(2007, 'Murray', 'Bill', 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Bill_Murray-8882.jpg'),
(2008, 'Stewart', 'Patrick', 'https://upload.wikimedia.org/wikipedia/commons/8/87/Patrick_Stewart_by_Gage_Skidmore_2.jpg'),
(2009, 'Ford', 'Harrison', 'https://upload.wikimedia.org/wikipedia/commons/3/34/Harrison_Ford_by_Gage_Skidmore_3.jpg'),
(2010, 'Van Dyke', 'Dick', 'https://upload.wikimedia.org/wikipedia/commons/b/be/Dick_Van_Dyke_2021.jpg'),
(2011, 'Clement', 'Jemaine', 'https://upload.wikimedia.org/wikipedia/commons/0/04/Black_Sea%2C_Golden_Ladder_album_preview_party_DM1_3180-2_-_Jemaine_Clement.jpg'),
(2012, 'Pascal', 'Pedro', 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Pedro_Pascal_by_Gage_Skidmore.jpg'),
(2013, 'del Toro', 'Benicio', 'https://upload.wikimedia.org/wikipedia/commons/3/32/Benicio_Del_Toro_-_Guardians_of_the_Galaxy_premiere_-_July_2014_%28cropped%29.jpg'),
(2014, 'Quan', 'Ke Huy', 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Ke_Huy_Quan_%2843865682592%29.jpg'),
(4001, 'Freeman', 'Morgan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Morgan_Freeman_Deauville_2018.jpg/330px-Morgan_Freeman_Deauville_2018.jpg'),
(4002, 'Depp', 'Johnny', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Johnny_Depp_2020.jpg/800px-Johnny_Depp_2020.jpg'),
(4003, 'Jolie', 'Angelina', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Under_Secretary_Zeya_Meets_With_UNHCR_Special_Envoy_Jolie_%2851942861677%29_%28cropped%29.jpg/800px-Under_Secretary_Zeya_Meets_With_UNHCR_Special_Envoy_Jolie_%2851942861677%29_%28cropped%29.jpg'),
(4004, 'Washington', 'Denzel', 'https://upload.wikimedia.org/wikipedia/commons/4/40/Denzel_Washington_2018.jpg'),
(4005, 'LaBeouf', 'Shia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Shia_LaBeouf_2022.jpg/800px-Shia_LaBeouf_2022.jpg'),
(4006, 'O\'Hanlon', 'George', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/George_OHanlon_life_of_riley.JPG/330px-George_OHanlon_life_of_riley.JPG'),
(4007, 'Bale', 'Christian', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Christian_Bale-7837.jpg/330px-Christian_Bale-7837.jpg'),
(4008, 'Ledger', 'Heath', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Heath_Ledger_%282%29.jpg/330px-Heath_Ledger_%282%29.jpg'),
(4009, 'Eckhart', 'Aaron', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Aaron_Eckhart_%2829830286295%29_%28cropped%29.jpg/330px-Aaron_Eckhart_%2829830286295%29_%28cropped%29.jpg'),
(4010, 'Damon', 'Matt', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Matt_Damon%2C_Berlinale_2023_%28cropped%29.jpg/330px-Matt_Damon%2C_Berlinale_2023_%28cropped%29.jpg'),
(4011, 'Affleck', 'Ben', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Ben_Affleck_by_Gage_Skidmore_3.jpg/330px-Ben_Affleck_by_Gage_Skidmore_3.jpg'),
(4012, 'Williams', 'Robin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/TED2009_Robin_Williams_%283264530660%29_%28cropped%29.jpg/330px-TED2009_Robin_Williams_%283264530660%29_%28cropped%29.jpg'),
(4013, 'Pitt', 'Brad', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Brad_Pitt_2019_by_Glenn_Francis.jpg/330px-Brad_Pitt_2019_by_Glenn_Francis.jpg'),
(4014, 'Schreiber', 'Liev', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/MJK_08465_Liev_Schreiber_%28Berlinale_2018%29.jpg/330px-MJK_08465_Liev_Schreiber_%28Berlinale_2018%29.jpg'),
(4020, 'Nicholson', 'Jack', 'https://upload.wikimedia.org/wikipedia/commons/e/ec/Jack_Nicholson_2001.jpg'),
(4030, 'Jackman', 'Hugh', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Logan_Japan_Premiere_Red_Carpet-_Hugh_Jackman_%2838445328406%29_%28rotated%29.jpg/800px-Logan_Japan_Premiere_Red_Carpet-_Hugh_Jackman_%2838445328406%29_%28rotated%29.jpg'),
(4040, 'Reynolds', 'Ryan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Deadpool_2_Japan_Premiere_Red_Carpet_Ryan_Reynolds_%28cropped%29.jpg/800px-Deadpool_2_Japan_Premiere_Red_Carpet_Ryan_Reynolds_%28cropped%29.jpg'),
(4050, 'Aykroyd', 'Dan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Dan_Aykroyd_cropped.jpg/330px-Dan_Aykroyd_cropped.jpg'),
(6001, 'Barrymore', 'Drew', 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Drew_Barrymore_Berlin_2014.jpg'),
(6002, 'Ferrell', 'Will', 'https://upload.wikimedia.org/wikipedia/commons/c/c2/Will_Ferrell_2012.jpg'),
(6003, 'Witherspoon', 'Reese', 'https://upload.wikimedia.org/wikipedia/commons/8/85/Reese_Witherspoon_at_TIFF_2014.jpg'),
(6004, 'Streep', 'Meryl', 'https://upload.wikimedia.org/wikipedia/commons/4/46/Meryl_Streep_December_2018.jpg'),
(6005, 'Roberts', 'Julia', 'https://upload.wikimedia.org/wikipedia/commons/a/a6/Julia_Roberts_2011_Shankbone_3.JPG'),
(6006, 'Swayze', 'Patrick', 'https://upload.wikimedia.org/wikipedia/commons/a/a1/Patrick_Swayze_-_1990_Grammy_Awards_%28cropped%29.jpg'),
(6007, 'Gibson', 'Mel', 'https://upload.wikimedia.org/wikipedia/commons/9/95/Mel_Gibson_Cannes_2016_2.jpg'),
(6008, 'Yeoh', 'Michelle', 'https://upload.wikimedia.org/wikipedia/commons/6/61/Michelle_Yeoh_Cannes_2017.jpg'),
(6009, 'Hudson', 'Kate', 'https://upload.wikimedia.org/wikipedia/commons/6/61/Kate_Hudson_%288033413872%29_%28cropped%29.jpg'),
(6010, 'Hemsworth', 'Liam', 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Liam_Hemsworth_June_2016.jpg'),
(6011, 'Radcliffe', 'Daniel', 'https://upload.wikimedia.org/wikipedia/commons/1/12/DanielRadcliffe.jpg'),
(6012, 'Edgar-Jones', 'Daisy', 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Daisy_Edgar-Jones_by_Patrick_Lovell%2C_July_2021_%28cropped%29.jpg'),
(6013, 'Cline', 'Madelyn', 'https://upload.wikimedia.org/wikipedia/commons/3/39/Madelyn_cline_2022_4.jpg'),
(6014, 'Craig', 'Daniel', 'https://upload.wikimedia.org/wikipedia/commons/8/87/Daniel_Craig_in_2021.jpg'),
(6015, 'Cruise', 'Tom', 'https://upload.wikimedia.org/wikipedia/commons/3/33/Tom_Cruise_by_Gage_Skidmore_2.jpg'),
(6016, 'Mescal', 'Paul', 'https://upload.wikimedia.org/wikipedia/commons/0/08/Paul_Mescal_44.MVFF.jpg'),
(6017, 'Damon', 'Matt', 'https://upload.wikimedia.org/wikipedia/commons/f/f5/Matt_Damon%2C_Berlinale_2023_%28cropped%29.jpg'),
(6018, 'Williams', 'Robin', 'https://upload.wikimedia.org/wikipedia/commons/b/be/TED2009_Robin_Williams_%283264530660%29_%28cropped%29.jpg'),
(6019, 'Affleck', 'Ben', 'https://upload.wikimedia.org/wikipedia/commons/7/70/Ben_Affleck_by_Gage_Skidmore_3.jpg'),
(6020, 'Hanks', 'Tom', 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Tom_Hanks_TIFF_2019.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Movie`
--

CREATE TABLE `Movie` (
  `MovieID` smallint(6) NOT NULL,
  `MovieName` varchar(50) NOT NULL,
  `Genre` varchar(20) DEFAULT NULL,
  `Director` varchar(25) NOT NULL,
  `Writer` varchar(25) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Length` int(11) DEFAULT NULL,
  `Rating` varchar(10) DEFAULT NULL,
  `IMDB` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Movie`
--

INSERT INTO `Movie` (`MovieID`, `MovieName`, `Genre`, `Director`, `Writer`, `ReleaseDate`, `Length`, `Rating`, `IMDB`) VALUES
(2001, 'What We Do in the Shadows', 'Comedy', 'Waititi, Taika', 'Clement, Jemaine', '2014-06-19', 85, 'R', '7.60'),
(2002, 'Lord of the Rings: The Return of the King', 'Fantasy', 'Jackson, Peter', 'Tolkien, J.R.R.', '2003-12-17', 201, 'PG-13', '9.00'),
(2003, 'Howl\'s Moving Castle', 'Fantasy', 'Miyazaki, Hayao', 'Jones, Diana Wynne', '2004-09-05', 119, 'PG', '8.20'),
(2004, 'Groundhog Day', 'Comedy', 'Ramis, Harold', 'Rubin, Danny', '1993-02-12', 101, 'PG', '8.10'),
(2005, 'Troll Hunter', 'Fantasy', 'Øvredal, André', 'Øvredal, André', '2010-10-29', 103, 'PG-13', '6.90'),
(2006, 'Khóbbit', 'Fantasy', 'Latyshev, Vladimir', 'Tolkien, J.R.R.', '1985-01-01', 65, 'N/A', '4.20'),
(2007, 'Prey', 'Action', 'Trachtenberg, Dan', 'Aison, Patrick', '2022-08-05', 100, 'R', '7.10'),
(2008, 'Indiana Jones and the Temple of Doom', 'Action', 'Spielberg, Steven', 'Huyck, Willard', '1984-05-23', 118, 'PG', '7.50'),
(2009, 'Che', 'Historical', 'Soderbergh, Steven', 'Buchman, Peter', '2009-01-24', 134, 'N/A', '7.10'),
(2010, 'Moana', 'Musical', 'Clements, Ron', 'Bush, Jared', '2016-11-23', 107, 'PG', '7.60'),
(4001, 'Transcendence', 'Sci-Fi', 'Paglan, Jack', 'Pfister, Wally', '2014-04-10', 119, 'PG-13', '6.20'),
(4002, 'K-PAX', 'Drama', 'Softley, Iain', 'Leavitt, Charles', '2001-10-22', 120, 'PG-13', '7.40'),
(4003, 'Salt', 'Action', 'Noyce, Phillip', 'Wimmer, Kurt', '2010-07-19', 100, 'PG-13', '6.40'),
(4004, 'Deja Vu', 'Crime', 'Scott, Tony', 'Marsilii, Bill', '2006-11-20', 126, 'PG-13', '7.10'),
(4005, 'Eagle Eye', 'Thriller', 'Caruso, D.J.', 'Glenn, John', '2008-09-16', 118, 'PG-13', '6.60'),
(4006, 'The Dark Knight', 'Action', 'Nolan, Christopher', 'Nolan, Jonathan', '2008-07-14', 152, 'PG-13', '9.00'),
(4007, 'Invictus', 'Action', 'Eastwood, Clint', 'Peckham, Anthony', '2009-12-11', 134, 'PG-13', '7.30'),
(4008, 'Se7en', 'Crime', 'Fincher, David', 'Walker, Andrew Kevin', '1995-09-15', 127, 'R', '8.60'),
(4009, 'Driving Miss Daisy', 'Drama', 'Beresford, Bruce', 'Uhry, Alfred', '1989-12-11', 99, 'PG', '7.30'),
(4010, 'Jetsons: The Movie', 'Animation', 'Barbera, Joseph', 'Marks, Dennis', '1990-07-06', 82, 'G', '5.50'),
(4011, 'The Flintstones', 'Comedy', 'Levant, Brian', 'Parker, Tom', '1994-05-23', 91, 'PG', '5.00'),
(4012, 'Robots', 'Animation', 'Wedge, Chris', 'Lindsay-Abaire, David', '2005-03-11', 91, 'PG', '6.40'),
(4013, 'Surf\'s Up', 'Animation', 'Brannon, Ash', 'Rhymer, Don', '2007-06-08', 85, 'PG', '6.70'),
(4014, 'Transformers', 'Action', 'Bay, Michael', 'Kurtzman, Alex', '2007-06-28', 144, 'PG-13', '7.00'),
(4015, 'Padre Pio', 'Biography', 'Ferrara, Abel', 'Braucci, Maurizio', '2023-04-20', 104, 'R', '6.70'),
(4016, 'Dogma', 'Comedy', 'Smith, Kevin', 'Smith, Kevin', '1999-10-04', 130, 'R', '7.30'),
(4020, 'Somethings Gotta Give', 'Comedy', 'Meyers, Nancy', 'Meyers, Nancy', '2003-12-03', 128, 'PG-13', '6.70'),
(4030, 'Van Helsing', 'Fantasy', 'Sommers, Stephen', 'Sommers, Stephen', '2004-05-03', 131, 'PG-13', '6.00'),
(4050, 'Facing the Giants', 'Sport', 'Kendrick, Alex', 'Kendrick, Alex', '2006-09-29', 111, 'PG', '6.50'),
(6001, 'Elf', 'Comedy', 'Favreau, Jon', 'Berenbaum, David', '2003-11-07', 97, 'PG', '7.10'),
(6002, 'Sweet Home Alabama', 'Comedy', 'Tennant, Andy', 'Eboch, Douglas', '2002-09-27', 108, 'PG-13', '6.20'),
(6003, 'The Devil Wears Prada', 'Comedy', 'Frankel, David', 'McKenna, Aline', '2006-06-30', 109, 'PG-13', '6.90'),
(6004, 'Notting Hill', 'Drama', 'Michell, Roger', 'Curtis, Richard', '1999-05-28', 124, 'PG-13', '7.20'),
(6005, 'Never Been Kissed', 'Comedy', 'Gosnell, Raja', 'Kohn, Abby', '1999-04-09', 107, 'PG-13', '6.00'),
(6006, 'Dirty Dancing', 'Drama', 'Ardolino, Emile', 'Bergstein, Eleanor', '1987-08-21', 100, 'PG-13', '7.00'),
(6007, 'Real Genius', 'Comedy', 'Coolidge, Martha', 'Israel, Neal', '1985-08-07', 108, 'PG', '6.90'),
(6008, 'Forrest Gump', 'Drama', 'Zemeckis, Robert', 'Groom, Winston', '1994-07-06', 142, 'PG-13', '8.80'),
(6009, 'Gone Girl', 'Drama', 'Fincher, David', 'Flynn, Gillian', '2014-10-03', 159, 'R', '8.10'),
(6010, 'Good Will Hunting', 'Drama', 'Sant, Gus Van', 'Damon, Matt', '1998-01-09', 126, 'R', '8.30'),
(6011, 'The Departed', 'Crime', 'Scorese, Martin', 'Monahan, William', '2006-10-06', 151, 'R', '8.50'),
(6012, 'Aftersun', 'Drama', 'Wells, Charlotte', 'Wells, Charlotte', '2022-11-18', 102, 'R', '7.70'),
(6013, 'Top Gun: Maverick', 'Action', 'Kosinski, Joseph', 'Cash, Jim', '2022-05-27', 130, 'PG-13', '8.30'),
(6014, 'Casino Royale', 'Action', 'Campbell, Martin', 'Purvis, Neal', '2006-11-17', 144, 'PG-13', '8.00'),
(6015, 'Where the Crawdads Sing', 'Drama', 'Newman, Olivia', 'Owens, Delia', '2022-07-15', 125, 'PG-13', '7.20'),
(6016, 'Harry Potter and the Sorcerer\'s Stone', 'Adventure', 'Columbus, Chris', 'Rowling, J.K.', '2001-11-16', 152, 'PG', '7.60'),
(6017, 'The Hunger Games', 'Action', 'Ross, Gary', 'Ross, Gary', '2012-03-23', 142, 'PG-13', '7.20'),
(6018, 'Glass Onion', 'Comedy', 'Johnson, Rian', 'Johnson, Rian', '2022-12-23', 139, 'PG-13', '7.20'),
(6019, 'Everything Everywhere All at Once', 'Action', 'Kwan, Daniel', 'Kwan, Daniel', '2022-04-08', 139, 'R', '7.90'),
(6020, 'Titanic', 'Drama', 'Cameron, James', 'Cameron, James', '1997-12-19', 194, 'PG-13', '7.90');

-- --------------------------------------------------------

--
-- Table structure for table `MovieCharacter`
--

CREATE TABLE `MovieCharacter` (
  `CharacterID` smallint(6) NOT NULL,
  `CharacterName` varchar(50) NOT NULL,
  `Quote` varchar(255) DEFAULT NULL,
  `ActorID` smallint(6) DEFAULT NULL,
  `MovieID` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MovieCharacter`
--

INSERT INTO `MovieCharacter` (`CharacterID`, `CharacterName`, `Quote`, `ActorID`, `MovieID`) VALUES
(2001, 'Gandalf', 'All we have to decide is what to do with the time that is given us.', 2001, 2002),
(2002, 'Aragorn', 'The Beacons are lit! Gondor calls for aid.', 2002, 2002),
(2003, 'Frodo Baggins', ' How do you pick up the threads of an old life? How do you go on... when in your heart you begin to understand... there is no going back?', 2003, 2002),
(2004, 'Samwise Gamgee', 'I can\'t carry it for you, but I can carry you.', 2004, 2002),
(2005, 'Viago', 'Yeah some of our clothes are from victims. You might bite someone, and then you think \'Ooh, those are some nice pants!\'', 2005, 2001),
(2006, 'Howl', 'I see no point in living if I can\'t be beautiful.', 2006, 2003),
(2007, 'Phil Connors', 'This is one time where television really fails to capture the true excitement of a large squirrel predicting the weather.', 2007, 2004),
(2008, 'Indiana Jones', ' Nothing shocks me. I\'m a scientist.', 2009, 2008),
(2009, 'Short Round', 'Okey dokey, Dr. Jones.', 2014, 2008),
(2010, 'Che Guevara', 'We have only won the war. The revolution has just begun.', 2013, 2009),
(2011, 'Tamatoa', 'Tamatoa hasn\'t always been this glam. I was a drab little crab once.', 2011, 2010),
(2012, 'Waymond Wang', 'In another life, I would have really liked just doing laundry and taxes with you.', 2014, 6019),
(4001, 'Joseph Tagger', 'Your love and partnership was the kind the rest of us can only dream of. We lost a great mind, a great soul, but the spirit of this man will continue to inspire us.', 4001, 4001),
(4002, 'Will Caster', 'We\'re not gonna fight them. We\'re gonna transcend them.', 4002, 4001),
(4003, 'Evelyn Salt', 'Well, maybe you can think of a way around that.', 4003, 4003),
(4004, 'Doug Carlin', 'What if you had to tell someone the most important thing in the world, but you knew they\'d never believe you?', 4004, 4004),
(4005, 'Jerry Shaw', 'They changed every traffic light to get us here. The woman, she called mne on a stranger\'s cell phone who happened to be sitting next to me - never met the guy in my life.', 4005, 4005),
(4006, 'Lucius Fox', 'Let me get this straight, you think that your client, one of the wealthiest and most powerful men in the world, is secretly a vigilante, who spends his nights beating criminals to a pulp with his bare hands, and your plan is to blackmail this person?', 4001, 4006),
(4007, 'Nelson Mandela', 'Forgiveness liberates the soul. It removes fear. That is why it is such a powerful weapon.', 4001, 4007),
(4008, 'Somerset', 'I just don\'t think I can continue to live in a place that embraces and nurtures apathy as if it was virtue.', 4001, 4008),
(4009, 'Hoke Colburn', 'I had the air-conditioning checked. I don\'t know what for. You never allow me to turn it on.', 4001, 4009),
(4010, 'George Jetson', 'What\'s the bad news, Mr. Spacely?', 4006, 4010),
(4011, 'Sam Witwicky', 'So, you... so you talk through the radio?', 4005, 4014),
(4012, 'Padre Pio', 'Don\'t spend your energies on things that generate worry, anxiety and anguish. Only one thing is necessary: Lift up your spirit and love God.', 4005, 4015),
(4013, 'Sean', 'You\'re not perfect, sport, and let me save you the suspense: this girl you\'ve met, she\'s not perfect either. But the question is whether or not you\'re perfect for each other.', 4012, 6010),
(4014, 'Will', 'Wood drastically underestimates the impact of social distinctions predicated upon wealth, especially inherited wealth', 4010, 6010),
(4015, 'David Mills', 'He\'s a nut-bag! Just because the fucker\'s got a library card doesn\'t make him Yoda!', 4013, 4008),
(6001, 'Buddy', 'You sit on a throne of lies!', 6002, 6001),
(6002, 'Miranda Priestly', 'Is there a reason that my coffee isn’t here? Has she died or something?', 6004, 6003),
(6003, 'Melanie Smooter', 'The truth is I gave my heart away a long time ago, my whole heart, and I never really got it back', 6003, 6002),
(6004, 'Ana Scott', 'For June, who loved this garden, from Joseph, who always sat beside her.\" Some people do spend their whole lives together.', 6005, 6004),
(6005, 'Johnny Castle', 'Nobody puts Baby in a corner.', 6006, 6006),
(6006, 'Forrest Gump', 'My Mama Always Said You\'ve Got To Put The Past Behind You Before You Can Move On.', 6020, 6008),
(6007, 'Nick Dunne', 'All I\'m trying to do is being nice to the people who are volunteering to help find Amy.', 6019, 6009),
(6008, 'Sean Maguire', 'People call those imperfections, but no, that’s the good stuff.', 6018, 6010),
(6009, 'Colin', 'What was his name, the departed?', 6017, 6011),
(6010, 'Calum', 'You can live whatever you want to live. Be whoever you want to be. You have time.', 6016, 6012),
(6011, 'Pete \'Maverick\' Mitchell', 'The Navy Calls It Fighter Weapons School. The Pilots Call It Top Gun.', 6015, 6013),
(6012, 'James Bond', 'Why is it that people who can\'t take advice always insist on giving it?', 6014, 6014),
(6013, 'Kya', 'People Forget About The Creatures Who Live In Shells.', 6012, 6015),
(6014, 'Harry Potter', 'I can\'t be a-a-a wizard. I mean, I\'m just Harry, just Harry.', 6011, 6016),
(6015, 'Gale Hawthorne', 'We could do it, you know. Take off, live in the woods. What we do anyway.', 6010, 6017),
(6016, 'Birdie Jay', 'Everything is so woke nowadays, it\'s out of control.', 6009, 6018),
(6017, 'Whiskey', 'I Read All Your Court Transcripts; You Got Shanked.', 6013, 6018),
(6018, 'Evelyn Wang', 'Of all the places I could be, I just want to be here with you.', 6008, 6019),
(6019, 'Will', 'Do you buy all these books retail or do you send away for, like, a shrink kit that comes with all these volumes included?', 6017, 6010),
(6020, 'Kya', 'It’s Like Having A Friend Your Whole Life But You Never See Their Face.', 6012, 6015);

-- --------------------------------------------------------

--
-- Table structure for table `Viewer`
--

CREATE TABLE `Viewer` (
  `UserID` smallint(6) NOT NULL,
  `UsernameLast` varchar(20) NOT NULL,
  `UsernameFirst` varchar(20) NOT NULL,
  `FavoriteMovie` varchar(50) DEFAULT NULL,
  `FavoriteActor` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Viewer`
--

INSERT INTO `Viewer` (`UserID`, `UsernameLast`, `UsernameFirst`, `FavoriteMovie`, `FavoriteActor`) VALUES
(2001, 'Coyne', 'John', 'What We Do in the Shadows', 2001),
(2002, 'Ream', 'Elijah', 'Howl\'s Moving Castle', 2006),
(2003, 'Coyne', 'Zelda', 'Prey', 2003),
(4001, 'Krock', 'Scott', 'Transcendence', 4001),
(4002, 'Jetson', 'George', 'Jetsons: The Movie', 4006),
(4003, 'Jetson', 'Jane', 'The Flintstones', 4007),
(4004, 'Jetson', 'Judy', 'Transformers', 4005),
(4005, 'Jetson', 'Elroy', 'Robots', 4013),
(4006, 'Mouse', 'Mickey', 'Surf\'s Up', 4001),
(4007, 'Mouse', 'Minnie', 'K-PAX', 4050),
(4008, 'Duck', 'Donald', 'Se7en', 4013),
(4009, 'Duck', 'Daisy', 'Driving Miss Daisy', 4001),
(4010, 'Goof', 'Goofy', 'Dogma', 4011),
(4011, 'Dog', 'Pluto', 'Jetsons: The Movie', 4020),
(4020, 'Spence', 'Kim', 'Somethings Gotta Give', 4020),
(4030, 'Krock', 'Eric', 'Van Helsing', 4030),
(4040, 'Gerhart', 'Jen', 'Sweet Home Alabama', 4040),
(4050, 'Jackson', 'Christian', 'Facing the Giants', NULL),
(6001, 'Shipman', 'Chelsea', 'Elf', 6001),
(6002, 'Rose', 'Tammy', 'Dirty Dancing', 6006),
(6003, 'Rose', 'Dave', 'Real Genius', 6007),
(6004, 'Bay', 'Laura', 'Notting Hill', 6004),
(6005, 'Hill', 'Brittany', 'Sweet Home Alabama', 6003),
(6006, 'Mitchell', 'Brianna', 'Where the Crawdads Sing', 6003),
(6007, 'Miller', 'Kathy', 'Everything Everywhere All at Once', 6019),
(6008, 'Thompson', 'Dustin', 'Good Will Hunting', 6018),
(6009, 'Thompson', 'Michael', 'The Departed', 6011),
(6010, 'Birtel', 'Nicole', 'Titanic', 6008),
(6011, 'Whitman', 'Mindy', 'The Hunger Games', 6014),
(6012, 'Whitman', 'Terry', 'Gone Girl', 6010),
(6013, 'Hester', 'Caroline', 'Dirty Dancing', 6015),
(6014, 'Turner', 'Sarah', 'Casino Royale', 6015),
(6015, 'Turner', 'Craig', 'Top Gun: Maverick', 6002),
(6016, 'Tambo', 'Mary', 'Sweet Home Alabama', 6006),
(6017, 'Ross', 'Linda', 'Aftersun', 6014),
(6018, 'Jefferson', 'Kylie', 'Notting Hill', 6004),
(6019, 'Hutch', 'Ryan', 'The Departed', 6018),
(6020, 'Walter', 'Jenny', 'Where the Crawdads Sing', 6001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Actor`
--
ALTER TABLE `Actor`
  ADD PRIMARY KEY (`ActorID`),
  ADD UNIQUE KEY `ActorID` (`ActorID`);

--
-- Indexes for table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`MovieID`),
  ADD UNIQUE KEY `MovieID` (`MovieID`),
  ADD UNIQUE KEY `MovieName` (`MovieName`);

--
-- Indexes for table `MovieCharacter`
--
ALTER TABLE `MovieCharacter`
  ADD PRIMARY KEY (`CharacterID`),
  ADD UNIQUE KEY `CharacterID` (`CharacterID`),
  ADD KEY `Character_FK1` (`ActorID`),
  ADD KEY `Character_FK2` (`MovieID`);

--
-- Indexes for table `Viewer`
--
ALTER TABLE `Viewer`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserID` (`UserID`),
  ADD KEY `User_FK1` (`FavoriteMovie`),
  ADD KEY `User_FK2` (`FavoriteActor`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `MovieCharacter`
--
ALTER TABLE `MovieCharacter`
  ADD CONSTRAINT `Character_FK1` FOREIGN KEY (`ActorID`) REFERENCES `Actor` (`ActorID`),
  ADD CONSTRAINT `Character_FK2` FOREIGN KEY (`MovieID`) REFERENCES `Movie` (`MovieID`);

--
-- Constraints for table `Viewer`
--
ALTER TABLE `Viewer`
  ADD CONSTRAINT `User_FK1` FOREIGN KEY (`FavoriteMovie`) REFERENCES `Movie` (`MovieName`),
  ADD CONSTRAINT `User_FK2` FOREIGN KEY (`FavoriteActor`) REFERENCES `Actor` (`ActorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
