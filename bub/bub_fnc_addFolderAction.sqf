params ["_laptop"];

if (!isServer) exitWith {};

_onFolderInvestigate = 
{
	params ["_target", "_caller"];

	[[], "bub\bub_vm_cl_showFolderText.sqf"] remoteExec ["execVM", _caller];
	
};



[
	_laptop, 
	
	[
		"<t color='#FFFFFF'>Read Commander's Memo</t>
<br/>
<t color='#AAAAAA'>'COPY: Sent to Vadim.'</t>",

		_onFolderInvestigate,
		nil, 
		6, 
		true, 
		true, 
		"", 
		"true", 
		2
	]
	
] remoteExec ["addAction", 0];