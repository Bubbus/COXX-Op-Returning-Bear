// F3 - Folk ARPS Assign Gear Script - CSAT
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		dm			- designated marksman
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//		crate_small	- small ammocrate
//		crate_med	- medium ammocrate
//		crate_large	- large ammocrate
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "acc_pointer_IR";	// IR Laser
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "optic_ACO_grn";		// ACO
_scope2 = "optic_MRCO";			// MRCO Scope - 1x - 6x
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x

_bipod1 = "bipod_02_F_hex";		// Default bipod
_bipod2 = "bipod_02_F_blk";		// Black bipod

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_L";	// 9mm suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "arifle_Katiba_F";
_riflemag = "30Rnd_65x39_caseless_green";
_riflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "arifle_Katiba_C_F";
_carbinemag = "30Rnd_65x39_caseless_green";
_carbinemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Mag";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "arifle_Katiba_GL_F";
_glriflemag = "30Rnd_65x39_caseless_green";
_glriflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";
_glmag = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "hgun_Rook40_F";
_pistolmag = "16Rnd_9x21_Mag";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles_OPFOR";

// UAV Terminal
_uavterminal = "O_UavTerminal";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "B_AssaultPack_ocamo";			// carries 120, weighs 20
_bagmedium = "B_FieldPack_ocamo";			// carries 200, weighs 30
_baglarge =  "B_Carryall_ocamo"; 			// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "O_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "O_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "O_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "O_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "O_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "O_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "O_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "O_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "O_HMG_01_support_F";			// used by Heavy SAM assistant gunner

//TFR RADIO BACKPACK
//Check if TFR is the radio addon is used
if(f_var_radios == 2) then {
	//Designate radio backpack that is to be used.
	_bagradio = "tf_mr3000";  //Remember to use "" for classnames eg "tf_rt1523g_sage"

	// Unit types you want to give long-range radios if previous is
	// E.G: ["co", "m"] would give the CO and all medics  long-range radios
	_backpackradiotypes = ["co","dc"];

	if(_typeOfUnit in _backpackradiotypes) then {
		_bagsmall = _bagradio;
		_bagmedium = _bagradio;
		_baglarge = _bagradio;
	};
};

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "LMG_Zafir_F";
_ARmag = "150Rnd_762x54_Box";
_ARmag_tr = "150Rnd_762x54_Box_Tracer";

// Medium MG
_MMG = "MMG_01_hex_F";
_MMGmag = "150Rnd_93x64_Mag";
_MMGmag_tr = "150Rnd_93x64_Mag";

// NON-DLC ALTERNATIVE:
//_MMG = "LMG_Zafir_F";
//_MMGmag = ""150Rnd_762x54_Box"";
//_MMGmag_tr = "150Rnd_762x54_Box_Tracer";

// Marksman rifle
_DMrifle = "srifle_DMR_05_hex_F";
_DMriflemag = "10Rnd_93x64_DMR_05_Mag";

// ASP1-KIR
// _DMrifle = "srifle_DMR_04_F";
// _DMriflemag = "10Rnd_127x54_Mag";

// Rifleman AT
_RAT = "launch_RPG32_F";
_RATmag = "RPG32_F";

// Medium AT
_MAT = "launch_RPG32_F";
_MATmag1 = "RPG32_F";
_MATmag2 = "RPG32_HE_F";

// Surface Air
_SAM = "launch_O_Titan_F";
_SAMmag = "Titan_AA";

// Heavy AT
_HAT = "launch_O_Titan_short_F";
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";

// Sniper
_SNrifle = "srifle_GM6_F";
_SNrifleMag = "5Rnd_127x108_Mag";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit

// Woodland-Hex
_baseUniform = ["U_O_CombatUniform_ocamo"];
_baseHelmet = ["H_HelmetO_ocamo"];
_baseGlasses = [];

// Urban
//_baseUniform = ["U_O_CombatUniform_oucamo"];
//_baseHelmet = ["H_HelmetO_oucamo"];

// Vests
_lightRig = ["V_HarnessO_brn"];
_mediumRig = ["V_TacVest_khk"]; 	// default for all infantry classes
_heavyRig = _mediumRig;

// Diver
_diverUniform =  ["U_O_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIR"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_O_PilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_O"];
_pilotRig = ["V_HarnessO_brn"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["U_O_SpecopsUniform_ocamo"];
_crewHelmet = ["H_HelmetCrew_O"];
_crewRig = ["V_HarnessO_brn"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_O_GhillieSuit"]; //DLC alternatives: ["U_O_FullGhillie_lsh","U_O_FullGhillie_ard","U_O_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_khk"];
_ghillieGlasses = [];

// Spec Op
_sfuniform = ["U_O_SpecopsUniform_ocamo"];
_sfhelmet = ["H_HelmetSpecO_ocamo","H_HelmetSpecO_blk"];
_sfRig = ["V_PlateCarrier1_blk"];
_sfGlasses = [];


// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

		// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem _nvg;					// Add and equip the faction's nvg
	_unit addItem _firstaid;				// Add a single first aid kit (FAK)
	_unit linkItem "ItemMap";				// Add and equip the map
	_unit linkItem "ItemCompass";			// Add and equip a compass
	_unit linkItem "ItemRadio";				// Add and equip A3's default radio
	_unit linkItem "ItemWatch";				// Add and equip a watch
	//_unit linkItem "ItemGPS"; 			// Add and equip a GPS

  // ADD ACE ITEMS
	_unit addItem "ACE_Flashlight_XL50";	// Add a flashlight for ACE map support.
	_unit addItem "ACE_Maptools";

	// Add medical items
	{_unit addItem "ACE_fieldDressing"} forEach [1,2,3,4,5,6,7,8]; // Bandages
	{_unit addItem "ACE_morphine"} forEach [1,2,3,4];
	//{_unit addItem "ACE_epinephrine"} forEach [1,2];
	//{_unit addItem "ACE_bloodIV"} forEach [1,2];
};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	_loadout = f_param_backpacks;
	if (count _this > 1) then {_loadout = _this select 1};
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_csat_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

	case "akm":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_Guerilla1_1";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "rhs_mag_rgo";
		this addItemToUniform "rhs_mag_rdg2_white";
		this addVest "V_Chestrig_oli";
		for "_i" from 1 to 6 do {this addItemToVest "rhs_30Rnd_762x39mm";};
		this addHeadgear "H_Booniehat_khk";

		this addWeapon "rhs_weap_akms";
		this addPrimaryWeaponItem "rhs_acc_dtkakm";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";
		
	};

	case "rpk":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_Guerilla2_1";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addVest "V_TacVest_blk";
		for "_i" from 1 to 2 do {this addItemToVest "hlc_45Rnd_762x39_m_rpk";};
		this addItemToVest "hlc_75Rnd_762x39_m_rpk";
		this addItemToVest "rhs_mag_rdg2_white";
		this addHeadgear "H_Bandanna_khk";

		this addWeapon "hlc_rifle_rpk";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
	case "medic":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_Guerilla2_3";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_epinephrine";};
		this addVest "V_TacVest_blk";
		for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
		this addBackpack "B_TacticalPack_blk";
		for "_i" from 1 to 2 do {this addItemToBackpack "ACE_bloodIV";};
		for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_rdg2_white";};
		for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
		this addItemToBackpack "rhs_mag_rdg2_black";
		this addHeadgear "H_Cap_oli";

		this addWeapon "rhs_weap_m4";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
	case "shotgun":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_Guerilla2_2";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addVest "V_Chestrig_blk";
		for "_i" from 1 to 5 do {this addItemToVest "rhsusf_8Rnd_00Buck";};
		this addItemToVest "rhsusf_8Rnd_Slug";
		this addHeadgear "H_Watchcap_camo";

		this addWeapon "rhs_weap_M590_8RD";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
	case "ak74":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_Guerilla2_1";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addVest "V_Chestrig_blk";
		for "_i" from 1 to 5 do {this addItemToVest "hlc_30Rnd_545x39_B_AK";};
		this addItemToVest "hlc_30Rnd_545x39_t_ak";
		this addItemToVest "rhs_mag_rgo";
		this addItemToVest "rhs_mag_rdg2_white";
		this addHeadgear "H_Shemag_olive";

		this addWeapon "hlc_rifle_ak74_dirty";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
	case "mosin":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_Guerilla3_1";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_rdg2_white";};
		this addVest "V_BandollierB_khk";
		for "_i" from 1 to 7 do {this addItemToVest "rhsgref_5Rnd_762x54_m38";};
		this addHeadgear "H_Shemag_olive";

		this addWeapon "rhs_weap_m38";
		this addWeapon "Binocular";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
	case "skorpion":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_Guerilla1_1";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_rgo";};
		this addItemToUniform "rhs_mag_rdg2_white";
		this addVest "V_Chestrig_oli";
		for "_i" from 1 to 8 do {this addItemToVest "rhsgref_20rnd_765x17_vz61";};
		this addItemToVest "rhsgref_10rnd_765x17_vz61";
		this addHeadgear "H_Shemag_olive";
		this addGoggles "Rev_Shades_clear";

		this addWeapon "rhs_weap_savz61";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
	case "lat":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_Guerrilla_6_1";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addVest "V_TacVest_blk";
		for "_i" from 1 to 5 do {this addItemToVest "rhs_30Rnd_762x39mm";};
		this addHeadgear "H_Bandanna_khk";
		this addGoggles "G_Aviator";

		this addWeapon "rhs_weap_akm";
		this addPrimaryWeaponItem "rhs_acc_dtkakm";
		this addWeapon "rhs_weap_rpg26";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
	case "fal":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_Guerilla1_1";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 3 do {this addItemToUniform "rhs_mag_rgo";};
		this addVest "V_BandollierB_blk";
		for "_i" from 1 to 6 do {this addItemToVest "hlc_20Rnd_762x51_B_fal";};
		this addItemToVest "hlc_20Rnd_762x51_T_fal";
		this addHeadgear "H_Cap_oli";
		this addGoggles "G_Shades_Blue";

		this addWeapon "hlc_rifle_FAL5000";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
	case "sniper":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_leader";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 4 do {this addItemToUniform "9Rnd_45ACP_Mag";};
		this addVest "V_BandollierB_oli";
		for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_rdg2_white";};
		for "_i" from 1 to 4 do {this addItemToVest "Cre8ive_Mag_CV_557_5Rnd";};
		for "_i" from 1 to 2 do {this addItemToVest "Cre8ive_Mag_CV_557_5Rnd_Tracer_Red";};
		this addHeadgear "H_Shemag_olive";

		this addWeapon "Cre8ive_Rfl_CV_557";
		this addPrimaryWeaponItem "optic_KHS_old";
		this addWeapon "hgun_ACPC2_F";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
	case "pkm":
	{
		removeAllWeapons this;
		removeAllItems this;
		removeAllAssignedItems this;
		removeUniform this;
		removeVest this;
		removeBackpack this;
		removeHeadgear this;
		removeGoggles this;

		this forceAddUniform "U_IG_leader";
		for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
		this addItemToUniform "rhs_mag_rgo";
		for "_i" from 1 to 2 do {this addItemToUniform "rhs_mag_rdg2_white";};
		this addVest "V_TacVest_blk";
		this addItemToVest "rhs_100Rnd_762x54mmR";
		this addBackpack "rhs_sidor";
		this addItemToBackpack "rhs_100Rnd_762x54mmR";
		this addItemToBackpack "rhs_100Rnd_762x54mmR_green";
		this addHeadgear "H_Booniehat_khk";

		this addWeapon "rhs_weap_pkm";

		this linkItem "ItemMap";
		this linkItem "ItemCompass";
		this linkItem "ItemWatch";
		this linkItem "ItemRadio";

	};
	
// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_csat.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================


// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;
