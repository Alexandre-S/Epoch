/*
	Fichier : gear.sqf
	Auteur : Youri Litovski
	
	Description : donne le stuff pour les VIP
	
	76561198010101889 : Youri
	76561197968614074 : Sentinel
	76561198013920451 : Mark evans
	76561198052059981 : DeathTwizy
*/
private["_Armes","_Arme","_Armes2","_Arme2","_Munition","_Munition2","_Pareballes","_Pareballe","_Nourritures","_Boissons","_Nourriture","_Boisson","_Tenues","_Tenue","_SacsADos","_SacADos","_j","_i"];
_Armes2 = ["arifle_TRG21_F","arifle_TRG20_F","arifle_Mk20_F","arifle_Mk20C_F","arifle_Mk20_plain_F","arifle_Mk20C_plain_F","SMG_01_F","SMG_02_F"];
_Armes = ["hgun_ACPC2_F","hgun_Rook40_F","hgun_P07_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F","ruger_pistol_epoch","1911_pistol_epoch"];
_Pareballes = ["V_10_EPOCH","V_11_EPOCH","V_12_EPOCH","V_13_EPOCH","V_14_EPOCH","V_15_EPOCH","V_16_EPOCH","V_17_EPOCH","V_18_EPOCH","V_24_EPOCH","V_25_EPOCH","V_26_EPOCH","V_28_EPOCH","V_29_EPOCH","V_30_EPOCH","V_31_EPOCH","V_32_EPOCH","V_40_EPOCH"];
_Tenues = ["U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_stripped","U_C_Poloshirt_redwhite","U_C_Poloshirt_salmon","U_C_Poloshirt_tricolour"];
_Nourritures = ["FoodBioMeat","FoodMeeps","FoodSnooter","FoodWalkNSons","sardines_epoch","meatballs_epoch","scam_epoch","sweetcorn_epoch","honey_epoch","CookedSheep_EPOCH","CookedGoat_EPOCH","SnakeMeat_EPOCH","CookedRabbit_EPOCH","CookedChicken_EPOCH","ItemTrout","ItemSeaBass","ItemTuna","SnakeCarcass_EPOCH","RabbitCarcass_EPOCH","ChickenCarcass_EPOCH","GoatCarcass_EPOCH","SheepCarcass_EPOCH"];
_Boissons = ["WhiskeyNoodle","ItemSodaOrangeSherbet","ItemSodaPurple","ItemSodaMocha","ItemSodaBurst","ItemSodaRbull"];
_SacsADos = ["smallbackpack_red_epoch","smallbackpack_green_epoch","smallbackpack_teal_epoch","smallbackpack_pink_epoch",];

if (EPOCH_playerCrypto == 10) exitwith { hint parseText format["Vous avez déjà récupéré votre matériel <br/> You already got your gear"];};
if (getGearVIP) exitwith { hint parseText format["Vous avez déjà récupéré votre matériel <br/> You already got your gear"];};

if (getPlayerUID player in ["76561198010101889","76561197968614074","76561198013920451","76561198052059981"]) then {
	getGearVIP = true;
	EPOCH_playerCrypto = 10;
	
	removeUniform player;
	removeVest player;
	_Tenue = _Tenues call BIS_fnc_selectRandom;
	player forceAddUniform _Tenue;
	_Pareballe = _Pareballes call BIS_fnc_selectRandom;
	player addVest _Pareballe;
	player addWeapon "EpochRadio0";
	_Arme2 = _Armes2 call BIS_fnc_selectRandom;
	_Munition2 = [] + getArray (configFile >> "cfgWeapons" >> _Arme2 >> "magazines");
	sleep 0.2;
	player addWeapon _Arme2;
	for "_j" from 1 to (floor(random(3)))+2 do {
		player addItemToVest (_Munition2 select 0);
	};
	_Arme = _Armes call BIS_fnc_selectRandom;
	_Munition = [] + getArray (configFile >> "cfgWeapons" >> _Arme >> "magazines");
	sleep 0.2;
	player addWeapon _Arme;
	for "_i" from 1 to (floor(random(3)))+1 do {
		player addItemToVest (_Munition select 0);
	};
	sleep 0.2;
	_SacADos = _SacsADos call BIS_fnc_selectRandom;
	player addBackpack _SacADos;
	_Nourriture = _Nourritures call BIS_fnc_selectRandom;
	_Boisson = _Boissons call BIS_fnc_selectRandom;
	player addItemToVest _Nourriture;
	player addItemToVest _Nourriture;
	player addItemToVest _Boisson;
	player addItemToVest _Boisson;
	player addItemToVest _Boisson;
	
	hint parseText format["Equipement VIP reçu <br/> VIP gear received<br/><br/>Merci pour votre soutien :) <br/> Thanks for the support :)"];
} else {
	hint parseText format["Vous n'êtes pas VIP <br/> You are not VIP"];
};
