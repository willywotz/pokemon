-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokedex`
--

DROP TABLE IF EXISTS `pokedex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokedex` (
  `type_id` tinyint(4) DEFAULT NULL,
  `pokemon_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokedex`
--

LOCK TABLES `pokedex` WRITE;
/*!40000 ALTER TABLE `pokedex` DISABLE KEYS */;
INSERT INTO `pokedex` VALUES (1,19),(1,33),(2,2),(2,3),(2,4),(2,5),(3,1),(3,9),(3,10),(3,11),(3,35),(4,6),(4,7),(4,8),(4,35),(6,8),(6,17),(6,29),(6,30),(6,32),(6,36),(7,2),(7,20),(7,21),(7,22),(7,29),(7,30),(8,12),(8,13),(8,14),(8,15),(9,32),(10,1),(10,17),(11,16),(11,18),(11,19),(11,23),(11,31),(11,33),(13,23),(14,18),(15,34),(16,24),(16,25),(16,26),(16,34),(17,3),(17,4),(17,5),(17,24),(17,25),(17,26),(17,36),(18,27),(18,28);
/*!40000 ALTER TABLE `pokedex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon` (
  `id` tinyint(4) DEFAULT NULL,
  `pname` varchar(10) DEFAULT NULL,
  `height` varchar(7) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `description` varchar(159) DEFAULT NULL,
  `picture` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Poliwrath','4\' 03\"','119.0 lbs','Although it’s skilled in a style of dynamic swimming that uses all its muscles, for some reason it lives on dry land.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/062.png'),(2,'Eternatus','65\' 07\"','2094.4 lbs','The core on its chest absorbs energy emanating from the lands of the Galar region. This energy is what allows Eternatus to stay active.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/890.png'),(3,'Bulbasaur','2\' 04\"','15.2 lbs','For some time after its birth, it uses the nutrients that are packed into the seed on its back in order to grow.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png'),(4,'Ivysaur','3\' 03\"','28.7 lbs','The more sunlight Ivysaur bathes in, the more strength wells up within it, allowing the bud on its back to grow larger.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png'),(5,'Venusaur','6\' 07\"','220.5 lbs','While it basks in the sun, it can convert the light into energy. As a result, it is more powerful in the summertime.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png'),(6,'Charmander','2\' 00\"','18.7 lbs','The flame on its tail shows the strength of its life-force. If Charmander is weak, the flame also burns weakly.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png'),(7,'Charmeleon','3\' 07\"','41.9 lbs','When it swings its burning tail, the temperature around it rises higher and higher, tormenting its opponents.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png'),(8,'Charizard','5\' 07\"','199.5 lbs','If Charizard becomes truly angered, the flame at the tip of its tail burns in a light blue shade.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png'),(9,'Oshawott','1\' 08\"','13.0 lbs','It wields the scalchop on its stomach like a knife, blocking the moves of its enemies before slashing back at them in swift retaliation.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/501.png'),(10,'Dewott','2\' 07\"','54.0 lbs','It’s said that people modeled swordplay after the way Dewott’s movements flow like water while it’s wielding its two scalchops.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/502.png'),(11,'Samurott','4\' 11\"','208.6 lbs','A master of a sword-drawing art called iaijutsu, Samurott settles its battles with a single swing of either large sword sheathed in its foreleg armor.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/503.png'),(12,'Patrat','1\' 08\"','25.6 lbs','Using food stored in cheek pouches, they can keep watch for days. They use their tails to communicate with others.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/504.png'),(13,'Watchog','3\' 07\"','59.5 lbs','Using luminescent matter, it makes its eyes and body glow and stuns attacking opponents.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/505.png'),(14,'Lillipup','1\' 04\"','9.0 lbs','This Pokémon is courageous but also cautious. It uses the soft fur covering its face to collect information about its surroundings.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/506.png'),(15,'Herdier','2\' 11\"','32.4 lbs','Herdier is a very smart and friendly Pokémon. So much so that there’s a theory that Herdier was the first Pokémon to partner with people.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/507.png'),(16,'Sylveon','3\' 03\"','51.8 lbs','This Pokémon uses its ribbonlike feelers to send a soothing aura into its opponents, erasing their hostility.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/700.png'),(17,'Hawlucha','2\' 07\"','47.4 lbs','Its elegant finishing moves—performed by nimbly leaping around using its wings—are polished in the forest where it was born and raised.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/701.png'),(18,'Dedenne','0\' 08\"','4.9 lbs','It’s small and its electricity-generating organ is not fully developed, so it uses its tail to absorb electricity from people’s homes and charge itself.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/702.png'),(19,'Carbink','1\' 00\"','12.6 lbs','It has slept underground for hundreds of millions of years since its birth. It’s occasionally found during the excavation of caves.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/703.png'),(20,'Goomy','1\' 00\"','6.2 lbs','Most of a Goomy’s body is water. A membrane covers the whole Pokémon to prevent it from shriveling up in dry weather.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/704.png'),(21,'Sliggoo','2\' 07\"','38.6 lbs','The swirly protrusion on its back is filled with all its vital organs, such as its brain and heart.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/705.png'),(22,'Goodra','6\' 07\"','331.8 lbs','It loves the rain. This mellow Pokémon can be seen walking around on the plains and in the mountains on rainy days.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/706.png'),(23,'Klefki','0\' 08\"','6.6 lbs','Once it absorbs a key’s metal ions, it discards the key without a second thought. However, it will hang on to keys it favors for decades.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/707.png'),(24,'Phantump','1\' 04\"','15.4 lbs','Legend tells that its green leaves can cure any illness. When plucked, however, the leaves will instantly wither away.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/708.png'),(25,'Trevenant','4\' 11\"','156.5 lbs','Using its roots, Trevenant connects itself to trees and monitors every corner of its forest. It uses curses to drive intruders away.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/709.png'),(26,'Pumpkaboo','1\' 04\"','11.0 lbs','Spirits that wander this world are placed into Pumpkaboo’s body. They’re then moved on to the afterlife.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/710.png'),(27,'Bergmite','3\' 03\"','219.4 lbs','They live in mountainous regions of frigid cold. On rare occasions, they ride on the back of an Avalugg to cross seas and move to new habitats.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/712.png'),(28,'Avalugg','6\' 07\"','1113.3 lbs','As Avalugg walks along with Bergmite on its back, it comes across pods of Cetitan. It lets them pass to avoid conflict.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/713.png'),(29,'Noibat','1\' 08\"','17.6 lbs','This Pokémon emits ultrasonic waves from its large ears to search for fruit to eat. It mistakes Applin for its food.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/714.png'),(30,'Noivern','4\' 11\"','187.4 lbs','Ultrasonic waves emitted by a Noivern can pulverize a large boulder. This Pokémon has a cruel disposition.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/715.png'),(31,'Xerneas','9\' 10\"','474.0 lbs','Legends say it can share eternal life. It slept for a thousand years in the form of a tree before its revival.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/716.png'),(32,'Yveltal','19\' 00\"','447.5 lbs','When this legendary Pokémon’s wings and tail feathers spread wide and glow red, it absorbs the life force of living creatures.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/717.png'),(33,'Diancie','2\' 04\"','19.4 lbs','A sudden transformation of Carbink, its pink, glimmering body is said to be the loveliest sight in the whole world.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/719.png'),(34,'Hoopa','1\' 08\"','19.8 lbs','In its true form, it possesses a huge amount of power. Legends of its avarice tell how it once carried off an entire castle to gain the treasure hidden within.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/720.png'),(35,'Volcanion','5\' 07\"','429.9 lbs','It lets out billows of steam and disappears into the dense fog. It’s said to live in mountains where humans do not tread.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/721.png'),(36,'Dartrix','2\' 04\"','35.3 lbs','This narcissistic Pokémon is a clean freak. If you don’t groom it diligently, it may stop listening to you.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/723.png');
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` tinyint(4) DEFAULT NULL,
  `tname` varchar(8) DEFAULT NULL,
  `color1` varchar(6) DEFAULT NULL,
  `color2` varchar(6) DEFAULT NULL,
  `colort` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Rock','a38c21','a38c21','ffffff'),(2,'Poison','b97fc9','b97fc9','ffffff'),(3,'Water','4592c4','4592c4','ffffff'),(4,'Fire','fd7d24','fd7d24','ffffff'),(5,'Ground','f7de3f','ab9842','000000'),(6,'Flying','3dc7ef','bdb9b8','000000'),(7,'Dragon','53a4cf','f16e57','ffffff'),(8,'Normal','a4acaf','a4acaf','000000'),(9,'Dark','707070','707070','ffffff'),(10,'Fighting','d56723','d56723','ffffff'),(11,'Fairy','fdb9e9','fdb9e9','000000'),(12,'Bug','729f3f','729f3f','ffffff'),(13,'Steel','9eb7b8','9eb7b8','000000'),(14,'Electric','eed535','eed535','000000'),(15,'Psychic','f366b9','f366b9','ffffff'),(16,'Ghost','7b62a3','7b62a3','ffffff'),(17,'Grass','9bcc50','9bcc50','000000'),(18,'Ice','51c4e7','51c4e7','000000');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` tinyint(4) DEFAULT NULL,
  `username` varchar(9) DEFAULT NULL,
  `email` varchar(19) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `fname` varchar(0) DEFAULT NULL,
  `lname` varchar(0) DEFAULT NULL,
  `avatar` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin@gmail.com','$2b$12$BgzfsTlkWh2q05CppJisbu0G2ggjM1pKgWP.wBGH3S04xXZVmMEN6','','',''),(2,'willywotz','willywotz@willywotz','$2b$12$HH0dvrOQOk/h5sMiY.TvGu5SEyu6xx/fR0x8orIz6LMs2od8xx5fW','','','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-11 11:56:59
