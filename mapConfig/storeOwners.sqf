// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: techladdie, a3wasteland.com

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	//General Stores
	["GenStore1", -1, [], []],
	["GenStore2", -1, [], []],
	["GenStore3", -1, [], []],
	["GenStore4", -1, [], []],
	//Gun Stores
	["GunStore1", -1, [], []],
	["GunStore2", -1, [], []],
	["GunStore3", -1, [], []],
	["GunStore4", -1, [], []],
	
	//Vehicle Stores
	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", -1, [], ["Boats"]],
	["VehStore2", -1, [], ["Planes"]],
	["VehStore3", -1, [], []]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "CUP_U_C_Citizen_02"]]],
	["GenStore2", [["weapon", ""], ["uniform", "CUP_U_C_Citizen_02"]]],
	["GenStore3", [["weapon", ""], ["uniform", "CUP_U_C_Citizen_02"]]],
	["GenStore4", [["weapon", ""], ["uniform", "CUP_U_C_Citizen_02"]]],

	["GunStore1", [["weapon", ""], ["uniform", "CUP_U_C_Policeman_01"]]],
	["GunStore2", [["weapon", ""], ["uniform", "CUP_U_C_Policeman_01"]]],
	["GunStore3", [["weapon", ""], ["uniform", "CUP_U_C_Policeman_01"]]],
	["GunStore4", [["weapon", ""], ["uniform", "CUP_U_C_Policeman_01"]]],

	["VehStore1", [["weapon", ""], ["uniform", "CUP_U_C_Mechanic_01"]]],
	["VehStore2", [["weapon", ""], ["uniform", "CUP_U_C_Mechanic_01"]]],
	["VehStore3", [["weapon", ""], ["uniform", "CUP_U_C_Mechanic_01"]]]
];
