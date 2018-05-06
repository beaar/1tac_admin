if (hasInterface) then {
	if (!isNil "TMF_event_fnc_addEventHandler") then {
		["tmf_spectator_keyDown",{_this call tac1_admin_fnc_keyPressed}] call TMF_event_fnc_addEventHandler;
	};
};


// Check's what addons clients are running. If your community doesn't use battle-eye can be useful for doing a quick check.

// [] call tac1_admin_fnc_checkMods;
