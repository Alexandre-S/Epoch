/*
AWESOME SHIT BY: D3PHIL 
STEALING SCRIPTS WITH CREDITS ONLY OR HE WILL FIND U!
Modified : Youri
*/

diag_log format['**Starting Briefing.sqf**'];

if (!hasInterface) exitWith {};

waitUntil {!isNuLL(uiNameSpace getVariable ["EPOCH_loadingScreen",displayNull])};
waitUntil {isNuLL(uiNameSpace getVariable ["EPOCH_loadingScreen",displayNull])};


player createDiarySubject ["rules","--- Server Rules ---"];
player createDiarySubject ["wiki","--- Wiki ---"];
player createDiarySubject ["ts","--- TeamSpeak ---"];
player createDiarySubject ["don","--- Donate ---"];
player createDiarySubject ["support","--- Support ---"];

// Rules

player createDiaryRecord["rules",["VEHICLES","<br/>
ENGLISH:<br/>
1. DON'T USE VEHICLES AS WEAPON (BOMBING, KAMIKAZE)<br/>
2. NO DAMAGING OF DRIVERLESS VEHICLES<br/>
3. NO EXCESSIVE VEHICLE-SELLING<br/>
4. NO POINTLESS CRASHING OF VEHICLES<br/>
5. NO EXCESSIVE ROADKILLS<br/><br/>
FRANCAIS:<br/>
1. NE PAS UTILISER LES VEHICULES COMME DES ARMES (BOMBE, KAMIKAZE)<br/>
2. NE PAS DETRUIRE LES VEHICULES SANS JOUEUR DEDANS<br/>
3. NE PAS FAIRE DE VENTE EXCESSIVE<br/>
4. PAS DE CRASH INUTILES<br/>
5. PAS DE CAR KILL<br/>"]];

player createDiaryRecord["rules",["COMBAT, RAID","<br/>
ENGLISH:<br/>
1. NO COMBAT LOGGING<br/>
2. NO CORPSE CAMPING<br/>
3. NO DISCONNECT IN OTHER BASES<br/>
4. MAKE SURE ATLEAST ONE OF THE OWNER IS CONNECTED ON THE SERVEUR. YOU HAVE TO SEARCH FOR INFOS !<br/><br/>
FRANCAIS:<br/>
1. PAS DE COMBAT LOG<br/>
2. PAS DE CAMPING SUR LES CORPS<br/>
3. PAS DE DECONNECTION DANS UNE BASE ENNEMIE<br/>
4. VEUILLEZ VOUS ASSURER QU'AU MOINS UN DES PROPRIETAIRE SOIT CONNECTER SUR LE SERVEUR. L'INFORMATION EST A CHERCHER PAR VOS SOINS<br/>"]];

player createDiaryRecord["rules",["BASES, BUILDING","<br/>
ENGLISH:<br/>
1. NO BUILDINGS AT TRADERS<br/>
2. NO BUILDINGS WITHIN CITYS<br/>
3. NO BUILDINGS ON IMPORTANT ROADS, BRIDGES<br/>
4. NO MILITARY-LOOT WITHIN JAMMER-RANGE<br/>
5. NO BUILDINGS NEAR SAFEZONES (1000m minimum)<br/>
6. DON'T BLOCK HIGHLOOT-BUILDINGS (HOSPITAL, MILITARY BASES, ETC...)<br/>
7. ONLY 1 JAMMER PER PLAYER/GROUP/CLAN<br/>
   - NO PERSONAL EXTRA-BASES FOR MEMBERS<br/>
8. YOU MUST HAVE A DOOR, NO WALLS AS DOORS<br/>
9. 2 VEHICLES PER PLAYER<br/><br/>
FRANCAIS:<br/>
1. PAS DE CONSTRUCTION SUR LES MARCHANDS<br/>
2. PAS DE CONSTRUCTION DANS LES VILLES<br/>
3. PAS DE CONSTRUCTION SUR LES GRANDES ROUTES / PONTS<br/>
4. PAS DE CONSTRUCTION DANS LES BASES MILITAIRES<br/>
5. PAS DE CONSTRUCTION AUTOUR DES POINTS DE RESPAWN (1000m minimum)<br/>
6. PAS DE CONSTRUCTION SUR LES POINTS DE HIGHLOOT (HOPITAL, BASE MILITAIRES, ETC...)<br/>
7. 1 JAMMER PAR JOUEUR / CLAN / GROUPE<br/>
   - PAS DE JAMMER SUPPLEMENTAIRE POUR LES MEMBRES<br/>
8. OBLIGATION D'AVOIR UNE PORTE, PAS DE MUR POUR SERVIR DE PORTE<br/>
9. 2 VEHICULES PAR JOUEURS<br/>"]];

player createDiaryRecord["rules",["SAFEZONES, BAMBIS","<br/>
ENGLISH:<br/>
1. NO BAMBI KILLS<br/>
2. NO KILLS, SHOOTS IN SAFEZONES<br/>
3. NO KILLS, SHOOTS AROUND SAFEZONES (500m)<br/>
4. NO CAMPING, CHASING FRESHSPAWNS<br/>
5. WATCH UR OWN STUFF (VEHICLES, LOOT)<br/>
   - ADMINS ARE STILL NO BABYSITTERS!<br/>
6. NO MINES NEAR SAFEZONES (500m)<br/><br/>
FRANCAIS:<br/>
1. PAS DE KILL DE DEBUTANTS<br/>
2. PAS DE KILLS DANS LES SAFEZONES<br/>
3. PAS DE KILLS AUTOUR DES SAFEZONES (500m)<br/>
4. PAS DE CAMPING ET DE CHASSE AUX DEBUTANTS<br/>
5. GARDEZ UN OEIL SUR VOTRE MATOS (VEHICULES, LOOT)<br/>
   - LES ADMINS NE SONT PAS DES BABYSITTERS!<br/>
6. PAS DE MINES AUTOUR DES SAFEZONES (500m)<br/>"]];

player createDiaryRecord["rules",["PVP ZONE","<br/>
ENGLISH:<br/>
1. NO COMBAT OR KILLS ON IN/OUT SAS<br/>
2. WHEN YOU DIE, YOU CAN'T GO BACK LOOT YOUR BODY (BAMBI). IT'S A COMBAT ZONE. LEAVE OR DIE IS THE ONLY RULE<br/>
3. NO KILL OF PEOPLE OUTSIDE THE ZONE FROM THE ZONE<br/>
4. NO KILL OF PEOPLE IN THE ZONE FROM OUTSIDE THE ZONE<br/>
5. NO BUILDINGS INSIDE THE ZONE<br/>
6. NO FLAME, RAGE, ETC... BE FAIRPLAY<br/>
7. GOOD LUCK, THE ZONE IS VICIOUS<br/><br/>
FRANCAIS:<br/>
1. PAS DE COMBATS ET DE KILL DANS LES SAS D'ENTREES / SORTIES<br/>
2. UNE FOIS MORT, IL EST INTERDIT DE RETOURNER SUR SON CORPS (BAMBI) AFIN DE RECUPERER SON STUFF. C'EST UNE ZONE DE COMBAT. VIVRE OU MOURIR EST LA SEULE REGLE<br/>
3. IL EST INTERDIT DE TUER DES JOUEURS DANS LA ZONE PVP DEPUIS L'EXTERIEUR DE LA ZONE<br/>
4. IL EST INTERDIT DE TUER DES JOUEURS A L'EXTERIEUR DE LA ZONE DEPUIS LA ZONE PVP<br/>
5. IL EST INTERDIT DE CONSTRUIRE DANS LA ZONE PVP<br/>
6. PAS DE RAGE, D'INSULTES, ETC... SUITE AUX COMBATS. JOUEZ FAIRPLAY<br/>
7. BONNE CHANCE A TOUS, LA ZONE EST VICIEUSE<br/>"]];

player createDiaryRecord["rules",["CHAT, VOICE","<br/>
ENGLISH:<br/>
1. NO VOICE IN SIDECHAT (autokill, then kick, then ban)<br/>
2. NO BAD LANGUAGE, STUPID STATEMENTS<br/>
3. NO FLAMING, RAGING, SPAMMING<br/>
4. NO TROUBLE OR PROVOCATIONS<br/>
5. NO ADVERTISING<br/>
6. ONLY FRENCH OR ENGLISH<br/>
7. NO DISCUSSIONS IN SIDECHAT<br/><br/>
FRANCAIS:<br/>
1. PAS DE VOIX DANS LE CANAL CAMP (autokill, puis kick, puis ban)<br/>
2. PAS D'INSULTES, OU DE PLEURS<br/>
3. PAS DE FLAME, DE RAGE, DE SPAM<br/>
4. PAS DE TROUBLES OU DE PROVOCATION<br/>
5. PAS DE PUB<br/>
6. UNIQUEMENT DU FRANCAIS OU DE L'ANGLAIS<br/>
7. PAS DE DISCUTION DANS LE CANAL CAMP<br/>"]];

player createDiaryRecord["rules",["GENERAL","<br/>
ENGLISH:<br/>
1. NO HACKING OR CHEATING<br/>
2. NO EXPLOITING, GLITCHING, DUPING, TROLLING<br/>
3. RESPECT THE ADMINS / MODS / OTHER PLAYERS<br/>
4. DISCUSSIONS WITH ADMINS ONLY IN TS OR DIRECTCHAT<br/>
5. ALLEGATIONS ONLY WITH EVIDENCE (VIDEO, SCREENSHOT)<br/><br/>
FRANCAIS:<br/>
1. PAS DE HACK OU DE CHEAT<br/>
2. PAS D'EXPLOIT BUG, DE GLITCH, DE DUPLI, DE TROLL<br/>
3. RESPECTEZ LES ADMINS / MODOS / LES AUTRES JOUEURS<br/>
4. DISCUTION AVEC LES ADMINS SUR TS OU EN CANAL DIRECT<br/>
5. PLAINTES SEULEMENT AVEC DES PREUVES (VIDEO, SCREENSHOT)<br/>"]];

// Wiki
player createDiaryRecord["wiki",["ENERGY SYSTEM","<br/>
Before a player can start building, they must first gain some energy. This can be done in three ways:<br/><br/>
* Vehicles - While in any vehicle with the engine running, the player will gain approximately 5 energy every 10 seconds.<br/>
* Solar/Wind Power - If the player is within 75 meters of a solar farm tower or wind turbine they will gain approximately 5 energy every 10 seconds.<br/>
* Energy Packs - By double clicking an energy pack in your inventory, there is an option to use. This will give the player energy instantly, but will use up the energy pack (small energy pack = 100 energy. large energy pack = 1000 energy).<br/><br/>
Also note:<br/><br/>
Using night vision goggles, or the night vision function on range finders, will also require energy.<br/>
Energy gains do not stack while in a vehicle within range of towers/turbines or multiple towers/turbines<br/>"]];

player createDiaryRecord["wiki",["BASE MAINTENANCE","<br/>
If they are not maintained, base pieces will be removed after 7 days of being placed.<br/>
To avoid this, you can do one of the following:<br/><br/>
* Use Krypto at your frequency jammer at a cost of 1 Krypto per base piece within it's radius.<br/>
* Paint upgraded wall pieces.<br/>
* Move existing base pieces.<br/>"]];

player createDiaryRecord["wiki",["CRAFTING TABLE","<br/>
Large Energy Pack = 3 x small energy pack 1 x Electronic Components (need FIRE)<br/>
Tipi Kit  = 4 x Scrap Pelt 2 x Lumber Packs<br/>
Shelf = 3 x Salvage Metal small (need FIRE)<br/>
Foundation = 4 x Bucket of Mortar<br/>
Frequency Jammer = 2x Salvage Metal Large 2x Electronic Components (need FIRE)<br/>
Salvage Metal Small = 2x Metal Scraps (need FIRE)<br/>
Salvage Metal Large = 2x Salvage Metal Small (need FIRE)<br/>
Fireplace = 2x Wooden Log<br/>
Lumber Pack = 2x Wooden Log<br/>
Wooden Ramp = 6x Lumber Pack<br/>
Wooden Stairs = 4x Lumber Pack<br/>
Wooden Stairs UG1 =4x Lumber Pack<br/>
Wooden Floor = 4x Lumber Pack<br/>
Wooden Stud Wall = 4x Lumber Pack<br/>
Wooden Stud Wall UG1 = 1 x salvage metal small<br/>
Wooden Stud Wall UG2 = 1 x Lumber Pack<br/>
Wooden Stud Wall UG3 = 1 x Lumber Pack 1 x Salvage Metal small<br/>
Wooden Stud Wall UG4 = 1 x Salvage Metal small 1 x Electronic Components<br/>
Cinder Block Wall = 4x Cinder Blocks 2x Bucket of Mortar<br/>
Cinder Block Wall UG1 = 2x Cinder Blocks<br/>
Cinder Block Wall UG2 = 1x Salvage Metal Large 1x Electronic Components<br/>
Food Cooler = 1x Food Cooler Empty 1x Cooked Meat 1x Sweetcorn<br/>
Vehicle Repair Kit = 1x Vehicle Repair Part 1x Salvage Metal small (need FIRE)<br/>
Jerrycan (empty) = 1x Salvage Metal Large (need FIRE)<br/>
Rope = 1x Kilo of hemp<br/>
LRPS = 2x Metal Scraps 1x Binocular (need FIRE)<br/>
TWS = 2x Metal Scraps 1x Rangefinder 1x Circuit Part (need FIRE)<br/>
NVG = 1x Metal Scraps 1x Binocular 1x Circuit Part<br/>"]];

player createDiaryRecord["wiki",["BUILDING CONTROLS","<br/>
CTRL + i = Upgrade in place while looking at the object.<br/>
SPACE = Pick up building piece.<br/>
1 = Enable/Disable Snap assisted build mode.<br/>
2 = Enable/Disable free-form build mode.<br/>
3 = Change direction when using snap assisted mode.<br/>
4 = Finalize Build (Places Item)<br/>
ESC = Cancel Build (Doesn't build the item)<br/>
E = Allows free-form rotate from 0 - 360<br/>
Q = fit the building to your view<br/>
Ins and Del = Move the object left to right<br/>
Home and End = Move the object forward to Back<br/>
PGUP and PGDN = Move the object up to down<br/>"]];

player createDiaryRecord["wiki",["MAIN CONTROLS","<br/>
i = Used to loot trash piles and crates found in the world, Clean and skin animals.<br/>
i = Default interact for vehicles,traders, player trading. and inventory option.<br/>
T = Accepts the last player to player trade request.<br/>
CTRL + T = Send player to player trade request to the player you are looking at.<br/>
H = Holster/Un-holster weapon.<br/>
Double left click = Use item from inventory, enter crating menu, sell/buy items from trader.<br/>
CTRL + SALUTE = The one finger salute<br/>"]];

player createDiaryRecord["ts",["TEAMSPEAK","<br/>
ts.epochvault.ovh<br/>"]];

player createDiaryRecord["support",["SUPPORT","<br/>
support@epochvault.ovh<br/>"]];

player createDiaryRecord["don",["DONATE | DONATION","<br/>
If you want to donate, our paypal adress is : aaalex123@hotmail.fr | Si vous souhaitez faire un don, notre adresse paypal est : aaalex123@hotmail.fr<br/>
Please note that donate are NOT mandatory and you donate if YOU want | Veuillez noter que les donations ne sont PAS obligatoire, et que vous donnez si VOUS le voulez !<br/>"]];

