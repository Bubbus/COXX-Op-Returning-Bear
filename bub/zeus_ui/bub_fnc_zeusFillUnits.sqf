if (isDedicated) exitWith {};

params ["_listIDC", "_categoryIdx"];

[_listIDC] execVM "bub\zeus_ui\displayManip\bub_vm_cl_clearList.sqf";

_units = bub_zeus_unitsStructure;

_category = _units select _categoryIdx;
_type = _category select 1;
_gear = _category select 2;
_side = _category select 3;
_defs = _category select 4;

_listDefs = [];

switch (_type) do
{
	case "inf":
	{
		{
			_name = _x select 0;
			_def = [_type, _x select 1, _gear, _side];
			
			[_listIDC, _name] execVM "bub\zeus_ui\displayManip\bub_vm_cl_addToList.sqf";
			
			_listDefs pushBack _def;
		
		} forEach _defs;
		
	};
	
	case "veh":
	{
		{
			_name = _x select 0;
			_def = [_type, _x select 2, _x select 1, _gear, _side];
			
			[_listIDC, _name] execVM "bub\zeus_ui\displayManip\bub_vm_cl_addToList.sqf";
			
			_listDefs pushBack _def;
		
		} forEach _defs;
		
	};
	
};

bub_zeus_listUnits = _listDefs;