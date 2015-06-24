private ["_crashNum","_lootNum","_loot","_coords"];
/////////////////////////////////////
//      Function file for UKGZ	   //
//        Created by: Richie       //
//  Modded by:  Vampire & xBowBii  //
/////////////////////////////////////
// Number of Crashes
// Random 6 => de 0 à 5. +5, entre 5 et 10 crash par restart
_crashNum = (floor(random 6) + 5);

// Number of Loot Piles
// Random 3 => de 0 a 2. +3, entre 3 et 5 "piles" par crash
_lootNum = (floor(random 3) + 3);

_loot = [
	"ChainSaw",
	"CircuitParts","CircuitParts","CircuitParts","CircuitParts","CircuitParts","CircuitParts","CircuitParts","CircuitParts","CircuitParts","CircuitParts",
	"JackKit","JackKit","JackKit","JackKit","JackKit",
	"ItemLockbox",
	"ItemCompass","ItemCompass","ItemCompass","ItemCompass","ItemCompass","ItemCompass","ItemCompass",
	"ItemGPS","ItemGPS","ItemGPS","ItemGPS",
	"VehicleRepair","VehicleRepair","VehicleRepair",
	"ItemWatch","ItemWatch","ItemWatch","ItemWatch","ItemWatch",
	"Binocular","Binocular","Binocular","Binocular","Binocular","Binocular","Binocular",
	"NVG_EPOCH","NVG_EPOCH","NVG_EPOCH","NVG_EPOCH",
	"srifle_GM6_F",
	"srifle_LRR_F",
	"srifle_EBR_F","srifle_EBR_F","srifle_EBR_F",
	"srifle_DMR_01_F","srifle_DMR_01_F","srifle_DMR_01_F","srifle_DMR_01_F",
	"sr25_epoch","sr25_epoch","sr25_epoch","sr25_epoch","sr25_epoch",
	"arifle_Katiba_F","arifle_Katiba_F","arifle_Katiba_F","arifle_Katiba_F","arifle_Katiba_F",
	"arifle_MXC_F","arifle_MXC_F","arifle_MXC_F","arifle_MXC_F","arifle_MXC_F","arifle_MXC_F","arifle_MXC_F",
	"arifle_MXM_F","arifle_MXM_F","arifle_MXM_F","arifle_MXM_F",
	"LMG_Mk200_F","LMG_Mk200_F","LMG_Mk200_F",
	"arifle_MX_SW_F","arifle_MX_SW_F","arifle_MX_SW_F","arifle_MX_SW_F",
	"srifle_DMR_02_F",
	"srifle_DMR_04_F",
	"srifle_DMR_05_blk_F",
	"MMG_01_hex_F",
	"MMG_02_camo_F",
	"m249_EPOCH","m249_EPOCH",
	"m107_EPOCH",
	"m16_EPOCH","m16_EPOCH","m16_EPOCH","m16_EPOCH","m16_EPOCH","m16_EPOCH",
	"m4a3_EPOCH","m4a3_EPOCH","m4a3_EPOCH","m4a3_EPOCH","m4a3_EPOCH","m4a3_EPOCH",
	"M14_EPOCH","M14_EPOCH","M14_EPOCH",
	"AKM_EPOCH","AKM_EPOCH","AKM_EPOCH",
	"FoodBioMeat","FoodBioMeat","FoodBioMeat","FoodBioMeat","FoodBioMeat",
	"FoodSnooter","FoodSnooter","FoodSnooter","FoodSnooter","FoodSnooter",
	"ItemTrout","ItemTrout","ItemTrout","ItemTrout","ItemTrout",
	"scam_epoch","scam_epoch","scam_epoch","scam_epoch","scam_epoch",
	"honey_epoch","honey_epoch","honey_epoch",
	"ItemSodaOrangeSherbet","ItemSodaOrangeSherbet","ItemSodaOrangeSherbet","ItemSodaOrangeSherbet","ItemSodaOrangeSherbet",
	"ItemSodaBurst","ItemSodaBurst","ItemSodaBurst","ItemSodaBurst","ItemSodaBurst",
	"ItemSodaPurple","ItemSodaPurple","ItemSodaPurple","ItemSodaPurple","ItemSodaPurple",
	"Rangefinder",
	"ItemCorrugated","ItemCorrugated","ItemCorrugated","ItemCorrugated"
];

_spawnCenter = getMarkerPos "center"; //Center of your map (usually in mission.sqm)
_min = 0; // minimum distance from the center position (Number) in meters
_max = 12000; // maximum distance from the center position (Number) in meters
_mindist = 30; // minimum distance from the nearest object (Number) in meters, ie. spawn at least this distance away from anything within x meters..
//Low _mindist means helicrashes could spawn near towns or in forests.. higher the number it would be spawning in an open field etc
_water = 0; // water mode 0: cannot be in water , 1: can either be in water or not , 2: must be in water
_shoremode = 0; // 0: does not have to be at a shore , 1: must be at a shore
_val = [-6,-5,-4,-3,3,4,5,6];
_allpositions = [];

vSpawnCrashes = {
	for "_j" from 1 to _crashNum do {
		_posOfCrash = [_spawnCenter,_min,_max,_mindist,_water,20,_shoremode] call BIS_fnc_findSafePos; // find a random loc
		_posOfCrash = _spawnCenter;
		
		while{true}do{
			_posOfCrash = [_spawnCenter,_min,_max,_mindist,_water,20,_shoremode] call BIS_fnc_findSafePos; // find a random loc
			if({_posOfCrash distance _x < 2000}count _allpositions < 1 && _posOfCrash distance _spawnCenter > 2000 || count _allpositions < 1)exitWith{};
		};
		_allpositions pushBack _posOfCrash;
		
		_helicopters = ["Land_UWreck_Heli_Attack_02_F","Land_Wreck_Heli_Attack_01_F"]; //Add Heli classnames here
		_element = _helicopters call BIS_fnc_SelectRandom;
		_vehHeli = _element createVehicle [0,0,0];
		//_burnthefucker = "test_EmptyObjectForFireBig" createVehicle (position _vehHeli);  _burnthefucker attachto [_vehHeli, [0,0,-1]];  
		_vehHeli setpos [(_posOfCrash) select 0,(_posOfCrash) select 1,0];
		_vehHeli setVariable ["LAST_CHECK", (diag_tickTime + 14400)];
		
		_posCrate = _val call BIS_fnc_SelectRandom;
		_posCrate2 = _val call BIS_fnc_SelectRandom;
		for "_i" from 1 to _lootNum do {
			_crate0 = createVehicle ["weaponHolderSimulated", _vehHeli modelToWorld [(random 10) - _posCrate, (random 10) - _posCrate2, 0], [], 0, "CAN_COLLIDE"];
			//_crate1 = createVehicle ["weaponHolderSimulated", _vehHeli modelToWorld [(random 10) - 3, (random 10) - 4, 0], [], 0, "CAN_COLLIDE"];
			
			_item = _loot call BIS_fnc_selectRandom;
			switch (true) do
			{
				case (isClass (configFile >> "CfgWeapons" >> _item)): {
					_kindOf = [(configFile >> "CfgWeapons" >> _item),true] call BIS_fnc_returnParents;
					if ("ItemCore" in _kindOf) then {
						// Min 1, Max 3
						_crate0 addItemCargoGlobal [_item,(floor(random(3)))+1];
						//_crate1 addItemCargoGlobal [_item,(floor(random(2)))+1];
					} else {
						// One Weapon, Three Mags
						_crate0 addWeaponCargoGlobal [_item,1];
						//_crate1 addWeaponCargoGlobal [_item,1];
						
						_cAmmo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
						{
							if (isClass(configFile >> "CfgPricing" >> _x)) exitWith {
								// Min 1, Max 3
								_crate0 addMagazineCargoGlobal [_x,(floor(random(3)))+1];
								//_crate1 addMagazineCargoGlobal [_x,3];
							};
						} forEach _cAmmo;
					};
				};
				case (isClass (configFile >> "cfgMagazines" >> _item)): {
					// Min 1, Max 3
					_crate0 addMagazineCargoGlobal [_item,(floor(random(3)))+1];
					//_crate1 addMagazineCargoGlobal [_item,(floor(random(3)))+1];
				};
				case ((getText(configFile >> "cfgVehicles" >> _item >>  "vehicleClass")) == "Backpacks"): {
					// One Bag
					_crate0 addBackpackCargoGlobal [_item,1];
					//_crate1 addBackpackCargoGlobal [_item,1];
				};
			};
			_posNumb = _val call BIS_fnc_SelectRandom;
			_posNumb2 = _val call BIS_fnc_SelectRandom;
			_crate0 setPos [(getPos _crate0 select 0) + _posNumb, (getPos _crate0 select 1) + _posNumb2, 0];
			//_crate1 setPos [(getPos _crate1 select 0) -10, (getPos _crate1 select 1), 0];
			_crate0 setVariable ["LAST_CHECK", (diag_tickTime + 14400)];
			//_crate1 setVariable ["LAST_CHECK", (diag_tickTime + 14400)];
			_cutter0 = "Land_ClutterCutter_medium_F" createVehicle (getpos _crate0);
			//_cutter1 = "Land_ClutterCutter_medium_F" createVehicle (getpos _crate1);
			_cutter0 setVariable ["LAST_CHECK", (diag_tickTime + 14400)];
			//_cutter1 setVariable ["LAST_CHECK", (diag_tickTime + 14400)];

			
		};
	};
};

call vSpawnCrashes;