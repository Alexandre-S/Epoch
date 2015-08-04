/*

*/
private["_markers","_players"];
_markers = [];
_players = [];

while{true}do{
	waitUntil{sleep 1; alive player && "ItemGPS" in (items player + assignedItems player)};
	sleep 0.25;
	if(visibleMap) then {
		{
			if("ItemGPS" in (items player + assignedItems player)) then {
				_players pushBack _x;
			}
		} foreach (units group player); //Fetch list of group player

		//Create markers
		{
			_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
			_marker setMarkerColorLocal "ColorWhite";
			_marker setMarkerTypeLocal "Mil_dot";
			_marker setMarkerTextLocal format["%1", _players];
		
			_markers pushBack [_marker,_x];
		} foreach _players;
			
		while {visibleMap} do
		{
			{
				private["_marker","_unit"];
				_marker = _x select 0;
				_unit = _x select 1;
				if(!isNil "_unit") then
				{
					if(!isNull _unit) then
					{
						_marker setMarkerPosLocal (visiblePosition _unit);
					};
				};
			} foreach _markers;
			if(!visibleMap) exitWith {};
			sleep 0.2;
		};

		{deleteMarkerLocal (_x select 0);} foreach _markers;
		_markers = [];
		_players = [];
	};
};
