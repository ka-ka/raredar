--------------------------------------------------------------------------------
-- Rare mob data table used for determining whether a mob is rare or not.
--------------------------------------------------------------------------------

-- A table of all the rare mobs.
-- Format of the info struct is:
-- [1] zone name
-- [2] area name within zone, or "" if no area name
-- [3] X coordinate
-- [4] Y coordinate
-- [5] (optional) index within zone to "tab" through - allows navigation paths to be built
-- [6] will be set to the rare name within radarbutton.lua
-- [7] will be set to the "done" field of achievement details in init function in event.lua

RareDar_rares = {
   ["English"] = {
["Raging Warmachine"]=                  {"Terminus",                           "Koke's Hold",                699,      1084},
["Defiant Assassin"]=                   {"Mathosia",                           "Bloodmurk Grove",            1075,     1087},
["Gizzit"]=                             {"Freemarch",                          "",                           7100,     5850},
["Augustor"]=                           {"Freemarch",                          "Falsehood Slope",            6198,     5032},
["Tormented Wisp"]=                     {"Freemarch",                          "Lakeside Outpost",           6036,     5698},
["Crepit Pokeit"]=                      {"Freemarch",                          "Smith's Haven",              7322,     5057},
["Sea Scuttler"]=                       {"Freemarch",                          "Fortune's End",              7209,     4988},
["Gogrol"]=                             {"Freemarch",                          "Warden's Rise",              6904,     5626},
["Azagamara"]=                          {"Freemarch",                          "Savage Hill",                7164,     5789},
["Vengeful Spirit"]=                    {"Silverwood",                         "Palisade",                   6350,     2645},
["Brod"]=                               {"Silverwood",                         "Treants' Grove",             6445,     2921},
["Marlrog"]=                            {"Silverwood",                         "",                           6812,     3200},
["Mok"]=                                {"Silverwood",                         "",                           7117,     3225},
["Pandora"]=                            {"Silverwood",                         "Suncrest Rise",              7107,     3476},
["Pentheus"]=                           {"Silverwood",                         "Hedgerow Court",             6585,     2585},
["Silverwood Werewolf"]=                {"Silverwood",                         "",                           5800,     2700},
["Bahezerk"]=                           {"Stonefield",                         "",                           4428,     5065},
["Boneseeker"]=                         {"Stonefield",                         "Stonefield Prairie",         4740,     5285},
["Gnarvul"]=                            {"Stonefield",                         "Temblor Hills",              5442,     4899},
["Gorehorn the Mighty"]=                {"Stonefield",                         "Stonefield Prairie",         5984,     4434},
["Gormungun"]=                          {"Stonefield",                         "Stonefield Prairie",         4768,     5107},
["Lothuu the Sad"]=                     {"Stonefield",                         "Stonefield Prairie",         5764,     4591},
["Nela Valcuthren"]=                    {"Stonefield",                         "Stonefield Prairie",         5880,     4830},
["Questing Overseer"]=                  {"Stonefield",                         "Quarrystone Basin",          5650,     4950},
["Rendfang"]=                           {"Stonefield",                         "Stonefield Prairie",         5766,     4499},
["Sentient Cruor"]=                     {"Stonefield",                         "Stonefield Prairie",         4508,     5502},
["Stone Rend"]=                         {"Stonefield",                         "",                           4811,    	5132},
["Stridal"]=                            {"Stonefield",                         "Stonefield Prairie",         5200,     4875},
["Xoxtillus"]=                          {"Stonefield",                         "Stonefield Prairie",         5897,     4494},
["XT-300"]=                             {"Stonefield",                         "Stonefield Prairie",         5170,   	4967},
["Browncap Cutter"]=                    {"Gloamwood",                          "Gnarlwood Post",             5212,     2461},
["Dozer"]=                              {"Gloamwood",                          "Mathosian Mill",             4336,     2336},
["Gnarl Nighthunter"]=                  {"Gloamwood",                          "Gnarlwood Post",             5313,     2813},
["Lunar Shadestalker"]=                 {"Gloamwood",                          "Shadefallen Towers",         4610,     2488},
["Millrush Moonstalker"]=               {"Gloamwood",                          "Millrush Pond",              4188,     2700},
["Scald"]=                              {"Gloamwood",                          "Darkening Deeps",            4950,     2145},
["Scarbite"]=                           {"Gloamwood",                          "Millrush Pond",              4164,     2838},
["Stalker of Tears"]=                   {"Gloamwood",                          "Tearfall Creek",             4687,     2561},
["Stalker of the Grove"]=               {"Gloamwood",                          "Grove of the Ancients",      5354,     2572},
["Xaksha"]=                             {"Gloamwood",                          "Mathosian Mill",             4640,     2380},
["Zatzak Browncap"]=                    {"Gloamwood",                          "Gnarlwood Post",             5212,     2461},
["Nightfang"]=                          {"Scarlet Gorge",                      "Rock Ridge",                 4577,     4425},
["Rockjaw"]=                            {"Scarlet Gorge",                      "Stonecrest",                 4131,     3242},
["Korgek the Breaker"]=                 {"Scarlet Gorge",                      "Ironroot Draw",              4400,     4485},
["Ghorgull"]=                           {"Scarlet Gorge",                      "Stonecrest",                 4434,     3313},
["Quogor"]=                             {"Scarlet Gorge",                      "",                           3840,     2968},
["Gurock"]=                             {"Scarwood Reach",                     "Auld Warden",                3003,     4014},
["Lashtail"]=                           {"Scarwood Reach",                     "Auld Warden",                2969,     3963},
["Rotwhip"]=                            {"Scarwood Reach",                     "Granitewood Crossing",       3990,     4650},
["Shadow Harvester"]=                   {"Scarwood Reach",                     "Granitewood Crossing",       3950,     4675},
["Bloodwhisker"]=                       {"Scarwood Reach",                     "Iron Fall",                  3900,     4300},
["Gravelfist"]=                         {"Scarwood Reach",                     "Iron Fall",                  3692,     4242},
["Nuhtu"]=                              {"Scarwood Reach",                     "Lord's Hall",                2836,     4268},
["Granite Crawler"]=                    {"Scarwood Reach",                     "Granitewood Haunt",          3581,     3976},
["Ironfang"]=                           {"Scarwood Reach",                     "Granitewood Haunt",          3460,     4334},
["Blister"]=                            {"Scarwood Reach",                     "Granitewood Haunt",          3396,     4098},
["Rivetskull"]=                         {"Scarwood Reach",                     "Granitewood Haunt",          3338,     4144},
["Errant Wrecker"]=                     {"Scarwood Reach",                     "Scarwood Lift Summit",       4040,     4186},
["Razorback Terror"]=                   {"Scarwood Reach",                     "Keenblade Mill",             3830,     4020},
["Barbwing"]=                           {"Scarwood Reach",                     "Stone Grove",                3600,     3660},
["Venomspitter"]=                       {"Scarwood Reach",                     "Stone Grove",                3600,     3650},
["Corpsegrinder"]=                      {"Scarwood Reach",                     "Timar Foothills",            2677,     3789},
["Scarbeak"]=                           {"Scarwood Reach",                     "Timar Foothills",            3200,     3700},
["Ahasa"]=                              {"Scarwood Reach",                     "Timar Foothills",            2750,     3800},
["Vasyu"]=                              {"Scarwood Reach",                     "Timar Foothills",            2601,     3849},
["Blackclaw"]=                          {"Scarwood Reach",                     "Trollblight Caverns",        3449,     4412},
["Vilehide"]=                           {"Scarwood Reach",                     "Trollblight Caverns",        3477,     4419},
["Raging Summoner"]=                    {"Moonshade Highlands",                "Acrid Basin",                6310,     1700},
["Razorfang"]=                          {"Moonshade Highlands",                "Blightweald",                5634,     2335},
["Deranged Pyromancer"]=                {"Moonshade Highlands",                "Etched Plains",              5878,     1542},
["Fezziled the Curious"]=               {"Moonshade Highlands",                "Faering Woods",              6435,     2053},
["Nytami"]=                             {"Moonshade Highlands",                "Hammerknell Fortress",       6460,     1349},
["Lugog the Destroyer"]=                {"Moonshade Highlands",                "Howling Hills",              7046,     1753},
["Arumal"]=                             {"Moonshade Highlands",                "Howling Hills",              7100,     1844},
["Aelfwar Emissary"]=                   {"Moonshade Highlands",                "Twilit Stand",               7090,     2152},
["Freddik the Broken"]=                 {"Droughtlands",                       "Trapper's Rest",             7235,     5910},
["Enraged Scarab"]=                     {"Droughtlands",                       "Jagged Fringe",              7520,     6660},
["Mordant Widow"]=                      {"Droughtlands",                       "Mordant Knolls",             8215,     7228},
["Kragnix the Annihilator"]=            {"Droughtlands",                       "Harlan's Lament",            8151,     6813},
["Forgotten Sacrifice"]=                {"Droughtlands",                       "Harlan's Lament",            7950,     6700},
["Glogg the Ravenous"]=                 {"Droughtlands",                       "Spitescar Wash",             8371,     7173},
["Hurknok"]=                            {"Droughtlands",                       "Spitescar Wash",             8285,     7035},
["Koglok"]=                             {"Droughtlands",                       "Spitescar Wash",             8372,     7157},
["Bone-Fed Ripper"]=                    {"Droughtlands",                       "Redoubt",                    8887,     6688},
["Jhomm The Cruel"]=                    {"Droughtlands",                       "Centaurs' Stand",            7968,     6438},
["Netherworld Wanderer"]=               {"Iron Pine Peak",                     "Kestrel's Cry Ravine",       3010,     2230},
["Emissary Kavenik"]=                   {"Iron Pine Peak",                     "Dayblind Hollows",           2081,     2011},
["Frosthide"]=                          {"Iron Pine Peak",                     "The Chancel of Labors",      4625,     1370},
["Arctic Peakstalker"]=                 {"Iron Pine Peak",                     "Cloudbourne Tarn",           4770,     1650},
["Mad Hogger"]=                         {"Iron Pine Peak",                     "Mage's Mark",                7337,     2014},
["Dagda Skullthumper"]=                 {"Iron Pine Peak",                     "Whitefall Passage",          4178,     1959},
["Razormane"]=                          {"Iron Pine Peak",                     "Kestrel's Cry Ravine",       3541,     1810},
["Swirling Tempest"]=                   {"Iron Pine Peak",                     "Howling Caves",              3644,     1560},
["Blackblood Drake"]=                   {"Iron Pine Peak",                     "Mage's Mark",                3730,     2220},
["Frostpaw Mauler"]=                    {"Iron Pine Peak",                     "Cloudbourne Tarn",           4250,     1950},
["The Predator"]=                       {"Shimmersand",                        "Deadman Gorge",              6974,     6472},
["Mangled Exile"]=                      {"Shimmersand",                        "The Oasis",                  6968,     7253},
["Grand Councilman Al'hazeed"]=         {"Shimmersand",                        "Golden Summit",              7348,     7540},
["Lord Scaldwater"]=                    {"Shimmersand",                        "Scaldwater Fields",          6210,     7072},
["Blood Bough"]=                        {"Stillmoor",                          "Blood Grove",                1525,     3365},
["Taziel Kanur"]=                       {"Stillmoor",                          "Briarcliff",                 2415,     2650},
["Thagrux the Unclean"]=                {"Stillmoor",                          "Caer Kholum",                1859,     3427},
["Khromas the Eternal"]=                {"Stillmoor",                          "Death's Approach",           1300,     2640},
["Spineclaw"]=                          {"Stillmoor",                          "Eye of Regulos",             2154,     2596},
["Experimental War Golem"]=             {"Stillmoor",                         "The Endless Citadel",        1140,     2723},
["The Endless Broodmother"]=            {"Stillmoor",                         "Death's Approach",           1329,     2381},
["Jom Turner"]=                         {"Stillmoor",                         "Ravenna",                    2002,     2247},
["Azumel the Screecher"]=               {"Stillmoor",                         "Thalin Tor",                 1727,     2310},
["Acalan"]=             		{"Ember Isle", 			"Abundant Wilds",            12730, 	4500},
["Anato"]=              		{"Ember Isle", 			"Wellspring Flats",          12891, 	3161},
["Argyros"]=            		{"Ember Isle",			"Forlorn Fen",               12961, 	2654},
["Gaian"]=              		{"Ember Isle",			"Temple of Marakris",        14410, 	4284},
["Hyro"]=               		{"Ember Isle", 			"Atia",                      13360, 	4300},
["Kallos"]=             		{"Ember Isle", 			"Fractured Plain",           13275, 	3125},
["Klacus"]=             		{"Ember Isle", 			"Gilded Strand",             13982, 	3256},
["Kleon"]=              		{"Ember Isle", 			"Obsidian Shore",            13878, 	4242},
["Lalia"]=              		{"Ember Isle", 			"Splintered Shallows",       13697, 	2657},
["Ligeia"]=             		{"Ember Isle", 			"Tidewell Inlet",            13072, 	2187},
["Lykos"]=              		{"Ember Isle", 			"Fort Zarnost",              12295, 	3920},
["Myron"]=              		{"Ember Isle", 			"Mount Carcera",             14111,	3606},
["Naeus"]=              		{"Ember Isle", 			"Nykantor Ruins",            13000, 	4000},
["Nereus"]=             		{"Ember Isle", 			"The Stranglewood",          12313, 	3577},
["Nikon"]=              		{"Ember Isle", 			"Searing Brink",             13653, 	3475},
["Osmas"]=              		{"Ember Isle", 			"Talos Landing",             12562, 	3142},
["Phocas"]=             		{"Ember Isle", 			"Kheramos Village",          13650, 	4560},
["Tephra"]=             		{"Ember Isle", 			"Ashen Fault",               13250, 	3465},
["Tricksy"]=            		{"Ember Isle", 			"Fell Fields",               13352, 	3914},
["Thome"]=              		{"Ember Isle", 			"Farhall",                   13482, 	2892},
   },

   ["German"] = {
   ["Tobende Kriegsmaschine"]		=false,
   
   ["Skeptiker-Assassine"]		=false,
   
   ["Seekrabbler"]			={"Freimark",			"",	                      7209,     4988, 1},-- not Glücksend, south of it
   ["Crepit Pokeit"]			={"Freimark",			"",              	      7322,     5057, 2},-- not Schmittshafen
   ["Azagamara"]			={"Freimark",			"",                           7164,     5789, 3},--
   ["Gizzit"]				={"Freimark",			"Wildhügel",		      7100,     5850, 4},--
   ["Gogrol"]				={"Freimark",			"Wachthöhen",                 6904,     5626, 5},--
   ["Gepeinigtes Irrlicht"]		={"Freimark",			"Seeblick-Außenposten",       6036,     5698, 6},--
   ["Augustor"]				={"Freimark",			"",                           6198,     5032, 7},--
 
   ["Rachedurstiger Geist"]		={"Silberwald",			"Palisade",                   6350,     2645},
   ["Brod"]				={"Silberwald",			"Treantenhain",               6445,     2921},
   ["Marlrog"]				={"Silberwald",			"Treantenhain",               6812,     3200},
   ["Mok"]				={"Silberwald",			"Silberküste",		      7117,     3225},
   ["Pandora"]				={"Silberwald",			"Sonngipfel",                 7107,     3476},
   ["Pentheus"]				={"Silberwald",			"Heckenhof",                  6585,     2585},
   ["Silberwald-Werwolf"]		={"Silberwald",			"",                           5800,     2700},

   ["Bahezerk"]				={"Steinfeld",			"Gewaltige Steppen",          4428,     5065, 1},--
   ["Sentient Cruor"]			={"Steinfeld",			"Gewaltige Steppen",          4508,     5502, 2},--
   ["Knochensucher"]			={"Steinfeld",			"Tiefschlag-Ausgrabung",      4740,     5285, 3},--
   ["Gormungun"]			={"Steinfeld",			"Gewaltige Steppen",          4768,     5107, 4},--
   ["Steinspalter"]			={"Steinfeld",			"Gewaltige Steppen",          4811,    	5132, 5},--
   ["XT-300"]				={"Steinfeld",			"Steinfeldprärie",            5170,   	4967, 6},--
   ["Stridal"]				={"Steinfeld",			"Steinfeldprärie",            5200,     4875, 7},--
   ["Gnarvul"]				={"Steinfeld",			"Temblorhügel",               5442,     4899, 8},--
   ["Suchender Aufseher"]		={"Steinfeld",			"Bruchsteinbecken",           5650,     4950, 9},--
   ["Spaltzahn"]			={"Steinfeld",			"Bruchsteinbecken",           5734,     4772, 10},--
   ["Lothuu der Traurige"]		={"Steinfeld",			"Minenbogen",                 5764,     4591, 11},--
   ["Xoxtillus"]			={"Steinfeld",			"Minenbogen",                 5897,     4494, 12},--
   ["Bluthorn der Mächtige"]		={"Steinfeld",			"Minenbogen",                 5984,     4434, 13},--
   ["Nela Valcuthren"]			={"Steinfeld",			"Bruchsteinstraße",           5880,     4830, 14},--
   ["Ashandara"]			={"Steinfeld",			"Bruchsteinstraße",           4462,     5027, 15},--rare but not in achievement

   ["Braunkappenschneider"]		={"Düsterwald",			"Knorzwaldposten",             5212,     2461},
   ["Dozer"]				={"Düsterwald",			"Mathosianische Mühle",             4336,     2336},
   ["Gnarl-Nachtjäger"]			={"Düsterwald",			"Knorzwaldposten",             5313,     2813},
   ["Mondschattenschleicher"]		={"Düsterwald",			"Schattensturztürme",         4610,     2488},
   ["Mühlstieg Mondschleicher"]		={"Düsterwald",			"Mühlenteich",              4188,     2700},
   ["Brüher"]				={"Düsterwald",			"Finstere Tiefen",            4950,     2145},
   ["Narbenbiss"]			={"Düsterwald",			"Mühlenteich",              4164,     2838},
   ["Tränenschleicher"]			={"Düsterwald",			"?Tearfall Creek",             4687,     2561},
   ["Schleicher des Hains"]		={"Düsterwald",			"Hain der Alten",      		5354,     2572},
   ["Xaksha"]				={"Düsterwald",			"Mathosianische Mühle",             4640,     2380},
   ["Zatzak Braunkapp"]			={"Düsterwald",			"Knorzwaldposten",             5212,     2461},

   ["Nachtklaue"]			={"Scharlachrote Schlucht",	"",        	  		  4392,     4521, 2},--not in achievement
   ["Felskiefer"]			={"Scharlachrote Schlucht",	"Steinkrone",                  	  4131,     3242, 4},
   ["Korgek der Brecher"]		={"Scharlachrote Schlucht",	"",              		  4400,     4485, 1},
   ["Ghorgull der Bote der Trankopfer"]	={"Scharlachrote Schlucht",	"",	                  	  4434,     3313, 3},
   ["Quogor"]				={"Scharlachrote Schlucht",	"Purpurbach",                 	  3840,     2968, 5},

   ["Gurock"]				={"Wundwaldregion",		"Alte Wache",                3003,     4014},
   ["Steinpeitsche"]			={"Wundwaldregion",		"Alte Wache",                2969,     3963},
   ["Faulpeitsche"]			={"Wundwaldregion",		"Granitwaldkreuzung",       3990,     4650},
   ["Schattenernter"]			={"Wundwaldregion",		"Granitwaldkreuzung",       3950,     4675},
   ["Blutbart"]				={"Wundwaldregion",		"Eisenfall",                  3900,     4300},
   ["Schotterfaust"]			={"Wundwaldregion",		"Eisenfall",                3692,     4242},
   ["Nuhtu"]				={"Wundwaldregion",		"Herrscherhalle",                2836,     4268},
   ["Granitkriecher"]			={"Wundwaldregion",		"Granitewood Haunt",          3581,     3976},
   ["Eisenklaue"]			={"Wundwaldregion",		"Granitewood Haunt",          3460,     4334},
   ["Blase"]				={"Wundwaldregion",		"Granitewood Haunt",          3396,     4098},
   ["Nietenschädel"]			={"Wundwaldregion",		"Granitewood Haunt",          3338,     4144},
   ["Wandernder Zertrümmerer"]		={"Wundwaldregion",		"Wundwald-Lift, Bergstation",       4040,     4186},
   ["Klingenkeiler-Schrecken"]		={"Wundwaldregion",		"Scharfklingenmühle",             3830,     4020},
   ["Stachelschwinge"]			={"Wundwaldregion",		"Steinhain",                3600,     3660},
   ["Giftspeier"]			={"Wundwaldregion",		"Steinhain",                3600,     3650},
   ["Leichenschleifer"]			={"Wundwaldregion",		"Timar-Vorland",           2677,     3789},
   ["Narbenschnabel"]			={"Wundwaldregion",		"Timar-Vorland",            3200,     3700},
   ["Ahasa"]				={"Wundwaldregion",		"Timar-Vorland",            2750,     3800},
   ["Vasyu"]				={"Wundwaldregion",		"Timar-Vorland",	    2601,     3849},
   ["Schwarzklaue"]			={"Wundwaldregion",		"Trollpesthöhlen",          3449,     4412},
   ["Ekelhaut"]				={"Wundwaldregion",		"Trollpesthöhlen",          3477,     4419},
-- these two to debug the addon
--   ["Schwarzhauer-Verwüster"]		={"Wundwaldregion",		"Kains Kommandoposten",	    3137,     3856},
--   ["Soldat Thelian"]			={"Wundwaldregion",		"Kains Kommandoposten",	    3137,     3856},


   ["Wütender Beschwörer"]		={"Mondschattenberge",		"Bitterbecken",                6310,     1700},
   ["Messerhauer"]			={"Mondschattenberge",		"?Tieflandfurche",                5634,     2335},
   ["Irre Pyromantin"]			={"Mondschattenberge",		"Stichprärie",              5878,     1542},
   ["Fezziled der Neugierige"]		={"Mondschattenberge",		"Feenring-Forst",              6435,     2053},
   ["Nytami"]				={"Mondschattenberge",		"Festung Hammerhall",       6460,     1349},
   ["Lugog der Auslöscher"]		={"Mondschattenberge",		"Heulende Hügel",              7046,     1753},
   ["Arumal"]				={"Mondschattenberge",		"Heulende Hügel",              7100,     1844},
   ["Aelfwar-Abgesandter"]		={"Mondschattenberge",		"?Kirnas Laube",               7090,     2152},

   ["Freddik der Gebrochene"]		={"Ödlande",			"Flussufer-Durchstich",	      7235,     5910, 1},--
   ["Wilder Skarabäus"]			={"Ödlande",			"Zackenrand",                 7520,     6660, 2},--
   ["Bisskönigin"]			={"Ödlande",			"Bisshügel",                  8215,     7228, 3},--
   ["Kragnix der Auslöscher"]		={"Ödlande",			"Harlans Klage",              8151,     6813, 4},--
   ["Vergessenes Opfer"]		={"Ödlande",			"Zentaurenholz",              7950,     6700, 5},--
   ["Glogg der Gefräßige"]		={"Ödlande",			"Grollnarbenbach",            8371,     7173, 6},--
   ["Hurknok"]				={"Ödlande",			"Grollnarbenbach",            8285,     7035, 7},--
   ["Koglok"]				={"Ödlande",			"Grollnarbenbach",            8372,     7157, 8},--
   ["Knochenfressender Schlitzer"]	={"Ödlande",			"Steinerne Ruine",            8887,     6688, 9},--
   ["Jhomm der Grausame"]		={"Ödlande",			"Zentaurenholz",              7968,     6438, 10},--

   ["Jenseits-Wanderer"]		={"Eisenkieferngipfel",		"Tagesblindhöhlen",       	3010,     2230, 9},--
   ["Abgesandte Kavenik"]		={"Eisenkieferngipfel",		"Tagesblindhöhlen",           	2825,     1989, 10},
   ["Frosthaut"]			={"Eisenkieferngipfel",		"Dampfstachelgrube",      	4625,     1370, 2},--
   ["Arktischer Gipfelschleicher"]	={"Eisenkieferngipfel",		"Kristalltiefen",           	4770,     1650, 1},--
   ["Irrer Schweinehirt"]		={"Eisenkieferngipfel",		"Heulende Höhlen",              3656,     1468, 7},-- also 3730 2070
   ["Dagda Schädelklopfer"]		={"Eisenkieferngipfel",		"Frostfälle",	          	4178,     1959, 4},--
   ["Klingenmähne"]			={"Eisenkieferngipfel",		"",      		 	3541,     1810, 8},--
   ["Sausender Wirbelsturm"]		={"Eisenkieferngipfel",		"Magierzeichen",                3827,     1980, 6},-- also howling caves
   ["Schwarzblutdraken"]		={"Eisenkieferngipfel",		"Magierzeichen",                3860,     2220, 5},--
   ["Frostpranken-Raufer"]		={"Eisenkieferngipfel",		"",		           	4250,     1950, 3},--

   ["Der Räuber"]			={"Schimmersand",		"Totenschlucht",              6974,     6472, 1},--
   ["Geschundener Verbannter"]		={"Schimmersand",		"Die Oase",                   6913,     7302, 2},--
   ["Großer Ratsherr Al'hazeed"]	={"Schimmersand",		"Sandwachtpass",              7348,     7540, 3},--
   ["Fürst Brühwasser"]			={"Schimmersand",		"Brühwasserfelder",           6210,     7072, 4},

   ["Blutast"]				={"Stillmoor",                  "Bluthain",                   1538,     3295, 8},--
   ["Taziel Kanur"]			={"Stillmoor",                  "Dornstrauchklippe",          2415,     2650, 1},--
   ["Thagrux der Unreine"]		={"Stillmoor",                  "Caer Kholum",                1859,     3427, 9},
   ["Khromas der Ewige"]		={"Stillmoor",                  "Todestor",           	      1300,     2640, 6},--
   ["Stachelklaue"]			={"Stillmoor",                  "Grenzwald",                  2154,     2596, 2},--
   ["Experimenteller Kriegsgolem"]	={"Stillmoor",                  "Die Ewige Zitadelle",        1140,     2723, 7},--
   ["Die Ewige Brutmutter"]		={"Stillmoor",                  "Todestor",           	      1329,     2381, 5},--
   ["Jom Turner"]			={"Stillmoor",                  "Ravenna",                    2002,     2247, 3},--
   ["Azumel der Kreischer"]		={"Stillmoor",                  "Thalin Tor",                 1727,     2310, 4},--


   ["Acalan"]				={"Glutinsel",			"Üppige Wildnis",            12730, 	4500},
   ["Anato"]				={"Glutinsel",			"Quellenebenen",             12891, 	3161},
   ["Argyros"]				={"Glutinsel",			"Tristmoor",                 12961, 	2654},
   ["Gaian"]				={"Glutinsel",			"Tempel von Marakris",       14410, 	4284},
   ["Hyro"]				={"Glutinsel",			"Atia",                      13360, 	4300},
   ["Kallos"]				={"Glutinsel",			"Bruchebene", 	  	     13275, 	3125},
   ["Klacus"]				={"Glutinsel",			"Güldenes Gestade",          13982, 	3256},
   ["Kleon"]				={"Glutinsel",			"Obsidianküste",             13878, 	4242},
   ["Lalia"]				={"Glutinsel",			"Splitterfurt",       	     13697, 	2657},
   ["Ligeia"]				={"Glutinsel",			"Gezeitenbrunnen-Zufluss",   13072, 	2187},
   ["Lykos"]				={"Glutinsel",			"Fort Zarnost",              12295, 	3920},
   ["Myron"]				={"Glutinsel",			"Carcera",             	     14111,	3606},
   ["Naeus"]				={"Glutinsel",			"Nykantor-Ruinen",           13000, 	4000},
   ["Nereus"]				={"Glutinsel",			"Der Würgwald",              12313, 	3577},
   ["Nikon"]				={"Glutinsel",			"Glutrand",                  13653, 	3475},
   ["Osmas"]				={"Glutinsel",			"Talos-Landung",             12562, 	3142},
   ["Phocas"]				={"Glutinsel",			"Kheramos",                  13650, 	4560},
   ["Tephra"]				={"Glutinsel",			"Aschebruch",                13250, 	3465},
   ["Thome"]				={"Glutinsel",			"Höllenfelder",              13352, 	3914},
   ["Tricksy"]				={"Glutinsel",			"Fernhall",                  13482, 	2892},
   },

   ["French"] = {
   ["Raging Warmachine"]		=false,
   ["Assassin Defiant"]			=false,
   ["Gizzit"]				=false,
   ["Augustor"]				=false,
   ["Feu-follet tourmenté"]		=false,
   ["Crepit Pokeit"]			=false,
   ["Naufrageur"]			=false,
   ["Gogrol"]				=false,
   ["Azagamara"]			=false,
   ["Esprit vengeur"]			=false,
   ["Brod"]				=false,
   ["Marlrog"]				=false,
   ["Mok"]				=false,
   ["Pandora"]				=false,
   ["Pentheus"]				=false,
   ["Loup-garou"]			=false,
   ["Bahezerk"]				=false,
   ["Chercheur d'os"]			=false,
   ["Gnarvul"]				=false,
   ["Corne-à-charpie le Puissant"]	=false,
   ["Gormungun"]			=false,
   ["Lothuu le Triste"]			=false,
   ["Nela Valcuthren"]			=false,
   ["Superviseur en quête"]		=false,
   ["Croc-déchiqueteur"]		=false,
   ["Sentient Cruor"]			=false,
   ["Déchire-pierre"]			=false,
   ["Stridal"]				=false,
   ["Xoxtillus"]			=false,
   ["XT-300"]				=false,
   ["Trancheur Coiffebrune"]		=false,
   ["Dozer"]				=false,
   ["Gnarl Chassenuit"]			=false,
   ["Guetteur d'ombre lunaire"]		=false,
   ["Guetteur-de-lune de Millrush"]	=false,
   ["Scald"]				=false,
   ["Scarbite"]				=false,
   ["Guetteur de larmes"]		=false,
   ["Guetteur du bosquet"]		=false,
   ["Xaksha"]				=false,
   ["Zatzak Coiffebrune"]		=false,
   ["Croc noir"]			=false,
   ["Mâchoire à roche"]			=false,
   ["Korgek le Briseur"]		=false,
   ["Ghorgull le Faiseur de Libations"]	=false,
   ["Quogor"]				=false,
   ["Gurock"]				=false,
   ["Flagellateur"]			=false,
   ["Fouet-pourri"]			=false,
   ["Moissoneur de l'Ombre"]		=false,
   ["Chair-Khan"]			=false,
   ["Grossepogne"]			=false,
   ["Nuhtu"]				=false,
   ["Rampant de Granite"]		=false,
   ["Croc-de-Fer"]			=false,
   ["Cloque"]				=false,
   ["Crâne riveté"]			=false,
   ["Naufrageur errant"]		=false,
   ["Terreur boueuse"]			=false,
   ["Barbailée"]			=false,
   ["Crache-venin"]			=false,
   ["Hache-cadavre"]			=false,
   ["Bec-balafré"]			=false,
   ["Ahasa"]				=false,
   ["Vasyu"]				=false,
   ["Pincenoire"]			=false,
   ["Vilepeau"]				=false,
   ["Invocateur rageur"]		=false,
   ["Croc acéré"]			=false,
   ["Pyromancienne troublée"]		=false,
   ["Feddil le Curieux"]		=false,
   ["Nytami"]				=false,
   ["Lugog le Destructeur"]		=false,
   ["Arumal"]				=false,
   ["Émissaire d'Aelfwar"]		=false,
   ["Freddik le Brisé"]			=false,
   ["Scarabée enragé"]			=false,
   ["Veuve de Mordant"]			=false,
   ["Kragnix l'Annihilateur"]		=false,
   ["Sacrifice oublié"]			=false,
   ["Glogg l'Affamé"]			=false,
   ["Hurknok"]				=false,
   ["Koglok"]				=false,
   ["Éventreur mangeur d'os"]		=false,
   ["Jhomm le Cruel"]			=false,
   ["Vagabond du Néant"]		=false,
   ["Émissaire Kavenik"]		=false,
   ["Peau-de-gel"]			=false,
   ["Guetteur de pic arctique"]		=false,
   ["Hogger le détraqué"]		=false,
   ["Dagda Gourme-crâne"]		=false,
   ["Crinière acérée"]			=false,
   ["Tempête tourbillonnante"]		=false,
   ["Drake Sang-noir"]			=false,
   ["Mutileur Pattegel"]		=false,
   ["Le Prédateur"]			=false,
   ["Exil estropié"]			=false,
   ["Grand conseiller Al'hazeed"]	=false,
   ["Seigneur Dahmar des Thermolacs"]	=false,
   ["Rameau-Sanglant"]			=false,
   ["Taziel Kanur"]			=false,
   ["Thagrux le Malpropre"]		=false,
   ["Khromas l'Éternel"]		=false,
   ["Grifféchine"]			=false,
   ["Golem de guerre expérimental"]	=false,
   ["Matriarche éternelle"]		=false,
   ["Jom Turner"]			=false,
   ["Azumel le Crisseur"]		=false,
   ["Gaian"]				=false,
   ["Kleon"]				=false,
   ["Myron"]				=false,
   ["Phocas"]				=false,
   ["Hyro"]				=false,
   ["Nereus"]				=false,
   ["Naeus"]				=false,
   ["Lykos"]				=false,
   ["Charlie"]				=false,
   ["Akalan"]				=false,
   ["Anator"]				=false,
   ["Ligeia"]				=false,
   ["Osmas"]				=false,
   ["Argyros"]				=false,
   ["Tephra"]				=false,
   ["Lalia"]				=false,
   ["Nikon"]				=false,
   ["Klacus"]				=false,
   ["Kallos"]				=false,
   ["Thome"]				=false,
},
["Russian"] = {
   -- RU бета тест by Геральт[Флай]@Акилиос
["Гиззит"]				=false,
["Августор"]				=false,
["Страдающий огонек"]			=false,
["Крипит Покит"]			=false,
["Морской попрыгун"]			=false,
["Гогрол"]				=false,
["Азагамара"]				=false,
["Мстительный дух"]			=false,
["Брод"]				=false,
["Марлрог"]				=false,
["Мок"]					=false,
["Пандора"]				=false,
["Пентий"]				=false,
["Оборотень Серебристого Леса"]		=false,
["Байзерк"]				=false,
["Костеискатель"]			=false,
["Гнарвул"]				=false,
["Могучий рогач"]			=false,
["Гормунган"]				=false,
["Лотху Печальный"]			=false,
["Нела Валькатрен"]			=false,
["Повелитель заданий"]			=false,
["Разрывающий клык"]			=false,
["Ожившая кровь"]			=false,
["Каменный клюв"]			=false,
["Шагун"]				=false,
["Ксоктиллус"]				=false,
["XT-300"]				=false,
["Коричневый резчик"]			=false,
["Бульдозер"]				=false,
["Ночной охотник гнаров"]		=false,
["Лунный тенеход"]			=false,
["Мельничный лунолов"]			=false,
["Ошпаренный"]				=false,
["Шрамокус"]				=false,
["Следопыт плача"]			=false,
["Сталкер Рощи"]			=false,
["Ксакша"]				=false,
["Шапка Затзака"]			=false,
["Камнегрызы"]				=false,
["Коргек Громила"]			=false,
["Горгула, мастер возлияний"]		=false,
["Квогор"]				=false,
["Гарок"]				=false,
["Плетехвост"]				=false,
["Гнилоплеть"]				=false,
["Теневой жнец"]			=false,
["Кровоус"]				=false,
["Гравийный Кулак"]			=false,
["Нухту"]				=false,
["Гранитный ползун"]			=false,
["Железноклык"]				=false,
["Пузырь"]				=false,
["Клепаный Череп"]			=false,
["Блуждающий крушитель"]		=false,
["Ужасный секач"]			=false,
["Шипокрыл"]				=false,
["Ядоплюй"]				=false,
["Трупомол"]				=false,
["Шрамоклюв"]				=false,
["Ахаса"]				=false,
["Вэсью"]				=false,
["Чернолапы"]				=false,
["Злобнохват"]				=false,
["Бешеный призыватель"]			=false,
["Бритвозуб"]				=false,
["Безумный пиромант"]			=false,
["Феззилед Любознательный"]		=false,
["Нитами"]				=false,
["Лугог Разрушитель"]			=false,
["Арумал"]				=false,
["Посол Аэльваров Лунной Тени"]		=false,
["Фреддик Поломашка"]			=false,
["Взбесившийся скарабей"]		=false,
["Едкая королева"]			=false,
["Крагникс-искоренитель"]		=false,
["Глогг Прожора"]			=false,
["Забытая жертва"]			=false,
["Харкнок"]				=false,
["Коглок"]				=false,
["Костежорка-потрошительница"]		=false,
["Джомм Жестокий"]			=false,
["Странник из преисподней"]		=false,
["Посланец Кавеник"]			=false,
["Ледошкур"]				=false,
["Арктический охотник за вершинами"]	=false,
["Сумасшедшая молотилка"]		=false,
["Дагда Черепомес"]			=false,
["Вепреед"]				=false,
["Вьющаяся буря"]			=false,
["Чернокровый дракк"]			=false,
["Морозный коготь-мучитель"]		=false,
["Хищник"]				=false,
["Истерзанный изгой"]			=false,
["Верховный советник Аль'хазид"]	=false,
["Лорд Шпар"]				=false,
["Кроводрев"]				=false,
["Тазиэль Канур"]			=false,
["Тагрукс Нечистый"]			=false,
["Хромас Вечный"]			=false,
["Хребтоклык"]				=false,
["Экспериментальный боевой голем"]	=false,
["Праматерь Вечного Двора"]		=false,
["Джом Тернер"]				=false,
["Азумель Хрипун"]			=false,
},
}
