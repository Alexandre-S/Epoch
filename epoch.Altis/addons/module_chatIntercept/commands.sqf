if ((getPlayerUID player) in ["76561198010101889"]) then {
	pvpfw_chatIntercept_allCommands = [
		[
			"help",
			{
				_commands = "";
				{
					_commands = _commands + (pvpfw_chatIntercept_commandMarker + (_x select 0)) + ", ";
				}forEach pvpfw_chatIntercept_allCommands;
				systemChat format["Available Commands: %1",_commands];
			}
		],
		[
			"admin",
			{
				_argument = _this select 0;
				[_argument,"vault_fnc_admin",true,false] spawn BIS_fnc_MP;
			}
		],
		[
			"say",
			{
				_argument = _this select 0;
				[_argument,"vault_fnc_say",true,false] spawn BIS_fnc_MP;
			}
		]
	];
} else {
	pvpfw_chatIntercept_allCommands = [
		[
			"help",
			{
				_commands = "";
				{
					_commands = _commands + (pvpfw_chatIntercept_commandMarker + (_x select 0)) + ", ";
				}forEach pvpfw_chatIntercept_allCommands;
				systemChat format["Available Commands: %1",_commands];
			}
		],
		[
			"admin",
			{
				_argument = _this select 0;
				[_argument,"vault_fnc_admin",true,false] spawn BIS_fnc_MP;
			}
		]
	];
};