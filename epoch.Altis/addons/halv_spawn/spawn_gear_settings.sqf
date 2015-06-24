/*
	spawn dialog misc settings
	By Halv
	
	Copyright (C) 2015  Halvhjearne > README.md
	
	General Note:
	I attempted to lock DLC items for players that does not have marksman cannot choose DLC items,
	but ...
	it is still best NOT to add any DLC items to this script
	as i cannot garentee that it will not pick those items
	when the player chooses a random gearset
*/

//UID's for lvl 1 gear
_level1UIDs = ["76561198020163363","76561198089697955"];
//UID's for lvl 2 gear
_level2UIDs = ["76561198010101889","76561197983740568","76561197999056075","76561197968614074"];
//this is to allow lvl 2 to use any lvl 1 gear, comment out to seperate the two
_level1UIDs = _level1UIDs + _level2UIDs;

_geararr = [
	[
//this is the array of secondary weapons the player can choose from, this has to be "weapon" type items
		[
			"hgun_ACPC2_F","1911_pistol_epoch","hgun_P07_F","hgun_Rook40_F",
			"hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F"
		],
//this is how many magazines is added for secondary weapon
		3
	], 
	[
//this is the array of primary weapons the player can choose from, this has to be "weapon" type items
		[
			"SMG_01_F","SMG_02_F","hgun_PDW2000_F","Rollins_F"
		],
//this is how many magazines is added for primary weapon
		2
	],
	[
//this is the array for "tool" items the player can choose from, this has to be "item" type items
		[
			"FAK"
		],
//this is how many "tool" items the player is allowed to choose
		1
	],
//this is the array of "weapon" items the player can choose from, this has to be "weapon" type items
	[
		[
			"ItemCompass","ItemWatch","Binocular","ItemMap","NVG_EPOCH","ItemGPS"
		],
//this is how many "weapon" items the player is allowed to choose
		2
	],
	[
		[
//this is the array of "magazines" items the player can choose from, this has to be "magazine" type items
			"ItemSodaRbull","meatballs_epoch","ItemSodaOrangeSherbet","sweetcorn_epoch",
			"scam_epoch","HeatPack","ColdPack",
			"ItemSodaPurple","ItemSodaMocha","ItemSodaBurst","FoodWalkNSons","honey_epoch",
			"emptyjar_epoch","FoodBioMeat","sardines_epoch","FoodSnooter","Towelette"
		],
//this is how many "magazines" items the player is allowed to choose
		3
	],
	[
//this is the array of headgear the player can choose from
		"H_39_EPOCH","H_40_EPOCH","H_41_EPOCH","H_42_EPOCH","H_43_EPOCH","H_44_EPOCH","H_45_EPOCH","H_46_EPOCH","H_47_EPOCH","H_48_EPOCH",
		"H_49_EPOCH","H_50_EPOCH","H_51_EPOCH","H_52_EPOCH","H_53_EPOCH","H_54_EPOCH","H_55_EPOCH","H_56_EPOCH","H_57_EPOCH","H_58_EPOCH","H_59_EPOCH","H_60_EPOCH"
	],
	[
//this is the array of vests the player can choose from
 		"V_2_EPOCH","V_3_EPOCH","V_4_EPOCH","V_5_EPOCH","V_41_EPOCH",
		"V_13_EPOCH","V_14_EPOCH","V_15_EPOCH","V_16_EPOCH"
	],
	[
//these are the arrays for Uniforms the player can choose from
		[
//only male Uniforms here
			"U_C_Poloshirt_stripped","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_redwhite",
			"U_OG_Guerilla2_3","U_OG_Guerilla3_1","U_OG_Guerilla3_2"
		],
		[
//only female Uniforms here
			"U_CamoRed_uniform","U_Wetsuit_uniform"
		]
	],
	[
//this is the array of Goggles the player can choose from
		"G_Tactical_Clear","G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Spectacles","G_Spectacles_Tinted","G_Lowprofile","G_Shades_Green","G_Shades_Red",
		"G_Squares","G_Squares_Tinted","G_Sport_BlackWhite","G_Sport_Blackyellow","G_Sport_Greenblack","G_Sport_Checkered","G_Sport_Red","G_Tactical_Black"
	],
	[
//this is the array of Backpacks the player can choose from
		"smallbackpack_red_epoch","smallbackpack_green_epoch","smallbackpack_teal_epoch","smallbackpack_pink_epoch"
	]
];

//Donor locked items

//if you want an item locked for lvl 1 donor, add it to this array
_lvl1items = [
	"smallbackpack_red_epoch","smallbackpack_green_epoch","smallbackpack_teal_epoch","smallbackpack_pink_epoch",
	"U_OG_Guerilla2_3","U_OG_Guerilla3_1","U_OG_Guerilla3_2",
	"SMG_01_F","SMG_02_F","hgun_PDW2000_F","Rollins_F",
	"V_13_EPOCH","V_14_EPOCH","V_15_EPOCH","V_16_EPOCH"
];

//if you want an item locked for lvl 2 donor, add it to this array
_lvl2items = [
	"NVG_EPOCH","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F"
];
