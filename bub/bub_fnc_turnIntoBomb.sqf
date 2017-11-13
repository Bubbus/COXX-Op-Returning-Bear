params ["_bomb", "_bigNode"];

if (isServer) then 
{ 
    [_bomb] call bub_fnc_addDefuseAction; 
	_bomb setVariable ["bigNode", _bigNode];

	_bombs = missionNamespace getVariable "bombs";
    if (isNil "_bombs") then { _bombs = [] };
    _bombs pushBack _bomb;
    missionNamespace setVariable ["bombs", _bombs];
};