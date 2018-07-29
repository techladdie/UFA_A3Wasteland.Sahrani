// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: territories.sqf
//	@file Author: AgentRev, Bewilderbeest

// Territory system definitions. See territory/README.md for more details.
//
// 1 - Territory marker name. Must begin with 'TERRITORY_'
// 2 - Descriptive name
// 3 - Monetary value
// 4 - Territory category, currently unused. See territory/README.md for details.
// Valid territory categories are:
// CITY
// AIRFIELD
// RADIO
// RADAR
// POWER
// RESEARCH

//Template:
//	["TERRITORY_NAME", "Name to players", Monetary Value, "TYPE"], NO COMMA LAST ENTRY
//	["TERRITORY_NAME", "visName", Money, "TYPE"],

//Examples: Old categories

//	["TERRITORY_AGIA_NORTH", "North Agia Marina", 500, "TOWN"],
//	["TERRITORY_AIRBASE_NORTH", "North Stratis Airbase", , "AIRBASE"],
//	["TERRITORY_CAMP_MAXWELL", "Camp Maxwell", 500, "MILITARY"],

[
	//Airbases
	["TERRITORY_airbase_east", "Sahrani Airbase - East", 1500, "AIRFIELD"],
	["TERRITORY_airbase_west", "Sahrani Airbase - West", 1500, "AIRFIELD"],
	//Cities/towns
	["TERRITORY_arcadia", "Arcadia", 250, "CITY"],
	["TERRITORY_aussie", "ADF HQ", 1000, "CITY"],
	["TERRITORY_bagango_n", "Nth Bagango", 500, "CITY"],
	["TERRITORY_bagango_s", "Sth Bagango", 500, "CITY"],
	["TERRITORY_cayo", "Cayo", 250, "CITY"],
	["TERRITORY_corazol", "Corazol", 750, "CITY"],
	["TERRITORY_eponia", "Eponia", 500, "CITY"],
	["TERRITORY_everon", "everon", 250, "CITY"],
	["TERRITORY_masbete", "Masbete", 250, "CITY"],
	["TERRITORY_mercalillo", "Mercalillo", 250, "CITY"],
	["TERRITORY_obregan", "Obregan", 250, "CITY"],
	["TERRITORY_ortego", "Ortego", 750, "CITY"],
	["TERRITORY_paraiso", "Paraiso", 1000, "CITY"],
	//Misc
	["TERRITORY_OIL", "SaraOil Processing Plant", 5000, "RESEARCH"],
	["TERRITORY_power", "SaraSolar Power Generation Plant", 2000, "RESEARCH"],
	["TERRITORY_hospital", "Sahrani Hospital", 2000, "RESEARCH"],
	["TERRITORY_castle", "Terra Marismo Castillo", 2000, "CITY"]
	
]
