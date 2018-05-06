
params["","_key","_shift"];

if (_key isEqualType []) then {
    params ["","_args"];
    _key = _args select 1;
    _shift = _args select 2;
};

if (not (_key isEqualTo 59 && _shift)) exitWith {false};

// F3
if (!(isNil "f_fnc_forceExit")) then {
	closeDialog 0;
};

if (!alive player) then {
	if (!(isNil "f_fnc_forceExit")) then {
		[] call f_fnc_forceExit;
	};
	//TMF
	if (!isNil "tmf_spectator_fnc_init") then {
		closeDialog 5454; 
	};
};

if (call BIS_fnc_isDebugConsoleAllowed) then {
    createDialog 'adminMenuDialog';
} else {
    hint "You are not logged in as an admin.";
};
true