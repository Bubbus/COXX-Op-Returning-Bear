// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// SIDE: WEST

// ====================================================================================

//Creating simple tasks.
//Previous examples for task creation were needlessly complicated, they don't need to be. Whilst the completion of one is handled by 
//triggers in game, it can sometimes be enough to just have them be present on a players journal, it directs them, and keeps players on task.

//It is good practice to create them in the sides briefing file, as this means it seperates them neatly, without the creation of further files.

//Tasks follow this style:

//[civilian,["task1"],["Do this and you get a cookie","Earn Cookie","cookiemarker"],[0,0,0],1,2,true] call BIS_fnc_taskCreate
//[west,["task2"],["Good luck finding this cookie","Find Cookie","cookiemarker2"],objNull,1,3,true] call BIS_fnc_taskCreate //Task without a map location

//However, we don't use the civilian or west terms, as this is the western briefing file, instead, we can do something like this:

//[group player, "AANorth", ["Destroy the AA present in Northern Aliabad", "Destroy the AA", "AANorth"], "AANorth", true] call BIS_fnc_taskCreate;
//[group player, "AASouth", ["Destroy the AA present in Southern Aliabad", "Destroy the AA", "AASouth"], "AASouth", true] call BIS_fnc_taskCreate;

//The two above would create two tasks for the Blufor team, it would create tasks for any player who also has this file directed at them, this is why 
//it is better to handle tasks in the side's relevant briefing file. For the completion of tasks, refer to the trigger present on the framework's mission.sqm 
//in game.
// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Thanks to Cre8or for his help.
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
This mission should be played with a Zeus, to keep the pace of the mission at an acceptable level.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
See Mission tab.  Execution of mission left to CO's discretion.
<br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
SHF<br/>
<br/>
Potential locations of the rebel nuclear stockpile have been identified, and rebel forces have concentrated in these areas.<br/>
SHF has been supplied with Geiger counters to locate the nuclear material by its radiation signature.<br/>
<br/>
> Assault each of the rebel stronghold towns, clearing them of all threat.<br/>
> Use the Geiger counters to locate any nuclear material.<br/>
> Report positions of any nuclear material to SLAV Team for disposal.<br/>
<br/>
<br/>
SLAV Team<br/>
<br/>
The rebel forces have organized significantly, and all operations are orchestrated by a central command structure.<br/>
If the nuclear material has been weaponized, the regular Soviet forces will be incapable of disarming it. However, enemy command has been located and surely possesses the relevant information.<br/>
<br/>
> Assault the enemy command compound, and eliminate all occupants.<br/>
> Search for any intel regarding weaponization of nuclear material.<br/>
> Report any findings to SHF Command. Execute any orders from SHF CO.<br/>
> Support the SHF in locating and deactivating any nuclear devices.<br/>
<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The year is 1988, and the longstanding strength of the Soviet union is waning. Svitsyru smells the blood in the water, and its citizens have formed an organized resistance force.<br/>
The Soviet union has responded to this threat with a permanent garrison in the region, the Svitsyru Holding Force (SHF). Tasked with discovering and eliminating the rebel threat wherever it arises, the SHF has met limited success in restoring control of the region to the state.<br/>
<br/>
In recent months, the Svitsyran rebellion has grown more organized and has begun deploying armoured vehicles captured from an SHF vehicle pool earlier in the year.<br/>
Reports have emerged that the rebels have also acquired refined nuclear material through an unidentified state actor, which could easily be used by the rebels to strike a devastating blow against the occupation. The Soviet regime is taking urgent steps to contain both the threat, and the news.<br/>
<br/>
Acting fast, the Kremlin has authorized the urgent deployment of SLAV Team, a highly classified and specially trained unit of professional slavic operators. Trained in the harshest conditions and armed by a top-secret Future Weapons program, SLAV Team is Moscow's best chance to decapitate the rebellion and eliminate the nuclear threat.<br/>
<br/>
SHF Command has been briefed on the situation and the force is prepared to end the rebellion. SLAV Team arrived in Svitsyru the previous night and immediately went to work, completing its initial objective of destroying the rebels' hidden vehicle cache.<br/>
Recovering from a long night of vodka and squatting, SLAV Team prepares to join the SHF in ending the rebellion.<br/>
<br/>
"]];

// ====================================================================================