if (isServer) then {
    execVM "\q\addons\traderATMs\init.sqf";
};

//Supply Drop Alert Event
"SDROP_Alert" addPublicVariableEventHandler {
	hint parseText format["%1", _this select 1];
};

[] execVM "addons\brief\Briefing.sqf";

call compile preProcessFileLineNumbers "addons\cmEarplugs\config.sqf";

if(hasInterface) then{
	///////  Server Intro Credits by IT07  ///////
	///  v1.4.1.  ////////////////////////////////
	[] ExecVM "addons\ScarCode\sIntroCredits.sqf";
	
	//Status Bar
	[] execVM "addons\Status_Bar\init_statusBar.sqf"
	
	//SEM
	execVM "addons\SEM\semClient.sqf"
};