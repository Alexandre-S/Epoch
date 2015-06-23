if (isServer) then {
    execVM "\q\addons\traderATMs\init.sqf";
};

//Status Bar
if(hasInterface) then{[] execVM "addons\Status_Bar\init_statusBar.sqf"};