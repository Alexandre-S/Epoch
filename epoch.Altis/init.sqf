if (isServer) then {
    execVM "\q\addons\traderATMs\init.sqf";
};


if(hasInterface) then{
	///////  Server Intro Credits by IT07  ///////
	///  v1.4.1.  ////////////////////////////////
	[] ExecVM "addons\ScarCode\sIntroCredits.sqf";
	
	//Status Bar
	[] execVM "addons\Status_Bar\init_statusBar.sqf"
};