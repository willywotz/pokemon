START TRANSACTION;
CREATE TABLE IF NOT EXISTS "user" (
	"id"	INTEGER NOT NULL,
	"username"	VARCHAR(50) NOT NULL,
	"email"	VARCHAR(50) NOT NULL,
	"password"	VARCHAR(100) NOT NULL,
	"fname"	VARCHAR(25),
	"lname"	VARCHAR(25),
	"avatar"	VARCHAR(50),
	UNIQUE("email"),
	UNIQUE("username"),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "pokemon" (
	"id"	INTEGER NOT NULL,
	"pname"	VARCHAR(15) NOT NULL,
	"height"	VARCHAR(15) NOT NULL,
	"weight"	VARCHAR(15) NOT NULL,
	"description"	TEXT NOT NULL,
	"picture"	VARCHAR(100) NOT NULL,
	UNIQUE("pname"),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "pokedex" (
	"type_id"	INTEGER NOT NULL,
	"pokemon_id"	INTEGER NOT NULL,
	FOREIGN KEY("pokemon_id") REFERENCES "pokemon"("id"),
	FOREIGN KEY("type_id") REFERENCES "type"("id"),
	PRIMARY KEY("type_id","pokemon_id")
);
CREATE TABLE IF NOT EXISTS "alembic_version" (
	"version_num"	VARCHAR(32) NOT NULL,
	CONSTRAINT "alembic_version_pkc" PRIMARY KEY("version_num")
);
CREATE TABLE IF NOT EXISTS "type" (
	"id"	INTEGER NOT NULL,
	"tname"	VARCHAR(10) NOT NULL,
	"color1"	VARCHAR(6),
	"color2"	VARCHAR(6),
	"colort"	VARCHAR(6),
	UNIQUE("tname"),
	PRIMARY KEY("id")
);
INSERT INTO "user" VALUES (1,'admin','admin@gmail.com','$2b$12$BgzfsTlkWh2q05CppJisbu0G2ggjM1pKgWP.wBGH3S04xXZVmMEN6',NULL,NULL,NULL);
INSERT INTO "user" VALUES (2,'willywotz','willywotz@willywotz','$2b$12$HH0dvrOQOk/h5sMiY.TvGu5SEyu6xx/fR0x8orIz6LMs2od8xx5fW',NULL,NULL,NULL);
INSERT INTO "pokemon" VALUES (1,'Poliwrath','4'' 03"','119.0 lbs','Although it’s skilled in a style of dynamic swimming that uses all its muscles, for some reason it lives on dry land.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/062.png');
INSERT INTO "pokemon" VALUES (2,'Eternatus','65'' 07"','2094.4 lbs','The core on its chest absorbs energy emanating from the lands of the Galar region. This energy is what allows Eternatus to stay active.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/890.png');
INSERT INTO "pokemon" VALUES (3,'Bulbasaur','2'' 04"','15.2 lbs','For some time after its birth, it uses the nutrients that are packed into the seed on its back in order to grow.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png');
INSERT INTO "pokemon" VALUES (4,'Ivysaur','3'' 03"','28.7 lbs','The more sunlight Ivysaur bathes in, the more strength wells up within it, allowing the bud on its back to grow larger.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png');
INSERT INTO "pokemon" VALUES (5,'Venusaur','6'' 07"','220.5 lbs','While it basks in the sun, it can convert the light into energy. As a result, it is more powerful in the summertime.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png');
INSERT INTO "pokemon" VALUES (6,'Charmander','2'' 00"','18.7 lbs','The flame on its tail shows the strength of its life-force. If Charmander is weak, the flame also burns weakly.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png');
INSERT INTO "pokemon" VALUES (7,'Charmeleon','3'' 07"','41.9 lbs','When it swings its burning tail, the temperature around it rises higher and higher, tormenting its opponents.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png');
INSERT INTO "pokemon" VALUES (8,'Charizard','5'' 07"','199.5 lbs','If Charizard becomes truly angered, the flame at the tip of its tail burns in a light blue shade.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png');
INSERT INTO "pokemon" VALUES (9,'Oshawott','1'' 08"','13.0 lbs','It wields the scalchop on its stomach like a knife, blocking the moves of its enemies before slashing back at them in swift retaliation.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/501.png');
INSERT INTO "pokemon" VALUES (10,'Dewott','2'' 07"','54.0 lbs','It’s said that people modeled swordplay after the way Dewott’s movements flow like water while it’s wielding its two scalchops.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/502.png');
INSERT INTO "pokemon" VALUES (11,'Samurott','4'' 11"','208.6 lbs','A master of a sword-drawing art called iaijutsu, Samurott settles its battles with a single swing of either large sword sheathed in its foreleg armor.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/503.png');
INSERT INTO "pokemon" VALUES (12,'Patrat','1'' 08"','25.6 lbs','Using food stored in cheek pouches, they can keep watch for days. They use their tails to communicate with others.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/504.png');
INSERT INTO "pokemon" VALUES (13,'Watchog','3'' 07"','59.5 lbs','Using luminescent matter, it makes its eyes and body glow and stuns attacking opponents.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/505.png');
INSERT INTO "pokemon" VALUES (14,'Lillipup','1'' 04"','9.0 lbs','This Pokémon is courageous but also cautious. It uses the soft fur covering its face to collect information about its surroundings.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/506.png');
INSERT INTO "pokemon" VALUES (15,'Herdier','2'' 11"','32.4 lbs','Herdier is a very smart and friendly Pokémon. So much so that there’s a theory that Herdier was the first Pokémon to partner with people.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/507.png');
INSERT INTO "pokemon" VALUES (16,'Sylveon','3'' 03"','51.8 lbs','This Pokémon uses its ribbonlike feelers to send a soothing aura into its opponents, erasing their hostility.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/700.png');
INSERT INTO "pokemon" VALUES (17,'Hawlucha','2'' 07"','47.4 lbs','Its elegant finishing moves—performed by nimbly leaping around using its wings—are polished in the forest where it was born and raised.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/701.png');
INSERT INTO "pokemon" VALUES (18,'Dedenne','0'' 08"','4.9 lbs','It’s small and its electricity-generating organ is not fully developed, so it uses its tail to absorb electricity from people’s homes and charge itself.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/702.png');
INSERT INTO "pokemon" VALUES (19,'Carbink','1'' 00"','12.6 lbs','It has slept underground for hundreds of millions of years since its birth. It’s occasionally found during the excavation of caves.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/703.png');
INSERT INTO "pokemon" VALUES (20,'Goomy','1'' 00"','6.2 lbs','Most of a Goomy’s body is water. A membrane covers the whole Pokémon to prevent it from shriveling up in dry weather.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/704.png');
INSERT INTO "pokemon" VALUES (21,'Sliggoo','2'' 07"','38.6 lbs','The swirly protrusion on its back is filled with all its vital organs, such as its brain and heart.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/705.png');
INSERT INTO "pokemon" VALUES (22,'Goodra','6'' 07"','331.8 lbs','It loves the rain. This mellow Pokémon can be seen walking around on the plains and in the mountains on rainy days.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/706.png');
INSERT INTO "pokemon" VALUES (23,'Klefki','0'' 08"','6.6 lbs','Once it absorbs a key’s metal ions, it discards the key without a second thought. However, it will hang on to keys it favors for decades.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/707.png');
INSERT INTO "pokemon" VALUES (24,'Phantump','1'' 04"','15.4 lbs','Legend tells that its green leaves can cure any illness. When plucked, however, the leaves will instantly wither away.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/708.png');
INSERT INTO "pokemon" VALUES (25,'Trevenant','4'' 11"','156.5 lbs','Using its roots, Trevenant connects itself to trees and monitors every corner of its forest. It uses curses to drive intruders away.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/709.png');
INSERT INTO "pokemon" VALUES (26,'Pumpkaboo','1'' 04"','11.0 lbs','Spirits that wander this world are placed into Pumpkaboo’s body. They’re then moved on to the afterlife.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/710.png');
INSERT INTO "pokemon" VALUES (27,'Bergmite','3'' 03"','219.4 lbs','They live in mountainous regions of frigid cold. On rare occasions, they ride on the back of an Avalugg to cross seas and move to new habitats.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/712.png');
INSERT INTO "pokemon" VALUES (28,'Avalugg','6'' 07"','1113.3 lbs','As Avalugg walks along with Bergmite on its back, it comes across pods of Cetitan. It lets them pass to avoid conflict.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/713.png');
INSERT INTO "pokemon" VALUES (29,'Noibat','1'' 08"','17.6 lbs','This Pokémon emits ultrasonic waves from its large ears to search for fruit to eat. It mistakes Applin for its food.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/714.png');
INSERT INTO "pokemon" VALUES (30,'Noivern','4'' 11"','187.4 lbs','Ultrasonic waves emitted by a Noivern can pulverize a large boulder. This Pokémon has a cruel disposition.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/715.png');
INSERT INTO "pokemon" VALUES (31,'Xerneas','9'' 10"','474.0 lbs','Legends say it can share eternal life. It slept for a thousand years in the form of a tree before its revival.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/716.png');
INSERT INTO "pokemon" VALUES (32,'Yveltal','19'' 00"','447.5 lbs','When this legendary Pokémon’s wings and tail feathers spread wide and glow red, it absorbs the life force of living creatures.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/717.png');
INSERT INTO "pokemon" VALUES (33,'Diancie','2'' 04"','19.4 lbs','A sudden transformation of Carbink, its pink, glimmering body is said to be the loveliest sight in the whole world.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/719.png');
INSERT INTO "pokemon" VALUES (34,'Hoopa','1'' 08"','19.8 lbs','In its true form, it possesses a huge amount of power. Legends of its avarice tell how it once carried off an entire castle to gain the treasure hidden within.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/720.png');
INSERT INTO "pokemon" VALUES (35,'Volcanion','5'' 07"','429.9 lbs','It lets out billows of steam and disappears into the dense fog. It’s said to live in mountains where humans do not tread.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/721.png');
INSERT INTO "pokemon" VALUES (36,'Dartrix','2'' 04"','35.3 lbs','This narcissistic Pokémon is a clean freak. If you don’t groom it diligently, it may stop listening to you.','https://assets.pokemon.com/assets/cms2/img/pokedex/full/723.png');
INSERT INTO "pokedex" VALUES (3,1);
INSERT INTO "pokedex" VALUES (10,1);
INSERT INTO "pokedex" VALUES (7,2);
INSERT INTO "pokedex" VALUES (2,2);
INSERT INTO "pokedex" VALUES (2,3);
INSERT INTO "pokedex" VALUES (17,3);
INSERT INTO "pokedex" VALUES (17,4);
INSERT INTO "pokedex" VALUES (2,4);
INSERT INTO "pokedex" VALUES (2,5);
INSERT INTO "pokedex" VALUES (17,5);
INSERT INTO "pokedex" VALUES (4,6);
INSERT INTO "pokedex" VALUES (4,7);
INSERT INTO "pokedex" VALUES (4,8);
INSERT INTO "pokedex" VALUES (6,8);
INSERT INTO "pokedex" VALUES (3,9);
INSERT INTO "pokedex" VALUES (3,10);
INSERT INTO "pokedex" VALUES (3,11);
INSERT INTO "pokedex" VALUES (8,12);
INSERT INTO "pokedex" VALUES (8,13);
INSERT INTO "pokedex" VALUES (8,14);
INSERT INTO "pokedex" VALUES (8,15);
INSERT INTO "pokedex" VALUES (11,16);
INSERT INTO "pokedex" VALUES (10,17);
INSERT INTO "pokedex" VALUES (6,17);
INSERT INTO "pokedex" VALUES (14,18);
INSERT INTO "pokedex" VALUES (11,18);
INSERT INTO "pokedex" VALUES (11,19);
INSERT INTO "pokedex" VALUES (1,19);
INSERT INTO "pokedex" VALUES (7,20);
INSERT INTO "pokedex" VALUES (7,21);
INSERT INTO "pokedex" VALUES (7,22);
INSERT INTO "pokedex" VALUES (13,23);
INSERT INTO "pokedex" VALUES (11,23);
INSERT INTO "pokedex" VALUES (17,24);
INSERT INTO "pokedex" VALUES (16,24);
INSERT INTO "pokedex" VALUES (17,25);
INSERT INTO "pokedex" VALUES (16,25);
INSERT INTO "pokedex" VALUES (16,26);
INSERT INTO "pokedex" VALUES (17,26);
INSERT INTO "pokedex" VALUES (18,27);
INSERT INTO "pokedex" VALUES (18,28);
INSERT INTO "pokedex" VALUES (7,29);
INSERT INTO "pokedex" VALUES (6,29);
INSERT INTO "pokedex" VALUES (7,30);
INSERT INTO "pokedex" VALUES (6,30);
INSERT INTO "pokedex" VALUES (11,31);
INSERT INTO "pokedex" VALUES (9,32);
INSERT INTO "pokedex" VALUES (6,32);
INSERT INTO "pokedex" VALUES (11,33);
INSERT INTO "pokedex" VALUES (1,33);
INSERT INTO "pokedex" VALUES (16,34);
INSERT INTO "pokedex" VALUES (15,34);
INSERT INTO "pokedex" VALUES (4,35);
INSERT INTO "pokedex" VALUES (3,35);
INSERT INTO "pokedex" VALUES (6,36);
INSERT INTO "pokedex" VALUES (17,36);
INSERT INTO "type" VALUES (1,'Rock','a38c21','a38c21','ffffff');
INSERT INTO "type" VALUES (2,'Poison','b97fc9','b97fc9','ffffff');
INSERT INTO "type" VALUES (3,'Water','4592c4','4592c4','ffffff');
INSERT INTO "type" VALUES (4,'Fire','fd7d24','fd7d24','ffffff');
INSERT INTO "type" VALUES (5,'Ground','f7de3f','ab9842','000000');
INSERT INTO "type" VALUES (6,'Flying','3dc7ef','bdb9b8','000000');
INSERT INTO "type" VALUES (7,'Dragon','53a4cf','f16e57','ffffff');
INSERT INTO "type" VALUES (8,'Normal','a4acaf','a4acaf','000000');
INSERT INTO "type" VALUES (9,'Dark','707070','707070','ffffff');
INSERT INTO "type" VALUES (10,'Fighting','d56723','d56723','ffffff');
INSERT INTO "type" VALUES (11,'Fairy','fdb9e9','fdb9e9','000000');
INSERT INTO "type" VALUES (12,'Bug','729f3f','729f3f','ffffff');
INSERT INTO "type" VALUES (13,'Steel','9eb7b8','9eb7b8','000000');
INSERT INTO "type" VALUES (14,'Electric','eed535','eed535','000000');
INSERT INTO "type" VALUES (15,'Psychic','f366b9','f366b9','ffffff');
INSERT INTO "type" VALUES (16,'Ghost','7b62a3','7b62a3','ffffff');
INSERT INTO "type" VALUES (17,'Grass','9bcc50','9bcc50','000000');
INSERT INTO "type" VALUES (18,'Ice','51c4e7','51c4e7','000000');
COMMIT;
