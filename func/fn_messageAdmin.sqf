
if (isServer) then {
	diag_log format["[ADMIN MESSAGE] %1",_this];
};

if (!hasInterface) exitWith {};

if (call BIS_fnc_isDebugConsoleAllowed) then {
	systemChat _this;
};
