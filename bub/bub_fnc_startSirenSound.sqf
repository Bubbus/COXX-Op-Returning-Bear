params ["_posObj", "_vol", "_dist"];

if (!isServer) exitWith {};

_handle = [_posObj, _vol, _dist] spawn 
{
	params ["_posObj2", "_vol2", "_dist2"];
	
	_source = _posObj2;

	while {true} do	
	{
		_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
		_sound = _soundPath + "sounds\blowout_siren.ogg";
		
		playsound3d [_sound, _source, false, (getPosASL _source), _vol2, 1, _dist2];			
		sleep 53;
		
	};
	
};

_handle