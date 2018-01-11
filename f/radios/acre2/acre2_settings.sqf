// F3 - ACRE2 Settings
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// RADIO STRUCTURE

// Whether any radios should be assigned at all, to any units
// TRUE = Disable radios for all units
f_radios_settings_acre2_disableRadios = FALSE;

// Whether or not the radio frequencies should be left as default, and not split per side
// TRUE = Disable frequency seperation across sides
f_radios_settings_acre2_disableFrequencySplit = FALSE;

// Set a list of units that get a short wave
// if its nil, that means all units get a radio
// empty array means that noone gets
f_radios_settings_acre2_shortRange = nil;

// Set the list of units that get a long range
f_radios_settings_acre2_longRange = ["co", "dc", "vc", "pp", "ftl", "sl", "crew", "slav-sl"];

// Unit types you want to give an extra long-range radio
// E.G: ["co", "m"] would give the CO and all medics an extra long-range radios
f_radios_settings_acre2_extraRadios = [];

// Standard Short
f_radios_settings_acre2_standardSHRadio = "ACRE_PRC343";
// Standard LongRange
f_radios_settings_acre2_standardLRRadio = "ACRE_PRC152";
// Extra radio
f_radios_settings_acre2_extraRadio = "ACRE_PRC117F";

// ====================================================================================
// BABEL API

// Defines the languages that exist in the mission.
// string id, displayname
f_radios_settings_acre2_languages = [["english","English"]];

// defines the language that a player can speak.
// can define multiple
f_radios_settings_acre2_language_blufor = ["english"];
f_radios_settings_acre2_language_opfor = ["english"];
f_radios_settings_acre2_language_indfor = ["english"];

// Channel names and group defaults
// first item in the array will correspond to the first channel
// item definition: ["CHANNEL NAME", ["GROUP1 NAME", "GROUP2 NAME"]]
// note that if using a 343 only the first 16 channels are available for the short-range array
// also note these only work if f_radios_settings_acre2_disableFrequencySplit is set to false
f_radios_settings_acre2_sr_groups_blufor = [
    ["ANNA-SL",    ["ANNA-SL"]],
    ["ANNA-1",    ["ANNA-1"]],
	["ANNA-2",    ["ANNA-2"]],
    ["BORIS-SL",    ["BORIS-SL"]],
    ["BORIS-1",    ["BORIS-1"]],
	["BORIS-2",    ["BORIS-2"]],
    ["CHARITON-SL",    ["CHARITON-SL"]],
    ["CHARITON-1",    ["CHARITON-1"]],
	["CHARITON-2",    ["CHARITON-2"]],
    ["GOPNIK-1",    ["GOPNIK-1"]],
    ["GOPNIK-2",    ["GOPNIK-2"]],
    ["SLAVTEAM",     ["Slav Team Sic"]],
    ["COMMISSAR",     ["COMMISSAR"]],
    ["ARMOUR",     ["TNK1"]],
    ["AIR TRANS", ["TH1","TH2","TH3","T4","TH5","TH6","TH7","TH8"]],
    ["CAS", 	 ["AH1"]],
    ["ADDITIONAL 1", 	 []],
    ["ADDITIONAL 2", 	 []],
    ["ADDITIONAL 3",    []],
    ["ADDITIONAL 4",   []],
    ["ADDITIONAL 5",    []],
    ["ADDITIONAL 6",  []],
    ["ADDITIONAL 7",   []],
    ["ADDITIONAL 8",  []],
    ["ADDITIONAL 9",    []],
    ["ADDITIONAL 10",   []],
    ["ADDITIONAL 11",     []]
];

f_radios_settings_acre2_sr_groups_opfor = f_radios_settings_acre2_sr_groups_blufor;
f_radios_settings_acre2_sr_groups_indfor = f_radios_settings_acre2_sr_groups_blufor;

f_radios_settings_acre2_lr_groups_blufor = [
    ["ANNA",    ["ANNA-SL", "ANNA-1", "ANNA-2", "Slav Team Sic"]],
    ["BORIS",    ["BORIS-SL", "BORIS-1", "BORIS-2"]],
	["CHARITON",    ["CHARITON-SL", "CHARITON-1", "CHARITON-2"]],
    ["COMMAND",  ["COMMISSAR", "GOPNIK-1", "GOPNIK-2"]],
    ["Echo",     []],
    ["Foxtrot",  []],
    ["Golf",     []],
    ["Hotel",    []],
    ["India",    []],
    ["Juliet",   []],
    ["Kilo",     []],
    ["Lima",     []],
    ["Mike",     []],
    ["November", []],
    ["Oscar", 	 []],
    ["Papa", 	 []],
    ["Quebec", 	 []],
    ["Romeo",    []],
    ["Sierra",   []],
    ["Tango",    []],
    ["Uniform",  []],
    ["Victor",   []],
    ["Whiskey",  []],
    ["X-ray",    []],
    ["Yankee",   []],
    ["Zulu",     []]
];

f_radios_settings_acre2_lr_groups_opfor = f_radios_settings_acre2_lr_groups_blufor;
f_radios_settings_acre2_lr_groups_indfor = f_radios_settings_acre2_lr_groups_blufor;

// ====================================================================================
// MISC ACRE2 settings, these are all set the ACRE2 defaults

// ACRE Radio loss settings.
// Indiciates how much terrian loss should be modelled.
// Values: 0 no loss, 1 full terrian loss, default: 1
[0] call acre_api_fnc_setLossModelScale;

// ACRE full Duplex
// Sets the duplex of radio transmissions. If set to true, it means that you will receive transmissions even while talking and multiple people can speak at the same time.
[true] call acre_api_fnc_setFullDuplex;

// ACRE Interference
// Sets whether transmissions will interfere with eachother. This, by default, causes signal loss when multiple people are transmitting on the same frequency.
[true] call acre_api_fnc_setInterference;

// ACRE can AI hear players?
// False - AI not hear players, true - AI hear players.
[true] call acre_api_fnc_setRevealToAI;
