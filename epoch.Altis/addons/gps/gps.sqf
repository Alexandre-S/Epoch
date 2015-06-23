/*
Updating Map Markers with your own position and group member positions

-	Recommended setting in server Profiles is:
	Map=0;

This script is based on my playerMarkers script, originally created for Arma2
http://kiloswiss.ch/misc/arma2/404forums/playerMarker.sqf

Feel free to use, edit, share etc. whatever You want with this script.
17.Juni.2015 - KiloSwiss
*/

#define updateInterval 1 	//Interval time in seconds on how fast the markers get updated

mapMarkerLoop = compileFinal "
	
	while{alive player && ""ItemGPS"" in (items player + assignedItems player)}do{	private[""_start"",""_unit""];
		
		_start = diag_ticktime;		
		{
			if(name _x == name player)then{
				waitUntil{(getMarkerColor ""playerMarker"" == """")};
				_this spawn createPlayerMarker;
			}else{
				_unit = _x;
				_pos = getPos (vehicle _unit);
				_dir = getDir (vehicle _unit);
				[_unit,_pos,_dir, _this] spawn createGroupMarker;
			};
		}forEach (units group player);
		_elapsedTime = diag_ticktime - _start;
		_delay = _this - _elapsedTime;
		uisleep _delay;
	};
";

createPlayerMarker = compileFinal "
	private [""_playerName"",""_dir"",""_pos"",""_pMarker"",""_veh""];

	_playerName = name player;
	_dir = getDir (vehicle player);
	_pos = getPos player;
	_pMarker = createMarkerLocal [""playerMarker"", _pos];
	_pMarker setMarkerShapeLocal ""ICON"";
    _pMarker setMarkerAlphaLocal 1;
	_pMarker setMarkerPosLocal _pos;
	
	if(visibleMap)then{_pMarker setMarkerTextLocal _playerName;
	}else{_pMarker setMarkerTextLocal """";};

	_pMarker setMarkerColorLocal (switch(playerSide)do{
		case east :{""ColorRed""};
		case west :{""ColorBlue""};
		case resistance :{""ColorGreen""};
		case civilian :{""ColorWhite""};
		default {""ColorBlack""};
	});

		
	switch(true)do{
		_veh = vehicle player;
		default {
			if(visibleMap)then{
				_pMarker setMarkerTypeLocal ""mil_arrow2"";
			}else{
				_pMarker setMarkerTypeLocal ""mil_dot_noshadow"";
			};
			_pMarker setMarkerSizeLocal [0.6,0.6];
			_pMarker setmarkerDirLocal _dir;
			};
		case(_veh isKindOf ""Air""):{
			_pMarker setMarkerTypeLocal ""mil_triangle"";
			_pMarker setMarkerSizeLocal [1.6,2];
			_pMarker setmarkerDirLocal _dir;
			};
		case(_veh isKindOf ""Car""):{
			_pMarker setMarkerTypeLocal ""mil_box"";
			_pMarker setMarkerSizeLocal [1,1.6];
			_pMarker setmarkerDirLocal _dir;
			};
		case(_veh isKindOf ""Tank""):{
			_pMarker setMarkerTypeLocal ""mil_box"";
			_pMarker setMarkerSizeLocal [1.6,2];
			_pMarker setmarkerDirLocal _dir;
			};
		};

	uisleep _this;
	deleteMarkerLocal _pMarker;
";

createGroupMarker = compileFinal "
	private[""_unit"",""_pos"",""_dir"",""_groupMemberName"",""_groupMarker""];
	
	_unit = _this select 0;
	_pos = _this select 1;
	_dir = _this select 2;
	_groupMemberName = name _unit;
	
	_groupMarker = createMarkerLocal [_groupMemberName, _pos];
	_groupMarker setMarkerShapeLocal ""ICON"";
	_groupMarker setmarkerDirLocal _dir;
	_groupMarker setMarkerTypeLocal ""mil_dot_noshadow"";
	_groupMarker setMarkerSizeLocal [0.6,0.6];
	_groupMarker setMarkerAlphaLocal 1;
	_groupMarker setMarkerPosLocal _pos;

	if(visibleMap)then{
		_groupMarker setMarkerTextLocal _groupMemberName;
		_groupMarker setMarkerTypeLocal ""mil_arrow_noshadow"";
	}else{
		_groupMarker setMarkerTextLocal """";
	};

	uisleep (_this select 3);
	deleteMarkerLocal _groupMarker;
";

while{true}do{
	waitUntil{sleep 1; alive player && "ItemGPS" in (items player + assignedItems player)};
	updateInterval spawn mapMarkerLoop;
};