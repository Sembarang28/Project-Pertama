-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Feb 2022 pada 12.01
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasbesar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `games`
--

CREATE TABLE `games` (
  `id_games` varchar(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Genre` varchar(40) NOT NULL,
  `Developer` varchar(50) NOT NULL,
  `Publisher` varchar(50) NOT NULL,
  `Release_Date` date NOT NULL,
  `File_Size` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `Details` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `games`
--

INSERT INTO `games` (`id_games`, `Title`, `Genre`, `Developer`, `Publisher`, `Release_Date`, `File_Size`, `Price`, `Link`, `Details`, `img`) VALUES
('001-GOW', 'God of War', 'Action, Adventure, RPG', 'Santa Monica Studio', 'Playstation Studios', '2022-01-15', 28, 700000, 'https://store.steampowered.com/app/1593500/God_of_War/?curator_clanid=40425349', 'Enter the Norse realmHis vengeance against the Gods of Olympus years behind him, Kratos now lives as a man in the realm of Norse Gods and monsters. It is in this harsh, unforgiving world that he must fight to survive… and teach his son to do the same.Grasp a second chanceKratos is a father again. As mentor and protector to Atreus, a son determined to earn his respect, he is forced to deal with and control the rage that has long defined him while out in a very dangerous world with his son.Journey to a dark, elemental world of fearsome creaturesFrom the marble and columns of ornate Olympus to the gritty forests, mountains and caves of pre-Viking Norse lore, this is a distinctly new realm with its own pantheon of creatures, monsters and gods.Engage in visceral, physical combatWith an over the shoulder camera that brings the player closer to the action than ever before, fights in God of War™ mirror the pantheon of Norse creatures Kratos will face: grand, gritty and grueling. A new main weapon and new abilities retain the defining spirit of the God of War series while presenting a vision of conflict that forges new ground in the genre.', 'https://image.api.playstation.com/vulcan/img/rnd/202010/2217/LsaRVLF2IU2L1FNtu9d3MKLq.jpg'),
('002-FFVIIREMAKE', 'Final Fantasy VII Remake', 'Action, Adventure, RPG', 'Square Enix', 'Square Enix', '2021-12-16', 98, 1000000, 'https://www.epicgames.com/store/en-US/p/final-fantasy-vii-remake-intergrade', 'By exploiting mako, the life-blood of the planet, through their mako reactors, the Shinra Electric Power Company has all but seized control of the entire world. A ragtag group of idealists, known as Avalanche, are one of the last bastions of resistance.\r\nCloud, an elite SOLDIER operative-turned-mercenary takes part in an Avalanche operation to destroy Mako Reactor 1 in the city of Midgar.\r\n\r\nThe bombing plunges the city into fiery chaos, and Cloud is tormented by visions of a bitter enemy long thought dead.\r\nOnce more begins a story that will shape the destiny of an entire world.\r\n\r\nThis game is a remake of FINAL FANTASY VII, first released in 1997.\r\n\r\nThe first title in a multi-part series, it is based on the story from the original game, up to the escape from Midgar, adding in new elements.', 'https://cdn1.epicgames.com/offer/6f43ab8025ad42d18510aa91e9eb688b/EGS_FINALFANTASYVIIREMAKEINTERGRADE_SquareEnix_S1_2560x1440-85f829541a833442eaace75d02e0f07d'),
('003-FH5', 'Forza Horizon 5', 'Racing', 'Playground Games', 'Xbox Game Studios', '2021-11-09', 88, 600000, 'https://store.steampowered.com/app/1551360/Forza_Horizon_5/', 'Your Ultimate Horizon Adventure awaits! Explore the vibrant and ever-evolving open world landscapes of Mexico with limitless, fun driving action in hundreds of the world’s greatest cars.\r\nThis is Your Horizon Adventure\r\nLead breathtaking expeditions across the vibrant and ever-evolving open world landscapes of Mexico with limitless, fun driving action in hundreds of the world’s greatest cars.\r\n\r\nThis is a Diverse Open World\r\nExplore a world of striking contrast and beauty. Discover living deserts, lush jungles, historic cities, hidden ruins, pristine beaches, vast canyons and a towering snow-capped volcano.\r\n\r\nThis is an Adventurous Open World\r\nImmerse yourself in a deep campaign with hundreds of challenges that reward you for engaging in the activities you love. Meet new characters and choose the outcomes of their Horizon Story missions.\r\n\r\nThis is an Evolving Open World\r\nTake on awe-inspiring weather events such as towering dust storms and intense tropical storms as Mexico’s unique, dynamic seasons change the world every week. Keep coming back for new events, challenges, collectibles, and rewards, and new areas to explore. No two seasons will ever be the same.\r\n\r\nThis is a Social Open World\r\nTeam up with other players and enter the Horizon Arcade for a continuing series of fun, over-the-top challenges that keep you and your friends in the action and having fun with no menus, loading screens or lobbies. Meet new friends in Horizon Open and Tours and share your creations with new community gift sharing.\r\n\r\nThis is Your Open World\r\nCreate your own expressions of fun with the powerful new EventLab gameplay toolset including custom races, challenges, stunts, and entirely new game modes. Customize your cars in more ways than ever before with new options such as the ability open and close convertible tops, paint brake calipers, and more. Use the new Gift Drops feature to share your custom creations with the community.', 'https://www.gamespot.com/a/uploads/original/1179/11799911/3909043-10m.jpeg'),
('004-RDR2', 'Red Dead Redemption 2', 'Action, Adventure, Shooter', 'Rockstar Games', 'Take Two Interactive', '2020-08-07', 103, 300000, 'https://store.steampowered.com/app/1174180/Red_Dead_Redemption_2/', 'America, 1899.\r\n\r\nArthur Morgan and the Van der Linde gang are outlaws on the run. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.\r\n\r\nNow featuring additional Story Mode content and a fully-featured Photo Mode, Red Dead Redemption 2 also includes free access to the shared living world of Red Dead Online, where players take on an array of roles to carve their own unique path on the frontier as they track wanted criminals as a Bounty Hunter, create a business as a Trader, unearth exotic treasures as a Collector or run an underground distillery as a Moonshiner and much more.\r\n\r\nWith all new graphical and technical enhancements for deeper immersion, Red Dead Redemption 2 for PC takes full advantage of the power of the PC to bring every corner of this massive, rich and detailed world to life including increased draw distances; higher quality global illumination and ambient occlusion for improved day and night lighting; improved reflections and deeper, higher resolution shadows at all distances; tessellated tree textures and improved grass and fur textures for added realism in every plant and animal.\r\n\r\nRed Dead Redemption 2 for PC also offers HDR support, the ability to run high-end display setups with 4K resolution and beyond, multi-monitor configurations, widescreen configurations, faster frame rates and more.', 'https://cdn-ext.fanatical.com/production/product/1280x720/24a790d3-2e54-4c96-be13-8673f34d1aad.jpeg'),
('006-DG', 'Days Gone', 'Action, Adventure', 'Bend Studio', 'Playstation Studios', '2021-05-18', 33, 700000, 'https://store.steampowered.com/app/1259420/Days_Gone/', 'Days Gone is an open-world action-adventure game set in a harsh wilderness two years after a devastating global pandemic.\r\nStep into the dirt flecked shoes of former outlaw biker Deacon St. John, a bounty hunter trying to find a reason to live in a land surrounded by death. Scavenge through abandoned settlements for equipment to craft valuable items and weapons, or take your chances with other survivors trying to eke out a living through fair trade… or more violent means.', 'https://gamezero.id/wp-content/uploads/2021/05/days-gone-sudah-bisa-dimainkan-di-Xbox.jpg'),
('007-HZD', 'Horizon Zero Down', 'Action, Adventure, RPG', 'Guerilla', 'Playstation Studios', '2020-08-07', 71, 150000, 'https://store.steampowered.com/app/1151640/Horizon_Zero_Dawn_Complete_Edition/', 'Experience Aloy’s entire legendary quest to unravel the mysteries of a world ruled by deadly Machines.  An outcast from her tribe, the young hunter fights to uncover her past, discover her destiny… and stop a catastrophic threat to the future.  Unleash devastating, tactical attacks against unique Machines and rival tribes as you explore an open world teeming with wildlife and danger.  Horizon Zero Dawn™ is a multi-award-winning action role-playing game – and this Complete Edition for PC includes the huge expansion The Frozen Wilds, featuring new lands, skills, weapons and Machines.', 'https://cdn1.epicgames.com/3328b08ac1c14540aa265a1a85c07839/offer/hzd_wide-2560x1440-bd312be05c49cf339097777c493cb899.jpg'),
('008-DMC5', 'Devil May Cry 5', 'Action, Adventure', 'CAPCOM', 'CAPCOM', '2019-03-08', 39, 400000, 'https://store.steampowered.com/app/601150/Devil_May_Cry_5/', 'The Devil you know returns in this brand new entry in the over-the-top action series available on the PC. Prepare to get downright demonic with this signature blend of high-octane stylized action and otherworldly & original characters the series is known for. Director Hideaki Itsuno and the core team have returned to create the most insane, technically advanced and utterly unmissable action experience of this generation!  The threat of demonic power has returned to menace the world once again in Devil May Cry 5. The invasion begins when the seeds of a “demon tree” take root in Red Grave City. As this hellish incursion starts to take over the city, a young demon hunter Nero, arrives with his partner Nico in their “Devil May Cry” motorhome. Finding himself without the use of his right arm, Nero enlists Nico, a self-professed weapons artist, to design a variety of unique mechanical Devil Breaker arms to give him extra powers to take on evil demons such as the blood sucking flying Empusa and giant colossus enemy Goliath.', 'https://resource.supercheats.com/library/2019/1551958230devilmaycry5header.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id_games`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
