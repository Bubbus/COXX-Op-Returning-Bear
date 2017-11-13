if (!isServer) exitWith {};

[] spawn 
{
	_bombs = missionNamespace getVariable "bombs";
	
	{
		_isDefused = _x getVariable "defused";
		
		if (isNil "_isDefused" or {!_isDefused}) then 
		{
			[getPos _x, 600] call RHS_fnc_ss21_nuke; 
			
			_bigNode = _x getVariable "bigNode";
			_bigNode setVariable ["Cre8ive_RN_Strength", 180, true];
			
			_bombsExploded = missionNamespace getVariable "bombsExploded";
			if (isNil "_bombsExploded") then {_bombsExploded = 0;};
			missionNamespace setVariable ["bombsExploded", _bombsExploded + 1];
			
			[_x] call bub_fnc_explosionCleanup;
			
			sleep (20 + random 10);
		};		
		
	} foreach _bombs;
	
};