params ["_laptop"];


_timeUntilDetonation = 
{
	
};


_onLaptopInvestigate = 
{
	params ["_target", "_caller"];

	titleText 
	[
		"<t color='#FFFFFF' shadow='2' shadowColor='#000000'>
The laptop is open at the last e-mail the commander sent.<br/>
<br/>
RE: NUCLEAR VENGEANCE<br/>
No Vadim, the oppressors do not accept our demands.  They are attacking.<br/>
Arm the dirty bombs, set a two hour timer.  If we cannot have our country, nobody can.<br/>
<br/>
Only the defusal key can stop this.  I have thrown it in my ammo box.<br/>
Our homeland awaits in the next life, brother.  Nothing will stop us.<br/>
<br/>
Commander Borscht<br/>
Death or freedom!
</t>", 
		
		"PLAIN", 
		2, 
		true, 
		true
	];  
	
//	_caller addAction 
//	[
//		"<t color='#FF88FF'>Check time until detonation</t>",
	// ]
};


_laptop addAction 
[
	"<t color='#FFFFFF'>Investigate Commander's Laptop</t>
<br/>
<t color='#AAAAAA'>looks interesting dude</t>",

	_onLaptopInvestigate,
	nil, 
	6, 
	true, 
	false, 
	"", 
	"true", 
	2
];