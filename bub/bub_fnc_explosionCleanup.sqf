params ["_bomb"];

[_bomb] spawn 
{
	params ["_bomb"];

	_triggers = (getPos _bomb) nearObjects ["EmptyDetector", 500];
	_killcount = 0;
	{deleteVehicle _x; _killcount = _killcount + 1;} forEach _triggers;
	hint format ["killed %1 triggers", _killcount];
	
	sleep 1;
	
	_bombPos = getPos _bomb;
	
	{
		_group = _x;
		
        if (_group getvariable ["f_cached", false]) then 
		{
			
			{
				_unit = _x;
				if (alive _unit && {((getPos _unit) distance _bombPos) < 250} ) then 
				{ 
					deleteVehicle _unit; 
				}
				sleep 0.1;
				
			} forEach (units _group);
			
        };
		
	} forEach allGroups;
	
};

