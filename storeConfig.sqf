// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2017 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: techladdie
# @@Create Date: 11:07 p.m. 15/10/17
# @@Note: Customised for the addition of CUP items - Should be 1.4 compatible
# @@Note: NO COMMA AT LAST ENTRY OF EACH CATEGORY
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost
//["StoreName", "Classname", "BuyPrice"],

// empty name = name is extracted from class config


pistolArray = compileFinal str
//Pistols
[
	// Handguns
	["PM Pistol", "hgun_Pistol_01_F", 100],
	["P07 Pistol", "hgun_P07_F", 200, "noDLC"],
	["P07 Pistol (Khaki)", "hgun_P07_khk_F", 200],
	["Rook-40 Pistol", "hgun_Rook40_F", 250],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 350],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 300],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 300],
	
	["::CUP Handguns::", "", 0, "item"],
	//CUP Handguns
	["PB 6P9", "CUP_hgun_PB6P9", 200],
	["PB 6P9 Silenced", "CUP_hgun_PB6P9_snds", 225],
	
	["Makarov PM", "CUP_hgun_Makarov", 100],
	
	["M1911", "CUP_hgun_Colt1911", 250],
	["M1911 Silenced", "CUP_hgun_Colt1911_snds", 275],
	
	["CZ 75 P-07 Compact", "CUP_hgun_Compact", 200],
	["CZ 75 P-07 Duty", "CUP_hgun_Duty", 225],
	["CZ 75 P-07 Duty Flashlight", "CUP_hgun_Duty_M3X", 250],
	
	["Glock 17", "CUP_hgun_Glock17", 200],
	["Glock 17 Flashlight", "CUP_hgun_glock17_flashlight", 225],
	["Glock 17 Silenced", "CUP_hgun_glock17_snds", 225],
	["Glock 17 Flashlight Silenced", "CUP_hgun_glock17_flashlight_snds", 250],
	
	["Taurus Tracker Model 455", "CUP_hgun_TaurusTracker455", 250],
	["Taurus Tracker Model 455 (Gold)", "CUP_hgun_TaurusTracker455_gold", 350],
	
	["M9", "CUP_hgun_M9", 200],
	["M9 Silenced", "CUP_hgun_M9_snds", 225],
	
	["CZ 75 SP-01 Phantom", "CUP_hgun_Phantom", 200],
	["CZ 75 SP-01 Phantom Flashlight", "CUP_hgun_Phantom_Flashlight", 225],
	["CZ 75 SP-01 Phantom Flashlight Silenced", "CUP_hgun_Phantom_Flashlight_snds", 250],
	
	["Micro UZI PDW", "CUP_hgun_MicroUzi", 300],
	["Micro UZI PDW Silenced", "CUP_hgun_MicroUzi_snds", 325],
	
	["SA-61", "CUP_hgun_SA61", 100]
	
];

smgArray = compileFinal str
//Sub-Machine-Guns
[
	["PDW2000 SMG", "hgun_PDW2000_F", 300],
	["Protector SMG", "SMG_05_F", 300],
	["Sting SMG", "SMG_02_F", 200],
	["Vermin SMG", "SMG_01_F", 200],
	
	["::CUP SMG's::", "", 0, "item"],
	//CUP SMG/AutoShotguns
	["PP-19 Bizon", "CUP_smg_bizon", 300],
	["PP-19 Bizon Silenced", "CUP_smg_bizon_snds", 325],
	
	["Scorpion EVO", "CUP_smg_EVO", 300],
	["Scorpion EVO Flashlight", "CUP_smg_EVO_MRad_Flashlight", 325],
	["Scorpion EVO Flashlight Silenced", "CUP_smg_EVO_MRad_Flashlight_Snds", 350],
	
	["MP5A5", "CUP_smg_MP5A5", 300],
	["MP5 SD6", "CUP_smg_MP5SD6", 325],
	
	["AA-12", "CUP_sgun_AA12", 500],
	["M1014", "CUP_sgun_M1014", 500],
	["Saiga12K", "CUP_sgun_Saiga12K", 500]
];

rifleArray = compileFinal str
//Assault Rifles
[
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 750],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 400],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 400],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 500],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 500],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 550],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 550],

	["TRG-20 Carbine", "arifle_TRG20_F", 400],
	["TRG-21 Rifle ", "arifle_TRG21_F", 500],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 550],

	["Katiba Carbine", "arifle_Katiba_C_F", 450],
	["Katiba Rifle", "arifle_Katiba_F", 500],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 550],

	["MX Carbine", "arifle_MXC_F", 500],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 500],
	["MX Carbine (Khaki)", "arifle_MXC_khk_F", 500, "noDLC"],
	["MX Rifle", "arifle_MX_F", 600],
	["MX Rifle (Black)", "arifle_MX_Black_F", 600],
	["MX Rifle (Khaki)", "arifle_MX_khk_F", 600, "noDLC"],
	["MX 3GL Rifle", "arifle_MX_GL_F", 650],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 650],
	["MX 3GL Rifle (Khaki)", "arifle_MX_GL_khk_F", 650, "noDLC"],

	["SPAR-16 Rifle", "arifle_SPAR_01_blk_F", 500],
	["SPAR-16 Rifle (Khaki)", "arifle_SPAR_01_khk_F", 500],
	["SPAR-16 Rifle (Sand)", "arifle_SPAR_01_snd_F", 500],
	["SPAR-16 GL Rifle", "arifle_SPAR_01_GL_blk_F", 550],
	["SPAR-16 GL Rifle (Khaki)", "arifle_SPAR_01_GL_khk_F", 550],
	["SPAR-16 GL Rifle (Sand)", "arifle_SPAR_01_GL_snd_F", 550],

	["CAR-95 Rifle", "arifle_CTAR_blk_F", 600],
	["CAR-95 Rifle (Hex)", "arifle_CTAR_hex_F", 600],
	["CAR-95 Rifle (G Hex)", "arifle_CTAR_ghex_F", 600],
	["CAR-95 GL Rifle", "arifle_CTAR_GL_blk_F", 650],
	["CAR-95 GL Rifle (Hex)", "arifle_CTAR_GL_hex_F", 650],
	["CAR-95 GL Rifle (G Hex)", "arifle_CTAR_GL_ghex_F", 650],
	["Type 115 Stealth Rifle", "arifle_ARX_blk_F", 750],
	["Type 115 Stealth Rifle (Hex)", "arifle_ARX_hex_F", 750],
	["Type 115 Stealth Rifle (G Hex)", "arifle_ARX_ghex_F", 750],

	["AKS-74U Carbine", "arifle_AKS_F", 250],
	["AKM Rifle", "arifle_AKM_F", 300],
	["AK-12 Rifle", "arifle_AK12_F", 350],
	["AK-12 GL Rifle", "arifle_AK12_GL_F", 400],

	// Marksman Rifles
	["MXM Rifle", "arifle_MXM_F", 700],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 700],
	["MXM Rifle (Khaki)", "arifle_MXM_khk_F", 700, "noDLC"],
	["Rahim DMR Rifle", "srifle_DMR_01_F", 750],
	["Mk18 ABR Rifle", "srifle_EBR_F", 750],

	// DLC
	["CMR-76 Stealth Rifle", "srifle_DMR_07_blk_F", 500],
	["CMR-76 Stealth Rifle (Hex)", "srifle_DMR_07_hex_F", 500],
	["CMR-76 Stealth Rifle (G Hex)", "srifle_DMR_07_ghex_F", 550],
	["SPAR-17 Rifle", "arifle_SPAR_03_blk_F", 750],
	["SPAR-17 Rifle (Khaki)", "arifle_SPAR_03_khk_F", 750],
	["SPAR-17 Rifle (Sand)", "arifle_SPAR_03_snd_F", 750],

	["Mk14 Rifle (Camo)", "srifle_DMR_06_camo_F", 800],
	["Mk14 Rifle (Olive)", "srifle_DMR_06_olive_F", 800],
	["Mk-I EMR Rifle", "srifle_DMR_03_F", 800],
	["Mk-I EMR Rifle (Camo)", "srifle_DMR_03_multicam_F", 800],
	["Mk-I EMR Rifle (Khaki)", "srifle_DMR_03_khaki_F", 800],
	["Mk-I EMR Rifle (Sand)", "srifle_DMR_03_tan_F", 800],
	["Mk-I EMR Rifle (Woodland)", "srifle_DMR_03_woodland_F", 800],
	["MAR-10 Rifle", "srifle_DMR_02_F", 1000],
	["MAR-10 Rifle (Camo)", "srifle_DMR_02_camo_F", 1000],
	["MAR-10 Rifle (Sand)", "srifle_DMR_02_sniper_F", 1000],
	["Cyrus Rifle", "srifle_DMR_05_blk_F", 900],
	["Cyrus Rifle (Hex)", "srifle_DMR_05_hex_F", 900],
	["Cyrus Rifle (Tan)", "srifle_DMR_05_tan_f", 900],

	// Sniper Rifles
	["M320 LRR Sniper", "srifle_LRR_LRPS_F", 2500],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_LRPS_F", 2500],
	["M320 LRR Sniper (Tropic)", "srifle_LRR_tna_LRPS_F", 2500, "noDLC"],
	["GM6 Lynx Sniper", "srifle_GM6_LRPS_F", 1750],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_LRPS_F", 1750],
	["GM6 Lynx Sniper (G Hex)", "srifle_GM6_ghex_LRPS_F", 1750, "noDLC"],

	["ASP-1 Kir Rifle", "srifle_DMR_04_F", 1250],
	["ASP-1 Kir Rifle (Tan)", "srifle_DMR_04_tan_F", 1250],
	
	["::CUP Rifles::", "", 0, "item"],
	//CUP Rifles
	//Assault
	["AKS-74 Kobra", "CUP_arifle_AKS74_kobra", 250],
	["AKS-74U Kobra Silenced", "CUP_arifle_AKS74UN_kobra_snds", 275],
	["AKS", "CUP_arifle_AKS", 300],
	["AKS (Gold)", "CUP_arifle_AKS_Gold", 300],
	["AKM", "CUP_arifle_AKM", 300],
	["AK-74 GP-25 Kobra", "CUP_arifle_AK74_GL_kobra", 325],
	["RPK-74", "CUP_arifle_RPK74", 300],
	["AK-107 Kobra", "CUP_arifle_AK107_kobra", 350],
	
	["CZ 805 A1", "CUP_arifle_CZ805_A1", 500],
	["CZ 805 A1 GL", "CUP_arifle_CZ805_GL", 550],
	["CZ 805 B1", "CUP_arifle_CZ805_B", 600],
	["CZ 805 B1 GL", "CUP_arifle_CZ805_B_GL", 650],
	
	["FN FAL (Railed)", "CUP_arifle_FNFAL_railed", 650],

	["G36A", "CUP_arifle_G36A", 500],
	["G36A Camo", "CUP_arifle_G36A_camo", 500],
	["G36K", "CUP_arifle_G36K", 500],
	["G36K Camo", "CUP_arifle_G36K_camo", 500],
	["G36C", "CUP_arifle_G36C", 500],
	["G36C Camo", "CUP_arifle_G36C_camo", 500],

	["Lee Enfield (Railed)", "CUP_srifle_LeeEnfield_rail", 450],
	
	["L129A1", "CUP_srifle_L129A1", 750],
	["L129A1 w HG", "CUP_srifle_L129A1_HG", 775],
	["L85A2", "CUP_arifle_L85A2_NG", 400],
	["L85A2 w Grip", "CUP_arifle_L85A2_G", 425],
	["L85A2 Grip w GL", "CUP_arifle_L85A2_GL", 425],
	["L86A2", "CUP_arifle_L86A2", 500],


	["M4A1 - Black", "CUP_arifle_M4A1", 400],
	["M4A1 - Black GL", "CUP_arifle_M4A1_BUIS_GL", 450],
	["M4A1 - DES", "CUP_arifle_M4A1_desert", 400],
	["M4A1 - DES GL", "CUP_arifle_M4A1_BUIS_desert_GL", 450],
	["M4A1 - WDL", "CUP_arifle_M4A1_camo", 400],
	["M4A1 - WDL GL", " CUP_arifle_M4A1_BUIS_camo_GL ", 450],
	["M16A2", "CUP_arifle_M16A2", 400],
	["M16A2 GL", "CUP_arifle_M16A2_GL", 450],
	["M16A4", "CUP_arifle_M16A4_Base", 400],
	["M16A4 GL", "CUP_arifle_M16A4_GL", 450],
	
	["Mk16 Standard", "CUP_arifle_Mk16_STD", 400],
	["Mk16 Standard EGLM", " CUP_arifle_Mk16_STD_EGLM ", 450],
	["Mk16 CQC", "CUP_arifle_Mk16_CQC", 400],
	["Mk16 CQC EGLM", " CUP_arifle_Mk16_CQC_EGLM ", 450],
	["Mk16 SV", " CUP_arifle_Mk16_SV ", 450],
	["Mk17 Standard", " CUP_arifle_Mk17_STD ", 650],
	["Mk17 Standard EGLM", " CUP_arifle_Mk17_STD_EGLM ", 700],
	["Mk17 CQC", " CUP_arifle_Mk17_CQC ", 650],
	["Mk17 CQC EGLM", " CUP_arifle_Mk17_CQC_EGLM ", 650],
	["Mk16 Sniper", " CUP_arifle_Mk20 ", 800],

	["SA. 58 P", "CUP_arifle_Sa58P", 400],
	["SA. 58 RIS1", "CUP_arifle_Sa58RIS1", 350],
	["SA. 58 RIS2", "CUP_arifle_Sa58RIS2", 400],
	["SA. 58P", "CUP_arifle_Sa58P", 300],
	["SA. 58V", "CUP_arifle_Sa58V", 300],

	
	
	
	//CUP Marksman Rifles
	["M14 DMR", "CUP_srifle_M14_DMR", 750],
	["M110", "CUP_srifle_M110", 850],
	
	//CUP Sniper Rifles
	["AS50", "CUP_srifle_AS50", 4000],	//Anti-Materiel Rifle
	["CZ 750 S1 M1", "CUP_srifle_CZ750", 2000],
	["KSVK", "CUP_arifle_ksvk_PSO3", 3000],	//Anti-Materiel Rifle
	["L115A1 (Desert)", "CUP_srifle_AWM_des_SBPMII", 2500],
	["L115A1 (Woodland)", "CUP_srifle_AWM_wdl_SBPMII", 2500],
	["M24 (desert)", "CUP_srifle_M24_des", 1500],
	["M24 (woodland)", "CUP_srifle_M24_wdl", 1500],
	["M40A3", "CUP_srifle_M40A3", 1750],
	["M107", "CUP_srifle_M107_Base", 3500],
	["Mk 12 SPR Leupold Mk4", "CUP_srifle_Mk12SPR_LeupoldM3LR", 600],
	["SVD Dragunov", "CUP_srifle_SVD_wdl_ghillie", 1500],
	["VSS Vintorez", "CUP_srifle_VSSVintorez", 850]
];

lmgArray = compileFinal str
//Light Machine Guns
[
	["MX SW LMG", "arifle_MX_SW_F", 750],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 750],
	["MX SW LMG (Khaki)", "arifle_MX_SW_khk_F", 750, "noDLC"],
	["Mk200 LMG", "LMG_Mk200_F", 800],	//6.5mm
	["Zafir LMG", "LMG_Zafir_F", 850],	//7.62mm

	["SPAR-16S LMG", "arifle_SPAR_02_blk_F", 750],			//5.56mm
	["SPAR-16S LMG (Khaki)", "arifle_SPAR_02_khk_F", 750],
	["SPAR-16S LMG (Sand)", "arifle_SPAR_02_snd_F", 750],
	["CAR-95-1 LMG", "arifle_CTARS_blk_F", 575],			//5.8mm
	["CAR-95-1 LMG (Hex)", "arifle_CTARS_hex_F", 575],
	["CAR-95-1 LMG (G Hex)", "arifle_CTARS_ghex_F", 575],
	["LIM-85 LMG", "LMG_03_F", 750],						//5.56mm

	["SPMG MMG (Sand)", "MMG_02_sand_F", 1000],
	["SPMG MMG (MTP)", "MMG_02_camo_F", 1000],
	["SPMG MMG (Black)", "MMG_02_black_F", 1000],
	["Navid MMG (Tan)", "MMG_01_tan_F", 1000],
	["Navid MMG (Hex)", "MMG_01_hex_F", 1000],
	
	["::CUP LMG's::", "", 0, "item"],
	//CUP LMG's
	["L7A2", "CUP_lmg_L7A2", 750],
	["L110A1", "CUP_lmg_L110A1", 500],
	["M240", "CUP_lmg_M240", 800],
	["M249 Para", "CUP_lmg_M249_para", 750],
	["M249 (Big)", "CUP_lmg_M249", 850],
	["Mk48 Mod 0 (desert)", "CUP_lmg_Mk48_des", 850],
	["Mk48 Mod 0 (woodland)", "CUP_lmg_Mk48_wdl", 850],
	["PKM", "CUP_lmg_PKM", 850],
	["PKP Pecheneg", "CUP_lmg_Pecheneg", 850],
	["UK59", "CUP_lmg_UK59", 800]
];

launcherArray = compileFinal str
//Launchers
[
	["RPG-7", "launch_RPG7_F", 850],
	["RPG-42 Alamut", "launch_RPG32_F", 1000],
	["RPG-42 Alamut (G Hex)", "launch_RPG32_ghex_F", 1000, "noDLC"],
	["PCML", "launch_NLAW_F", 2500],
	["MAAWS Mk4 Mod 0 (Green)", "launch_MRAWS_green_rail_F", 1250, "noDLC"], // RPG-42 and MAAWS are similar, but MAAWS has longer range
	["MAAWS Mk4 Mod 0 (Olive)", "launch_MRAWS_olive_rail_F", 1250, "noDLC"],
	["MAAWS Mk4 Mod 0 (Sand)", "launch_MRAWS_sand_rail_F", 1250, "noDLC"],
	["MAAWS Mk4 Mod 1 (Green)", "launch_MRAWS_green_F", 2000, "noDLC"], // MAAWS Mod 1 has nightvision and laser rangefinder, while Mod 0 doesn't
	["MAAWS Mk4 Mod 1 (Olive)", "launch_MRAWS_olive_F", 1250, "noDLC"],
	["MAAWS Mk4 Mod 1 (Sand)", "launch_MRAWS_sand_F", 1250, "noDLC"],
	["9M135 Vorona (Brown)", "launch_O_Vorona_brown_F", 2000, "noDLC"],
	["9M135 Vorona (Green)", "launch_O_Vorona_green_F", 2000, "noDLC"],
	["Titan MPRL Compact (Sand)", "launch_Titan_short_F", 3500],
	["Titan MPRL Compact (Coyote)", "launch_O_Titan_short_F", 3500],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 3500],
	["Titan MPRL Compact (Tropic)", "launch_B_Titan_short_tna_F", 3500, "noDLC"],
	["Titan MPRL Compact (G Hex)", "launch_O_Titan_short_ghex_F", 3500, "noDLC"],
	["Titan MPRL AA (Sand)", "launch_Titan_F", 4000],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 4000],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 4000],
	["Titan MPRL AA (Tropic)", "launch_B_Titan_tna_F", 4000, "noDLC"],
	["Titan MPRL AA (G Hex)", "launch_O_Titan_ghex_F", 4000, "noDLC"],
	
	["::CUP Launchers::", "", 0, "item"],
	//CUP Launchers
	["FIM-92 Stinger", "CUP_launch_FIM92Stinger", 4000],
	["FGM-148 Javelin", "CUP_launch_Javelin", 3500],
	["Igla 9K38", "CUP_launch_Igla", 4000],
	["M136 AT-4 Launcher", "CUP_launch_M136", 1000],
	["M3 MAAWS", "CUP_launch_MAAWS", 800],
	["M3 MAAWS Scope", "CUP_launch_MAAWS_Scope", 800],
	["M47 Dragon", "CUP_launch_M47", 850],
	["M72A6", "CUP_launch_M72A6_Special", 3000],
	["Metis Launcher", "CUP_launch_Metis", 1500],
	["Mk153 Mod 0 SMAW", "CUP_launch_Mk153Mod0", 1000],
	["Mk153 Mod 0 SMAW Optics", "CUP_launch_Mk153Mod0_SMAWOptics", 1250],
	["NLAW", "CUP_launch_NLAW", 2500],
	["RPG-7V", "CUP_launch_RPG7V", 850],
	["RPG 18", "CUP_launch_RPG18", 1000],
	["Strela-2 9K32", "CUP_launch_9K32Strela", 4000]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
//Static Guns
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd", "B_static_AT_F", 2500], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd", "O_static_AT_F", 2500],
	["Static Titan AT 4Rnd", "I_static_AT_F", 2500],
	["Static Titan AA 4Rnd", "B_static_AA_F", 3000],
	["Static Titan AA 4Rnd", "O_static_AA_F", 3000],
	["Static Titan AA 4Rnd", "I_static_AA_F", 3000],
	["Mk30 HMG .50 Low tripod", "B_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod", "O_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod", "I_HMG_01_F", 2000],
	// ["Mk30A HMG .50 Sentry", "B_HMG_01_A_F", 5000], // "A" = Autonomous = Overpowered
	// ["Mk30A HMG .50 Sentry", "O_HMG_01_A_F", 5000],
	// ["Mk30A HMG .50 Sentry", "I_HMG_01_A_F", 5000],
	["Mk30 HMG .50 High tripod", "B_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod", "O_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod", "I_HMG_01_high_F", 3000],
	["Mk32 GMG 20mm Low tripod", "B_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod", "O_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod", "I_GMG_01_F", 5000],
	// ["Mk32A GMG 20mm Sentry", "B_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry", "O_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry", "I_GMG_01_A_F", 10000],
	["Mk32 GMG 20mm High tripod", "B_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod", "O_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod", "I_GMG_01_high_F", 6000],
	["Mk6 Mortar", "B_Mortar_01_F", 12500],
	["Mk6 Mortar", "O_Mortar_01_F", 12500],
	["Mk6 Mortar", "I_Mortar_01_F", 12500]
];

throwputArray = compileFinal str
//Grenades & Placeable Mines 
[
	["RGN Mini Grenade", "MiniGrenade", 100],
	["RGO Frag Grenade", "HandGrenade", 200],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 300],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 400],
	["APERS Mine", "APERSMine_Range_Mag", 3000],
	["APERS Mine", "APERSMine_Range_Mag", 3000],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 400],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 350],
	["AT Mine", "ATMine_Range_Mag", 400],
	["Explosive Charge", "DemoCharge_Remote_Mag", 600],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 1000],
	["Smoke Grenade (White)", "SmokeShell", 75],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 75],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 75],
	["Smoke Grenade (Green)", "SmokeShellGreen", 75],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 75],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 75],
	["Smoke Grenade (Red)", "SmokeShellRed", 75],
	
	["::CUP Grenades/Explosives::", "", 0, "item"],
	//CUP Grenades/Explosives
	["M67 Frag Grenade", "CUP_HandGrenade_M67", 100],
	["RGD-5 Frag Grenade", "CUP_HandGrenade_RGD5", 75]
	
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
//Ammunitions for weapons
[
	["9mm 10Rnd Mag", "10Rnd_9x21_Mag", 5],
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 15],
	["9mm 30Rnd SMG Mag", "30Rnd_9x21_Mag_SMG_02", 15],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 5],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 15],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 20],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 15],
	["5.45mm 30Rnd Mag", "30Rnd_545x39_Mag_F", 20],
	["5.45mm 30Rnd Tracer (Yellow) Mag", "30Rnd_545x39_Mag_Tracer_F", 15],
	["5.45mm 30Rnd Tracer (Green) Mag", "30Rnd_545x39_Mag_Tracer_Green_F", 15],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 10],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 20],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 15],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 15],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 15],
	["5.56mm 150Rnd Mag", "150Rnd_556x45_Drum_Mag_F", 100],
	["5.56mm 150Rnd Tracer (Red) Mag", "150Rnd_556x45_Drum_Mag_Tracer_F", 75],
	["5.56mm 200Rnd Box", "200Rnd_556x45_Box_F", 125],
	["5.56mm 200Rnd Tracer (Yellow) Box", "200Rnd_556x45_Box_Tracer_F", 100],
	["5.56mm 200Rnd Tracer (Red) Box", "200Rnd_556x45_Box_Tracer_Red_F", 100],
	["5.8mm 30Rnd Mag", "30Rnd_580x42_Mag_F", 20],
	["5.8mm 30Rnd Tracer (Green) Mag", "30Rnd_580x42_Mag_Tracer_F", 15],
	["5.8mm 100Rnd Mag", "100Rnd_580x42_Mag_F", 100],
	["5.8mm 100Rnd Tracer (Green) Mag", "100Rnd_580x42_Mag_Tracer_F", 75],
	["6.5mm 20Rnd Mag", "20Rnd_650x39_Cased_Mag_F", 15],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 20],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 15],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 20],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 15],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 75],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 50],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 150],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 125],
	//["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 15],
	["7.62mm 10Rnd Mag", "10Rnd_762x54_Mag", 15],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 25],
	["7.62mm 30Rnd Mag", "30Rnd_762x39_Mag_F", 20],
	["7.62mm 30Rnd Tracer (Yellow) Mag", "30Rnd_762x39_Mag_Tracer_F", 15],
	["7.62mm 30Rnd Tracer (Green) Mag", "30Rnd_762x39_Mag_Tracer_Green_F", 15],
	//["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 150],
	//["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 125],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 150],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x54_Box_Tracer", 125],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 50],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 150],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 50],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 150],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 50],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 50],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 60],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 75],
	[".50 BW 10Rnd Mag", "10Rnd_50BW_Mag_F", 50],             //                 hit                      hit,  radius
	["PG-7VM HEAT Grenade", "RPG7_F", 300],                   // Direct damage:  343     | Splash damage:  13,  3.0m     | Guidance: none
	["RPG-42 AT Rocket", "RPG32_F", 400],                     //                 422     |                 28,  2.5m     |           none
	["RPG-42 HE Rocket", "RPG32_HE_F", 300],                  //                 200     |                 50,  6.0m     |           none
	["MAAWS HEAT 75 Rocket", "MRAWS_HEAT_F", 500],            //                 435     |                 14,  2.0m     |           none
	["MAAWS HE 44 Rocket", "MRAWS_HE_F", 400],                //                 200     |                 50,  6.0m     |           none
	["9M135 HEAT Missile", "Vorona_HEAT", 1000],              //                 634     |                 28,  2.5m     |           mouse
	["9M135 HE Missile", "Vorona_HE", 750],                   //                 220     |                 45,  8.0m     |           mouse
	["PCML AT Missile", "NLAW_F", 750],                       //                 462     |                 25,  2.4m     |           laser/IR, cold/hot ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 1000],            //                 515     |                 20,  2.0m     |           mouse, laser/IR, hot ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 750],        //                 100     |                 25, 10.0m     |           mouse, laser/IR
	["Titan AA Missile", "Titan_AA", 750],                    //                  80     |                 60,  6.0m     |           aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50],
	
	["::CUP Ammunition::", "", 0, "item"],
	//CUP Ammunitions
	
	//Pistol
	[".45 ACP 7Rnd Mag", "CUP_7Rnd_45ACP_1911", 50],
	["9x19 10Rnd Mag", "CUP_10Rnd_9x19_Compact", 20],
	["9x19 17Rnd Mag", "CUP_17Rnd_9x19_glock17", 25],
	["9x19 15Rnd Mag", "CUP_15Rnd_9x19_M9", 25],
	["9x18 8Rnd Mag", "CUP_8Rnd_9x18_Makarov_M", 10],
	["9x18 8Rnd Mag (SD)", "CUP_8Rnd_9x18_MakarovSD_M", 10],
	["9x19 30Rnd Mag", "CUP_30Rnd_9x19_UZI", 50],
	["9x19 18Rnd Mag", "CUP_18Rnd_9x19_Phantom", 25],
	[".45 ACP 6Rnd Mag", "CUP_6Rnd_45ACP_M", 45],
	["7.65x17 20Rnd Ball Mag", "CUP_20Rnd_B_765x17_Ball_M", 10],
	
	//9x19
	["9x19 64Rnd Bizon Mag", "CUP_64Rnd_9x19_Bizon_M", 50],
	["9x19 64Rnd Bizon Mag (Green)", "CUP_64Rnd_Green_Tracer_9x19_Bizon_M", 50],
	["9x19 64Rnd Bizon Mag (Red)", "CUP_64Rnd_Red_Tracer_9x19_Bizon_M", 50],
	["9x19 64Rnd Bizon Mag (White)", "CUP_64Rnd_White_Tracer_9x19_Bizon_M", 50],
	["9x19 64Rnd Bizon Mag (Yellow)", "CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M", 50],
	["9x19 30Rnd Evo Mag", "CUP_30Rnd_9x19_EVO", 50],
	["9x19 30Rnd MP5 Mag", "CUP_30Rnd_9x19_MP5", 50],
	
	//Shotguns
	["AA12 20Rnd Pellets", "CUP_20Rnd_B_AA12_Pellets", 100],
	["AA12 20Rnd Slugs", "CUP_20Rnd_B_AA12_74Slug", 100],
	["AA12 20Rnd HE", "CUP_20Rnd_B_AA12_HE", 1000],
	["Benelli 8Rnd Slugs", "CUP_8Rnd_B_Beneli_74Slug", 50],
	["Saiga 8Rnd Slugs", "CUP_8Rnd_B_Saiga12_74Slug_M", 50],
	
	//5.45
	["5.45x39 30Rnd", "CUP_30Rnd_545x39_AK_M", 50],
	["5.45x39 30Rnd (Green)", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M", 50],
	["5.45x39 30Rnd (Red)", "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M", 50],
	["5.45x39 30Rnd (White)", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_M", 50],
	["5.45x39 30Rnd (Yellow)", "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M", 50],
	["5.45x39 75Rnd (Green)", "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 100],
	
	//5.56
	["5.56x45 20Rnd STANAG", "CUP_20Rnd_556x45_Stanag", 40],
	["5.56x45 30Rnd STANAG", "CUP_30Rnd_556x45_Stanag", 50],
	["5.56x45 30Rnd G36/CZ805", "CUP_30Rnd_556x45_G36", 50],
	["5.56x45 30Rnd G36/CZ805 (Red)", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36", 50],
	["5.56x45 30Rnd G36/CZ805 (Green)", "CUP_30Rnd_TE1_Green_Tracer_556x45_G36", 50],
	["5.56x45 30Rnd G36/CZ805 (Yellow)", "CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36", 50],
	
	["5.56x45 100Rnd Beta C", "CUP_100Rnd_556x45_BetaCMag", 150],
	["5.56x45 100Rnd Beta C (Red)", "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag", 150],
	["5.56x45 100Rnd Beta C (Green)", "CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag", 150],
	["5.56x45 100Rnd Beta C (Yellow)", "CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag", 150],
	["5.56x45 100Rnd M249 Box (Green)", "CUP_100Rnd_TE4_Green_Tracer_556x45_M249", 150],
	["5.56x45 100Rnd M249 Box (Red)", "CUP_100Rnd_TE4_Red_Tracer_556x45_M249", 150],
	["5.56x45 100Rnd M249 Box (Yellow)", "CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249", 150],
	
	["5.56x45 200Rnd M249 Belt (Red)", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", 250],
	["5.56x45 200Rnd M249 Belt (Yellow)", "CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249", 250],
	["5.56x45 200Rnd M249 Belt (Red)", "CUP_200Rnd_TE1_Red_Tracer_556x45_M249", 250],
	["5.56x45 200Rnd M249 Belt (Green)", "CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1", 250],
	["5.56x45 200Rnd M249 Belt (Red)", "CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1", 250],
	["5.56x45 200Rnd M249 Belt (Yellow)", "CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1", 250],
	
	//7.62
	["7.62x39 30Rnd AK-47 Magazine", "CUP_30Rnd_762x39_AK47_M", 50],
	["7.62x39 30Rnd Sa vz. 58 Tracer (Green)", "CUP_30Rnd_Sa58_M_TracerG", 50],
	["7.62x39 30Rnd Sa vz. 58 Tracer (Red)", "CUP_30Rnd_Sa58_M_TracerR", 50],
	["7.62x39 30Rnd (Yellow)", "CUP_30Rnd_Sa58_M_TracerY", 50],
	["7.62x39 30Rnd Sa vz. 58 Mag", "CUP_30Rnd_Sa58_M", 50],
	
	["7.62x51  5Rnd M24 ", "CUP_5Rnd_762x51_M24", 100],
	["7.62x51 10Rnd CZ 750 Tracer Mag", "CUP_10Rnd_762x51_CZ750_Tracer", 100],
	["7.62x51 10Rnd CZ 750 Mag", "CUP_10Rnd_762x51_CZ750", 100],

	["7.62x51 20Rnd CZ805B", "CUP_20Rnd_762x51_CZ805B", 75],
	["7.62x51 20Rnd CZ805B (Yellow)", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_CZ805B", 75],
	["7.62x51 20Rnd CZ805B (Red)", "CUP_20Rnd_TE1_Red_Tracer_762x51_CZ805B", 75],
	["7.62x51 20Rnd CZ805B (Green)", "CUP_20Rnd_TE1_Green_Tracer_762x51_CZ805B", 75],
	["7.62x51 20Rnd CZ805B (White)", "CUP_20Rnd_TE1_White_Tracer_762x51_CZ805B", 75],
	["7.62x51 20Rnd DMR", "CUP_20Rnd_762x51_DMR", 100],
	["7.62x51 20Rnd DMR Yellow Tracer (Yellow)", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR", 100],
	["7.62x51 20Rnd DMR Red Tracer", "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR", 100],
	["7.62x51 20Rnd DMR Green Tracer", "CUP_20Rnd_TE1_Green_Tracer_762x51_DMR", 100],
	["7.62x51 20Rnd DMR White Tracer)", "CUP_20Rnd_TE1_White_Tracer_762x51_DMR", 100],
	["7.62x51 20Rnd FN FAL Magazine", "CUP_20Rnd_762x51_FNFAL_M", 100],
	["7.62x51 20Rnd M110", "CUP_20Rnd_762x51_B_M110", 100],
	["7.62x51 20Rnd M110 Yellow Tracer", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110", 100],
	["7.62x51 20Rnd M110 Red Tracer", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110", 100],
	["7.62x51 20Rnd M110 Green Tracer", "CUP_20Rnd_TE1_Green_Tracer_762x51_M110", 100],
	["7.62x51 20Rnd M110 White Tracer)", "CUP_20Rnd_TE1_White_Tracer_762x51_M110", 100],
	["7.62x51 20Rnd Mk17", "CUP_20Rnd_762x51_B_SCAR", 100],
	["7.62x51 20Rnd Mk17 Yellow Tracer (Yellow)", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR", 100],
	["7.62x51 20Rnd Mk17 Red Tracer", "CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR", 100],
	["7.62x51 20Rnd Mk17 Green Tracer", "CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR", 100],
	["7.62x51 20Rnd Mk17 White Tracer", "CUP_20Rnd_TE1_White_Tracer_762x51_SCAR", 100],
	
	["7.62x51 100Rnd M240 Red Tracer Belt", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 250],
	["7.62x51 100Rnd M240 White Tracer Belt", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 250],
	
	["7.62x54 10Rnd SVD Mag", "CUP_10Rnd_762x54_SVD_M", 75],
	["7.62x54 50Rnd UK59", "CUP_50Rnd_UK59_762x54R_Tracer", 125],
	["7.62x54 100Rnd PK", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 250],
	
	

	
	//Misc Round Sizes that don't fit into any category that's reasonably populated
	["12.7x99 5Rnd", "CUP_5Rnd_127x99_as50_M", 50],
	["8.6x70 5Rnd", "CUP_5Rnd_86x70_L115A1", 30],
	["12.7x108 5Rnd", "CUP_5Rnd_127x108_KSVK_M", 50],
	[".303 10Rnd", "CUP_10x_303_M", 1],
	["12.7x99 10Rnd", "CUP_10Rnd_127x99_m107", 100],
	["5.6x15 5Rnd", "CUP_5x_22_LR_17_HMR_M", 5],
	["9x39 10Rnd", "CUP_10Rnd_9x39_SP5_VSS_M", 5],
	["9x39 20Rnd", "CUP_20Rnd_9x39_SP5_VSS_M", 10],
	
	//M203 Flare Rounds
	["Flare 6Rnd (White)", "CUP_6Rnd_FlareWhite_M203", 150],
	["Flare 6Rnd (Green)", "CUP_6Rnd_FlareGreen_M203", 150],
	["Flare 6Rnd (Red)", "CUP_6Rnd_FlareRed_M203", 150],
	["Flare 6Rnd (Yellow)", "CUP_6Rnd_FlareYellow_M203", 150],
	["Smoke 6Rnd (White)", "CUP_6Rnd_Smoke_M203", 125],
	["Smoke 6Rnd (Red)", "CUP_6Rnd_SmokeRed_M203", 125],
	["Smoke 6Rnd (Green)", "CUP_6Rnd_SmokeGreen_M203", 125],
	["Smoke 6Rnd (Yellow)", "CUP_6Rnd_SmokeYellow_M203", 125],
	
	//M203 Explosive & Smoke Rounds
	["HE", "CUP_1Rnd_HE_M203", 150],
	["HEDP", "CUP_1Rnd_HEDP_M203", 150],
	["HE 6Rnd", "CUP_6Rnd_HE_M203", 300],
	["Flare (White)", "CUP_FlareWhite_M203", 50],
	["Flare (Green)", "CUP_FlareGreen_M203", 50],
	["Flare (Red)", "CUP_FlareRed_M203", 50],
	["Flare (Yellow)", "CUP_FlareYellow_M203", 50],
	["Smoke (White)", "CUP_1Rnd_Smoke_M203", 50],
	["Smoke (Red)", "CUP_1Rnd_SmokeRed_M203", 50],
	["Smoke (Green)", "CUP_1Rnd_SmokeGreen_M203", 50],
	["Smoke (Yellow)", "CUP_1Rnd_SmokeYellow_M203", 50],
	
	//Missiles
	["Strela Missile", "CUP_Strela_2_M", 500],
	["Stinger Missile", "CUP_Stinger_M", 500],
	["Igla Missile", "CUP_Igla_M", 500],
	["HEAA Missile", "CUP_SMAW_HEAA_M", 350],
	["HEDP Missile", "CUP_SMAW_HEDP_M", 350],
	["PG7V Missile", "CUP_PG7V_M", 300],
	["PG7VL Missile", "CUP_PG7VL_M", 300],
	["PG7VR Missile", "CUP_PG7VR_M", 300],
	["OG7 Missile", "CUP_OG7_M", 300],
	["RPG18 Missile", "CUP_RPG18_M", 300],
	["M136-AT-4 Missile", "CUP_M136_M", 250],
	["MAAWS HEAT", "CUP_MAAWS_HEAT_M", 350],
	["MAAWS HEDP", "CUP_MAAWS_HEDP_M", 350],
	["AT13 Missile", "CUP_AT13_M", 350],
	["NLAW Missile", "CUP_NLAW_M", 500],
	["Dragon Missile", "CUP_Dragon_EP1_M", 400],
	["Javelin Missile", "CUP_Javelin_M", 500]
];

//Gun Store item List
//Text name, classname, buy cost, item class
//Example : ["StoreName", "ClassName", price, "item"],
//CUP Items have been removed due to store throwing errors. They will be added if I can get it working. - techladdie


accessoriesArray = compileFinal str
//Gun Mounted Items e.g: optics, bipods, barrel attachents etc
[
	["Suppressor 9mm", "muzzle_snds_L", 50, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 75, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 100, "item"],
	["Suppressor 5.56mm (Khaki)", "muzzle_snds_m_khk_F", 100, "item", "noDLC"],
	["Suppressor 5.56mm (Sand)", "muzzle_snds_m_snd_F", 100, "item", "noDLC"],
	["Suppressor 5.8mm", "muzzle_snds_58_blk_F", 100, "item"],
	["Suppressor 5.8mm (Hex)", "muzzle_snds_58_hex_F", 100, "item"],
	["Suppressor 5.8mm (G Hex)", "muzzle_snds_58_ghex_F", 100, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 100, "item"],
	["Suppressor 6.5mm (Khaki)", "muzzle_snds_H_khk_F", 100, "item", "noDLC"],
	["Suppressor 6.5mm (Sand)", "muzzle_snds_H_snd_F", 100, "item", "noDLC"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 125, "item"],
	["Suppressor 6.5mm LMG (Black)", "muzzle_snds_H_MG_blk_F", 125, "item"],
	["Suppressor 6.5mm LMG (Khaki)", "muzzle_snds_H_MG_khk_F", 125, "item"],
	["Suppressor 6.5mm Stealth", "muzzle_snds_65_TI_blk_F", 125, "item"],
	["Suppressor 6.5mm Stealth (Hex)", "muzzle_snds_65_TI_hex_F", 125, "item"],
	["Suppressor 6.5mm Stealth (G Hex)", "muzzle_snds_65_TI_ghex_F", 125, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 125, "item"],
	["Suppressor 7.62mm (Khaki)", "muzzle_snds_B_khk_F", 125, "item", "noDLC"],
	["Suppressor 7.62mm (Sand)", "muzzle_snds_B_snd_F", 125, "item", "noDLC"],
	["Suppressor .338", "muzzle_snds_338_black", 150, "item"],
	["Suppressor .338 (Green)", "muzzle_snds_338_green", 150, "item"],
	["Suppressor .338 (Sand)", "muzzle_snds_338_sand", 175, "item"],
	["Suppressor 9.3mm", "muzzle_snds_93mmg", 175, "item"],
	["Suppressor 9.3mm (Tan)", "muzzle_snds_93mmg_tan", 175, "item"],
	
	["Bipod (NATO)", "bipod_01_F_blk", 100, "item", "noDLC"],
	["Bipod (CSAT)", "bipod_02_F_blk", 100, "item", "noDLC"],
	["Bipod (AAF)", "bipod_03_F_blk", 100, "item", "noDLC"],
	["Bipod (MTP)", "bipod_01_F_mtp", 100, "item", "noDLC"],
	["Bipod (Hex)", "bipod_02_F_hex", 100, "item", "noDLC"],
	["Bipod (Olive)", "bipod_03_F_oli", 100, "item", "noDLC"],
	["Bipod (Sand)", "bipod_01_F_snd", 100, "item", "noDLC"],
	["Bipod (Tan)", "bipod_02_F_tan", 100, "item", "noDLC"],
	["Bipod (Khaki)", "bipod_01_F_khk", 100, "item", "noDLC"],
	
	["Flashlight", "acc_flashlight", 25, "item"],
	["Pistol Flashlight" ,"acc_flashlight_pistol", 25, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	
	["ACO SMG (Red)", "optic_aco_smg", 50, "item"],
	["ACO SMG (Green)", "optic_ACO_grn_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 75, "item"],
	["ACO (Green)", "optic_Aco_grn", 75, "item"],
	
	["Holosight SMG", "optic_Holosight_smg", 50, "item"],
	["Holosight", "optic_Holosight", 75, "item"],
	
	["MRCO", "optic_MRCO", 100, "item"],
	
	["ERCO", "optic_ERCO_blk_F", 100, "item"],
	["ERCO (Khaki)", "optic_ERCO_khk_F", 100, "item"],
	["ERCO (Sand)", "optic_ERCO_snd_F", 100, "item"],
	
	["ARCO", "optic_Arco", 125, "item"],
	["ARCO (Black)", "optic_Arco_blk_F", 125, "item", "noDLC"],
	["ARCO (G Hex)", "optic_Arco_ghex_F", 125, "item", "noDLC"],
	
	["RCO", "optic_Hamr", 150, "item"],
	["RCO (Khaki)", "optic_Hamr_khk_F", 150, "item", "noDLC"],
	
	["MOS", "optic_SOS", 150, "item"],
	["MOS (Khaki)", "optic_SOS_khk_F", 150, "item"],
	
	["DMS", "optic_DMS", 175, "item"],
	["DMS (G Hex)", "optic_DMS_ghex_F", 175, "item"],
	
	["Kahlia (Sightless)", "optic_KHS_old", 200, "item"],
	["Kahlia", "optic_KHS_blk", 225, "item"],
	["Kahlia (Hex)", "optic_KHS_hex", 225, "item"],
	["Kahlia (Tan)", "optic_KHS_tan", 225, "item"],
	
	["AMS", "optic_AMS", 250, "item"],
	["AMS (Khaki)", "optic_AMS_khk", 250, "item"],
	["AMS (Sand)", "optic_AMS_snd", 250, "item"],
	
	["LRPS", "optic_LRPS", 300, "item"],
	["LRPS (G Hex)", "optic_LRPS_ghex_F", 300, "item", "noDLC"],
	["LRPS (Tropic)", "optic_LRPS_tna_F", 300, "item", "noDLC"],
	
	["NVS", "optic_NVS", 500, "item"],
	
	["TWS", "optic_tws", 5000, "item", "HIDDEN"], // To hide from store list, add "HIDDEN" after "item", like "item", "HIDDEN"]
	["TWS MG", "optic_tws_mg", 6000, "item", "HIDDEN"],
	
	["Nightstalker", "optic_Nightstalker", 7500, "item", "HIDDEN"],

	["::CUP Attachments::", "", 0, "item"],
	//CUP Bipods & Suppressors
	["L115A1/AWM Silencer", "CUP_muzzle_snds_AWM", 175, "item"],
	["PBS4 Silencer", "CUP_muzzle_PBS4", 75, "item"],
	["PB6P9 Silencer", "CUP_muzzle_PB6P9", 75, "item"],
	["Bizon PP-19 Silencer", "CUP_muzzle_Bizon", 75, "item"],
	["G36 Silencer (Black)", "CUP_muzzle_snds_G36_black", 100, "item"],
	["G36 Silencer (Desert)", "CUP_muzzle_snds_G36_desert", 100, "item"],
	["L85 Silencer", "CUP_muzzle_snds_L85", 100, "item"],
	["M110 Silencer", "CUP_muzzle_snds_M110", 125, "item"],
	["M14 Silencer", "CUP_muzzle_snds_M14", 125, "item"],
	["M16/M4 Silencer (Camo)", "CUP_muzzle_snds_M16_camo", 100, "item"],
	["M16/M4 Silencer (Black)", "CUP_muzzle_snds_M16", 175, "item"],
	["M9 Silencer", "CUP_muzzle_snds_M9", 75, "item"],
	["MicroUzi Silencer", "CUP_muzzle_snds_MicroUzi", 75, "item"],
	["XM8 Silencer", "CUP_muzzle_snds_XM8", 125, "item"],
	["Mk16 Silencer", "CUP_muzzle_snds_SCAR_L", 100, "item"],
	["Mk17 Silencer", "CUP_muzzle_snds_SCAR_H", 125, "item"],
	["Mk16 Flash Hider", "CUP_muzzle_mfsup_SCAR_L", 125, "item"],
	["Mk17 Flash Hider", "CUP_muzzle_mfsup_SCAR_H", 125, "item"],
	["AN/PEQ-15 Laser", "CUP_acc_ANPEQ_15", 150, "item"],
	["AN/PEQ-2 Laser", "CUP_acc_ANPEQ_2", 150, "item"],
	["AN/PEQ-2 Laser (Camo)", "CUP_acc_ANPEQ_2_camo", 150, "item"],
	["AN/PEQ-2 Laser (Desert)", "CUP_acc_ANPEQ_2_desert", 150, "item"],
	["AN/PEQ-2 Laser (Grey)", "CUP_acc_ANPEQ_2_grey", 150, "item"],
	["Flashlight (Black)", "CUP_acc_Flashlight", 150, "item"],
	["Flashlight (Woodland)", "CUP_acc_Flashlight_wdl", 150, "item"],
	["Flashlight (Desert)", "CUP_acc_Flashlight_desert", 150, "item"],
	["XM8 Underbarrel Light Module", "CUP_acc_XM8_light_module", 150, "item"],
	["CZ M3X Pistol Flashlight", "CUP_acc_CZ_M3X", 100, "item"],
	["Glock 17 Flashlight", "CUP_acc_Glock17_Flashlight", 100, "item"],
	
	
	//CUP Bipods
	["Harris 1A2-L Bipod", "CUP_bipod_Harris_1A2_L", 100, "item", "noDLC"],
	["VLTOR Modpod Bipod", "CUP_bipod_VLTOR_Modpod", 100, "item", "noDLC"],

	["::CUP Optics::", "", 0, "item"],
	//CUP Optics
	["Aimpoint CompM4", "CUP_optic_CompM4", 50, "item"],
	["AN/PVS-4 NVS", "CUP_optic_AN_PVS_4", 500, "item"],
	["AN/PVS-10 NVS", "CUP_optic_AN_PVS_10", 500, "item"],
	["Elcan Reflex", "CUP_optic_Elcan_Reflex", 150, "item"],
	["ELCAN SpecterDR", "CUP_optic_ELCAN_SpecterDR", 200, "item"],
	["EoTech 553 HWS Tan", "CUP_optic_Eotech533", 150, "item"],
	["EoTech 553 HWS Grey", "CUP_optic_Eotech533Grey", 150, "item"],
	["EoTech Holo", "CUP_optic_HoloBlack", 150, "item"],
	["EoTech Holo WDL", "CUP_optic_HoloWdl", 150, "item"],
	["EoTech Holo DES", "CUP_optic_HoloDesert", 150, "item"],
	["Leupold Mk4 10x40 LR/T DES", "CUP_optic_LeupoldMk4_10x40_LRT_Desert", 175, "item"],
	["Leupold Mk4 10x40 LR/T WDL", "CUP_optic_LeupoldMk4_10x40_LRT_Woodland", 175, "item"],
	["Leupold Mk4 3-9x36 MR/T", "CUP_optic_LeupoldM3LR", 175, "item"],
	["Leupold Mk4", "CUP_optic_LeupoldMk4", 175, "item"],
	["Leupold Mk4 CQ/T 1-3x14mm", "CUP_optic_LeupoldMk4_CQ_T", 150, "item"],
	["Leupold Mk4 MR/T Tan", "CUP_optic_LeupoldMk4_MRT_tan", 100, "item"],
	["Leupold VX-3 4.5-14x50mm", "CUP_optic_Leupold_VX3", 100, "item"],
	["M68 CCO", "CUP_optic_CompM2_Black", 75, "item"],
	["M68 CCO DES", "CUP_optic_CompM2_Desert", 75, "item"],
	["M68 CCO WDL", "CUP_optic_CompM2_Woodland", 75, "item"],
	["Meopta ZD-Dot", "CUP_optic_ZDDot", 75, "item"],
	["Meopta Rapid Acquisition Dot", "CUP_optic_MRad", 75, "item"],
	["PSO-1", "CUP_optic_PSO_1", 200, "item"],
	["PSO-3", "CUP_optic_PSO_3", 250, "item"],
	["Schmit & Bender 1.1-4x20 PM ShortDot", "CUP_optic_SB_11_4x20_PM", 175, "item"],
	["Schmidt & Bender 3-12x50 PM II", "CUP_optic_SB_3_12x50_PMII", 175, "item"],
	["SUSAT L9A1", "CUP_optic_SUSAT", 125, "item"],
	["Trijicon ACOG", "CUP_optic_RCO", 125, "item"],
	["Trijicon ACOG DES", "CUP_optic_RCO_desert", 125, "item"],
	["Trijicon ACOG TA31F", "CUP_optic_ACOG", 125, "item"],
	["Trijicon Rx01 RDS", "CUP_optic_TrijiconRx01_black", 100, "item"],
	["Trijicon Rx01 RDS WDL/DES", "CUP_optic_TrijiconRx01_desert", 100, "item"],
	["Kobra Reflex Sight", "CUP_optic_Kobra", 50, "item"],
	["EoTech Holo (Black)", "CUP_optic_HoloBlack", 75, "item"],
	["EoTech Holo (Woodland)", "CUP_optic_HoloWdl", 75, "item"],
	["EoTech Holo (Desert)", "CUP_optic_HoloDesert", 75, "item"],
	["EoTech 533 HWS (Tan)", "CUP_optic_Eotech533", 50, "item"],
	["EoTech 533 HWS (Grey)", "CUP_optic_Eotech533Grey", 50, "item"],
	["MAAWS Aiming Scope", "CUP_optic_MAAWS_Scope", 100, "item"],
	["SMAW Optical Scope", "CUP_optic_SMAW_Scope", 100, "item"],
	
	//Hidden but can still sell
	["AN/PAS 13C1 Light Thermal Weapon Sight", "CUP_optic_AN_PAS_13c1", 5000, "item", "HIDDEN"],
	["AN/PAS 13C2 Heavy Thermal Weapon Sight", "CUP_optic_AN_PAS_13c2", 5000, "item", "HIDDEN"],
	["GOSHAWK TWS", "CUP_optic_GOSHAWK", 5000, "item", "HIDDEN"],
	["AN/PVS-10 Night Vision Scope", "CUP_optic_AN_PVS_10", 5000, "item", "HIDDEN"],
	["AN/PVS-4 Night Vision Scope", "CUP_optic_AN_PVS_4", 5000, "item", "HIDDEN"],
	["1PN34 / NSPU Scope", "CUP_optic_NSPU", 5000, "item", "HIDDEN"]
	
	
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str 
//Headgear
[
	["Modular Helmet (Digi)", "H_HelmetIA", 50, "hat"],
	// ["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	// ["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["Combat Helmet", "H_HelmetB", 50, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_black", 50, "hat"],
	["Combat Helmet (Camonet)", "H_HelmetB_camo", 50, "hat"],
	
	["Stealth Combat Helmet", "H_HelmetB_TI_tna_F", 75, "hat"],
	
	["Enhanced Combat Helmet", "H_HelmetSpecB", 75, "hat"],
	["Enhanced Combat Helmet (Black)", "H_HelmetSpecB_blk", 75, "hat"],
	["Enhanced Combat Helmet (Snakeskin)", "H_HelmetSpecB_snakeskin", 75, "hat"],
	["Enhanced Combat Helmet (Tropic)", "H_HelmetB_Enh_tna_F", 75, "hat", "noDLC"],
	
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 60, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 60, "hat"],
	
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 75, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 75, "hat"],
	
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 100, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 100, "hat"],
	["Defender Helmet (G Hex)", "H_HelmetLeaderO_ghex_F", 100, "hat", "noDLC"],
	
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 60, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 60, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 60, "hat"],
	
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 60, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 60, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 60, "hat"],
	
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	
	["Bandana (Black)", "H_Bandanna_gry", 10, "hat"],
	["Bandana (Blue)", "H_Bandanna_blu", 10, "hat"],
	["Bandana (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandana (Headset)", "H_Bandanna_khk_hs", 10, "hat"],
	["Bandana (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandana (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandana (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandana (Sand)", "H_Bandanna_sand", 10, "hat"],
	["Bandana (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	["Bandana (Surfer, Black)", "H_Bandanna_surfer_blk", 10, "hat"],
	["Bandana (Surfer, Green)", "H_Bandanna_surfer_grn", 10, "hat"],
	["Bandana (Woodland)", "H_Bandanna_camo", 10, "hat"],
	// ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Navy)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Olive)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	// ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	// ["Beret (Red)", "H_Beret_red", 10, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (AAF)", "H_Booniehat_dgtl", 10, "hat"],
	["Booniehat (Headset)", "H_Booniehat_khk_hs", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Olive)", "H_Booniehat_oli", 10, "hat"],
	["Booniehat (Sand)", "H_Booniehat_tan", 10, "hat"],
	
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Olive, Headset)", "H_Cap_oli_hs", 10, "hat"],
	["Cap (Police)", "H_Cap_police", 10, "hat"],
	["Cap (Press)", "H_Cap_press", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Surfer)", "H_Cap_surfer", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (UK)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (US Black)", "H_Cap_usblack", 10, "hat"],
	["Cap (US MTP)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (AAF)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (OPFOR)", "H_Cap_brn_SPECOPS", 10, "hat"],
	
	["Shemag (Olive)", "H_Shemag_olive", 25, "hat"],
	["Shemag (Olive, Headset)", "H_Shemag_olive_hs", 25, "hat"],
	["Shemag (Tan)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	// ["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"],
	
	["::CUP Headgear::", "", 0, "item"],
	//CUP Headgear_H_Cap_Black_IDAP_F
	//BLUFOR
	["ACVC DES", "CUP_H_USMC_ACVC_DES", 100, "hat"],
	["ACVC WDL", "CUP_H_USMC_ACVC_WDL", 100, "hat"],
	["BAF Beret", "CUP_H_BAF_Officer_Beret", 100, "hat"],
	["CDF PASGT DES", "CUP_H_CDF_H_PASGT_DST", 100, "hat"],
	["CDF PASGT WDL", "CUP_H_CDF_H_PASGT_FST", 100, "hat"],
	["CDF PASGT MNT", "CUP_H_CDF_H_PASGT_MNT", 100, "hat"],
	["CDF PASGT UN", "CUP_H_CDF_H_PASGT_UN", 100, "hat"],
	["MAGA", "CUP_H_C_MAGA_01", 25, "hat"],
	["Cap (Grey)", "CUP_H_PMC_Cap_Grey", 25, "hat"],
	["Cap (Grey, Backwards)", "CUP_H_PMC_Cap_Back_Grey", 25, "hat"],
	["Cap (Grey, w Headset)", "CUP_H_PMC_Cap_EP_Grey", 25, "hat"],
	["US ECH (Black)", "CUP_H_USArmy_Helmet_ECH1_Black", 100, "hat"],
	["US ECH (Green)", "CUP_H_USArmy_Helmet_ECH1_Green", 100, "hat"],
	["US ECH (Sand)", "CUP_H_USArmy_Helmet_ECH1_Sand", 100, "hat"]
	
];

uniformArray = compileFinal str
//Uniforms - Things like suits and underwear come under this category
[
	["Wetsuit", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit", "U_I_Wetsuit", 200, "uni"],
	
	["Light Ghillie", "U_B_GhillieSuit", 200, "uni"],
	["Light Ghillie", "U_O_GhillieSuit", 200, "uni"],
	["Light Ghillie", "U_I_GhillieSuit", 200, "uni"],
	["Light Ghillie (Jungle)", "U_B_T_Sniper_F", 200, "uni"],
	["Light Ghillie (Jungle)", "U_O_T_Sniper_F", 200, "uni"],	
	
	["Full Ghillie (Arid)", "U_B_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid)", "U_O_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Arid)", "U_I_FullGhillie_ard", 2000, "uni"],
	["Full Ghillie (Lush)", "U_B_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush)", "U_O_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Lush)", "U_I_FullGhillie_lsh", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_B_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_O_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Semi-Arid)", "U_I_FullGhillie_sard", 2000, "uni"],
	["Full Ghillie (Jungle)", "U_B_T_FullGhillie_tna_F", 2000, "uni"],
	["Full Ghillie (Jungle)", "U_O_T_FullGhillie_tna_F", 2000, "uni"],	
	
	["CTRG Stealth Uniform", "U_B_CTRG_Soldier_F", 1000, "uni"],
	
	["Special Purpose Suit (Hex)", "U_O_V_Soldier_Viper_hex_F", 1000, "uni"],
	["Special Purpose Suit (G Hex)", "U_O_V_Soldier_Viper_F", 1000, "uni"],
	
	["Survival Fatigues (NATO)", "U_B_survival_uniform", 200, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 25, "uni"],
	["Default Uniform (CSAT)", "U_O_OfficerUniform_ocamo", 25, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 25, "uni"],
	
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 25, "uni"],
	
	["Combat Fatigues (Tropic)", "U_B_T_Soldier_F", 25, "uni", "noDLC"],
	["Combat Fatigues (Tee)", "U_B_CombatUniform_mcam_tshirt", 25, "uni"],
	["Combat Fatigues (Gangsta)", "U_I_G_resistanceLeader_F", 25, "uni"],
	["Combat Fatigues (Rolled-up)", "U_I_CombatUniform_shortsleeve", 25, "uni"],
	
	["CTRG Combat Uniform", "U_B_CTRG_1", 25, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_2", 25, "uni"],
	["CTRG Combat Uniform (Rolled-up)", "U_B_CTRG_3", 25, "uni"],
	
	["Fatigues (Hex)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Fatigues (G Hex)", "U_O_T_Soldier_F", 50, "uni", "noDLC"],
	
	["Officer Fatigues", "U_I_OfficerUniform", 25, "uni"],
	
	["Pilot Coveralls", "U_B_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_O_PilotCoveralls", 25, "uni"],
	["Pilot Coveralls", "U_I_pilotCoveralls", 25, "uni"],
	
	["Heli Pilot Coveralls", "U_B_HeliPilotCoveralls", 25, "uni"],
	["Heli Pilot Coveralls", "U_I_HeliPilotCoveralls", 25, "uni"],
	
	["Guerilla Garment", "U_BG_Guerilla1_1", 25, "uni"],  // BLUFOR
	["Guerilla Outfit (Plain, Dark)", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_BG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_BG_leader", 25, "uni"],
	["Guerilla Garment", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Outfit (Plain, Dark)", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_OG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_OG_leader", 25, "uni"],
	["Guerilla Garment", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Outfit (Plain, Dark)", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Outfit (Pattern)", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Apparel", "U_IG_Guerrilla_6_1", 25, "uni"],
	["Guerilla Uniform", "U_IG_leader", 25, "uni"],
	/*["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],*/
	["Polo (Competitor)", "U_Competitor", 25, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],
	/*["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],*/
	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 5000, "uni"],
	
	["::CUP Uniforms::", "", 0, "item"],
	//CUP Uniforms
	//BLUFOR
	//BAF
	
	["BAF MTP (Rolled Up)", "CUP_U_B_BAF_MTP_S1_RolledUp", 25, "uni"],
	["BAF MTP (Unrolled)", "CUP_U_B_BAF_MTP_S2_UnRolled", 25, "uni"],
	["BAF MTP (T-Shirt)", "CUP_U_B_BAF_MTP_Tshirt", 25, "uni"],
	["BAF MTP (Ghillie)", "CUP_U_B_BAF_MTP_Ghillie", 250, "uni"],
	["BAF DPM (Rolled Up)", "CUP_U_B_BAF_DPM_S1_RolledUp", 25, "uni"],
	["BAF DPM (Unrolled)", "CUP_U_B_BAF_DPM_S2_UnRolled", 25, "uni"],
	["BAF DPM (T-Shirt)", "CUP_U_B_BAF_DPM_Tshirt", 25, "uni"],
	["BAF DPM (Ghillie)", "CUP_U_B_BAF_DPM_Ghillie", 250, "uni"],
	["BAF DDPM (Rolled Up)", "CUP_U_B_BAF_DDPM_S1_RolledUp", 25, "uni"],
	["BAF DDPM (Unrolled)", "CUP_U_B_BAF_DDPM_S2_UnRolled", 25, "uni"],
	["BAF DDPM (T-Shirt)", "CUP_U_B_BAF_DDPM_Tshirt", 25, "uni"],
	["BAF DDPM (Ghillie)", "CUP_U_B_BAF_DDPM_Ghillie", 250, "uni"],
	
	//USA
	["US Army (Modern/ACU)", "CUP_U_B_USArmy_Base", 25, "uni"],
	["US Army (UBACS/ACU)", "CUP_U_B_USArmy_ubacs", 25, "uni"],
	["US Army (ACU/Kneepads)", "CUP_U_B_USArmy_TwoKnee", 25, "uni"],
	["US Army (Soft Shell)", "CUP_U_B_USArmy_soft", 250, "uni"],
	["US Army Pilot Overalls", "CUP_U_B_USArmy_PilotOverall", 25, "uni"],
	["US Army Ghillie (Desert)", "CUP_U_B_USArmy_Ghillie", 250, "uni"],
	
	//USMC
	["USMC MARPAT (Rolled Up)", "CUP_U_B_USMC_MARPAT_WDL_RolledUp", 25, "uni"],
	["USMC MARPAT (Sleeved)", "CUP_U_B_USMC_MARPAT_WDL_Sleeves", 250, "uni"],
	["USMC MARPAT (Kneepads)", "CUP_U_B_USMC_MARPAT_WDL_TwoKneepads", 25, "uni"],
	["USMC Officer)", "CUP_U_B_USMC_Officer", 25, "uni"],
	["USMC Pilot Overalls", "CUP_U_B_USMC_PilotOverall", 25, "uni"],
	["USMC Ghillie WDL", "CUP_U_B_USMC_Ghillie_WDL", 250, "uni"],
	
	//CDF
	["CDF Tri-Colour DES", "CUP_U_B_CDF_DST_1", 25, "uni"],
	["CDF Tri-Colour FST", "CUP_U_B_CDF_FST_1", 25, "uni"],
	["CDF Tri-Colour MNT", "CUP_U_B_CDF_MNT_1", 25, "uni"],
	["CDF Tri-Colour DES (Sleeves Up)", "CUP_U_B_CDF_DST_2", 25, "uni"],
	["CDF Tri-Colour FST (Sleeves Up)", "CUP_U_B_CDF_FST_2", 25, "uni"],
	["CDF Tri-Colour MNT (Sleeves Up)", "CUP_U_B_CDF_MNT_2", 25, "uni"],
	
	
	//OPFOR
	//Russia
	
	["RUS EMR", "CUP_U_O_RUS_EMR_1", 25, "uni"],
	["RUS EMR VDV", "CUP_U_O_RUS_EMR_1_VDV", 25, "uni"],
	["RUS Flora", "CUP_U_O_RUS_Flora_1", 25, "uni"],
	["RUS Flora VDV", "CUP_U_O_RUS_Flora_1_VDV", 25, "uni"],
	["RUS Gorka (Green)", "CUP_U_O_RUS_Gorka_Green", 25, "uni"],
	["RUS Gorka (Partizan)", "CUP_U_O_RUS_Gorka_Partizan", 25, "uni"],
	["RUS Gorka (Partizan Autumn)", "CUP_U_O_RUS_Gorka_Partizan_A", 25, "uni"],
	
	//SLA
	["SLA Officer", "CUP_U_O_SLA_Officer_Suit", 25, "uni"],
	
	
	//INDEPENDENT
	//NAPA
	["NAPA Woodland/Olive", "CUP_U_I_GUE_Woodland1", 25, "uni"],
	["NAPA Flecktarn/Olive", "CUP_U_I_GUE_Flecktarn", 25, "uni"],
	["NAPA Flecktarn/Jeans", "CUP_U_I_GUE_Flecktarn2", 25, "uni"],
	["NAPA Flecktarn/Jeans (Hooded)", "CUP_U_I_GUE_Flecktarn3", 25, "uni"],
	["NAPA Half-Ghillie", "CUP_U_I_Ghillie_Top", 75, "uni"]
	
	
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Lite (CTRG)", "V_PlateCarrierL_CTRG", -1, "vest"],
	["Carrier Lite (Tropic)", "V_PlateCarrier1_tna_F", -1, "vest", "noDLC"],
	["Carrier Rig (Green)", "V_PlateCarrier2_rgr", -1, "vest"],
	["Carrier Rig (Black)", "V_PlateCarrier2_blk", -1, "vest"],
	["Carrier Rig (CTRG)", "V_PlateCarrierH_CTRG", -1, "vest"],
	["Carrier Rig (Tropic)", "V_PlateCarrier2_tna_F", -1, "vest", "noDLC"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"],
	["Carrier GL Rig (Tropic)", "V_PlateCarrierGL_tna_F", -1, "vest", "noDLC"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"],
	["Carrier Special Rig (Tropic)", "V_PlateCarrierSpec_tna_F", -1, "vest", "noDLC"],
	
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"],
	
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", -1, "vest"],
	
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"],
	
	["Press Vest", "V_Press_F", -1, "vest"],
	
	["Deck Crew Vest (Blue)", "V_DeckCrew_blue_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Green)", "V_DeckCrew_green_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Yellow)", "V_DeckCrew_yellow_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Red)", "V_DeckCrew_red_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Brown)", "V_DeckCrew_brown_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (Violet)", "V_DeckCrew_violet_F", -1, "vest", "noDLC"],
	["Deck Crew Vest (White)", "V_DeckCrew_white_F", -1, "vest", "noDLC"],
	
	["::CUP Vests::", "", 0, "item"],
	//CUP Vests
	["6B3 Vest (Green)", "CUP_V_CDF_6B3_1_Green", 200, "vest"],
	["6B3 Vest (Flora)", "CUP_V_RUS_6B3_1", 200, "vest"],
	["6B3 Vest (Tri-Colour DST)", "CUP_V_CDF_6B3_1_DST", 200, "vest"],
	["6B3 Vest (Tri-Colour FST)", "CUP_V_CDF_6B3_1_FST", 200, "vest"],
	["6B3 Vest (Tri-Colour MNT)", "CUP_V_CDF_6B3_1_MNT", 200, "vest"],
	["Osprey Mk2 DPM", "CUP_V_BAF_Osprey_Mk2_DPM_Soldier2", 250, "vest"],
	["Osprey Mk2 DDPM", "CUP_V_BAF_Osprey_Mk2_DDPM_Soldier2", 250, "vest"],
	["Osprey Mk4 MTP Squad Leader", "CUP_V_BAF_Osrpey_Mk4_MTP_SquadLeader", 275, "vest"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 100, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 100, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 100, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 100, "backpack"],
	["Assault Pack (Tropic)", "B_AssaultPack_tna_F", 100, "backpack", "noDLC"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],
	["Field Pack (G Hex)", "B_FieldPack_ghex_F", 200, "backpack", "noDLC"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Viper Light Harness (Black)", "B_ViperLightHarness_blk_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Hex)", "B_ViperLightHarness_hex_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (G Hex)", "B_ViperLightHarness_ghex_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Khaki)", "B_ViperLightHarness_khk_F", 350, "backpack", "noDLC"],
	["Viper Light Harness (Olive)", "B_ViperLightHarness_oli_F", 350, "backpack", "noDLC"],

	["Viper Harness (Black)", "B_ViperHarness_blk_F", 425, "backpack", "noDLC"],
	["Viper Harness (Hex)", "B_ViperHarness_hex_F", 425, "backpack", "noDLC"],
	["Viper Harness (G Hex)", "B_ViperHarness_ghex_F", 425, "backpack", "noDLC"],
	["Viper Harness (Khaki)", "B_ViperHarness_khk_F", 425, "backpack", "noDLC"],
	["Viper Harness (Olive)", "B_ViperHarness_oli_F", 425, "backpack", "noDLC"],

	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"],
	["Carryall (G Hex)", "B_Carryall_ghex_F", 500, "backpack", "noDLC"],

	["Bergen (Digital)", "B_Bergen_dgtl_F", 1000, "backpack", "noDLC"],
	["Bergen (Hex)", "B_Bergen_hex_F", 1000, "backpack", "noDLC"],
	["Bergen (MTP)", "B_Bergen_mcamo_F", 1000, "backpack", "noDLC"],
	["Bergen (Tropic)", "B_Bergen_tna_F", 1000, "backpack", "noDLC"],
	
	["::CUP Backpacks::", "", 0, "item"],
	//CUP Backpacks
	["Civilian Assault Pack", "CUP_B_CivPack_WDL", 200, "backpack"],
	["GER Flecktarn Backpack", "CUP_B_GER_Pack_Flecktarn", 500, "backpack"],
	["GER Tropentarn Backpack", "CUP_B_GER_Pack_Tropentarn", 500, "backpack"],
	["Hiking Pack", "CUP_B_HikingPack_Civ", 500, "backpack"],
	["Alice Pack", "CUP_B_AlicePack_Khaki", 500, "backpack"],
	["British Assault Pack", "CUP_B_Bergen_BAF", 500, "backpack"],
	["CZ Para-Pack", "CUP_B_ACRPara_m95", 500, "backpack"],
	["Medic Bag DES", "CUP_B_GER_Medic_Desert", 500, "backpack"],
	["Medic Bag FLK", "CUP_B_GER_Medic_FLecktarn", 500, "backpack"],
	["Medic Bag TRP", "CUP_B_GER_Medic_Tropentarn", 500, "backpack"],
	["US Assault Pack (ACU)", "CUP_B_AssaultPack_ACU", 500, "backpack"],
	["US Assault Pack (Black)", "CUP_B_AssaultPack_Black", 500, "backpack"],
	["US Assault Pack (Coyote)", "CUP_B_AssaultPack_Coyote", 500, "backpack"],
	["US Tactical Backpack (Black)", "CUP_B_USPack_Black", 500, "backpack"],
	["US Tactical Backpack (Coyote)", "CUP_B_USPack_Coyote", 500, "backpack"]
];

genItemArray = compileFinal str
[
	["UAV Terminal (NATO)", "B_UavTerminal", 150, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 150, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 150, "gps"],
	
	["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 2000, "backpack"],
	["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 2000, "backpack"],
	["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 2000, "backpack"],
	["Hexacopter UAV (NATO)", "B_UAV_06_backpack_F", 3000, "backpack"],
	["Hexacopter UAV (CSAT)", "O_UAV_06_backpack_F", 3000, "backpack"],
	["Hexacopter UAV (AAF)", "I_UAV_06_backpack_F", 3000, "backpack"],
	["Hexacopter Medical UAV (NATO)", "B_UAV_06_medical_backpack_F", 3000, "backpack"],
	["Hexacopter Medical UAV (CSAT)", "O_UAV_06_medical_backpack_F", 3000, "backpack"],
	["Hexacopter Medical UAV (AAF)", "I_UAV_06_medical_backpack_F", 3000, "backpack"],
	["Hexacopter Demining UAV", "C_IDAP_UAV_06_antimine_backpack_F", 10000, "backpack"],
	
	["Remote Designator (Sand)", "B_Static_Designator_01_weapon_F", 750, "backpack"],
	["Remote Designator (Hex)", "O_Static_Designator_02_weapon_F", 750, "backpack"],
	["APERS Mine Dispenser", "APERSMineDispenser_F", 50000, "backpack"],
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["NV Goggles (Brown)", "NVGoggles", 100, "nvg"],
	["NV Goggles (Black)", "NVGoggles_OPFOR", 100, "nvg"],
	["NV Goggles (Green)", "NVGoggles_INDEP", 100, "nvg"],
	["NV Goggles (Tropic)", "NVGoggles_tna_F", 100, "nvg"],
	["Compact NVG (Hex)", "O_NVGoggles_hex_F", 150, "nvg"],
	["Compact NVG (G Hex)", "O_NVGoggles_ghex_F", 150, "nvg"],
	["Compact NVG (Urban)", "O_NVGoggles_urb_F", 150, "nvg"],
	["Binoculars", "Binocular", 150, "binoc"],
	["Rangefinder", "Rangefinder", 500, "binoc"],
	["Laser Designator (Sand)", "Laserdesignator", 2500, "binoc", "noDLC"], // Increase price to 2500 if A3W_disableBuiltInThermal = 0
	["Laser Designator (Hex)", "Laserdesignator_02", 2500, "binoc", "noDLC"],
	["Laser Designator (Sand)", "Laserdesignator", 2500, "binoc", "noDLC"],
	["Laser Designator (Olive)", "Laserdesignator_03", 2500, "binoc", "noDLC"],
	["Laser Designator (Khaki)", "Laserdesignator_01_khk_F", 2500, "binoc", "noDLC"],
	["Laser Designator (Hex)", "Laserdesignator_02", 3000, "binoc", "noDLC"],
	["Laser Designator (G Hex)", "Laserdesignator_02_ghex_F", 3000, "binoc", "noDLC"],
	["Laser Designator Batteries (For CUP LD's)", "Laserbatteries", 50, "item"],
	["IR Grenade", "B_IR_Grenade", 50, "mag", "WEST"],
	["IR Grenade", "O_IR_Grenade", 50, "mag", "EAST"],
	["IR Grenade", "I_IR_Grenade", 50, "mag", "GUER"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],

	["Stealth Balaclava (Black)", "G_Balaclava_TI_blk_F", 200, "gogg"],
	["Stealth Balaclava (Black, Goggles)", "G_Balaclava_TI_G_blk_F", 250, "gogg"],
	["Stealth Balaclava (Green)", "G_Balaclava_TI_tna_F", 200, "gogg"],
	["Stealth Balaclava (Green, Goggles)", "G_Balaclava_TI_G_tna_F", 250, "gogg"],
	["Combat Goggles", "G_Combat", 25, "gogg"],
	["Combat Goggles (Green)", "G_Combat_Goggles_tna_F", 25, "gogg", "noDLC"],
	["VR Goggles", "G_Goggles_VR", 25, "gogg"],
	["Balaclava (Black)", "G_Balaclava_blk", 25, "gogg"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 25, "gogg"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 25, "gogg"],
	["Balaclava (Olive)", "G_Balaclava_oli", 25, "gogg"],
	["Bandana (Aviator)", "G_Bandanna_aviator", 25, "gogg"],
	["Bandana (Beast)", "G_Bandanna_beast", 25, "gogg"],
	["Bandana (Black)", "G_Bandanna_blk", 25, "gogg"],
	["Bandana (Khaki)", "G_Bandanna_khk", 25, "gogg"],
	["Bandana (Olive)", "G_Bandanna_oli", 25, "gogg"],
	["Bandana (Shades)", "G_Bandanna_shades", 25, "gogg"],
	["Bandana (Sport)", "G_Bandanna_sport", 25, "gogg"],
	["Bandana (Tan)", "G_Bandanna_tan", 25, "gogg"],

	["Aviator Glasses", "G_Aviator", 10, "gogg"],
	["Ladies Shades", "G_Lady_Blue", 10, "gogg"],
	["Ladies Shades (Fire)", "G_Lady_Red", 10, "gogg"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 10, "gogg"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 10, "gogg"],
	["Low Profile Goggles", "G_Lowprofile", 10, "gogg"],
	["Shades (Black)", "G_Shades_Black", 10, "gogg"],
	["Shades (Blue)", "G_Shades_Blue", 10, "gogg"],
	["Shades (Green)", "G_Shades_Green", 10, "gogg"],
	["Shades (Red)", "G_Shades_Red", 10, "gogg"],
	["Spectacle Glasses", "G_Spectacles", 10, "gogg"],
	["Sport Shades (Fire)", "G_Sport_Red", 10, "gogg"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 10, "gogg"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 10, "gogg"],
	["Sport Shades (Style)", "G_Sport_Checkered", 10, "gogg"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 10, "gogg"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 10, "gogg"],
	["Square Shades", "G_Squares_Tinted", 10, "gogg"],
	["Square Spectacles", "G_Squares", 10, "gogg"],
	["Tactical Glasses", "G_Tactical_Clear", 10, "gogg"],
	["Tactical Shades", "G_Tactical_Black", 10, "gogg"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 10, "gogg"],
	
	["::CUP NVG/Binoculars::", "", 0, "item"],
	//CUP NVG/Binoculars
	["AN/PVS-14", "CUP_NVG_PVS14", 100, "nvg"],
	["AN/PVS-7", "CUP_NVG_PVS7", 100, "nvg"],
	["SOFLAM", "CUP_SOFLAM", 2500, "binoc"],
	["Long Range Thermal Video (LRTV)", "CUP_LRTV", 2500, "binoc"],
	["Vector 21 Nite", "CUP_Vector21Nite", 1000, "binoc"]
	
	
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Pier Ladder", "Land_PierLadder_F", 250, "object"],
	["Ammo Cache", "Box_FIA_Support_F", 250, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 10000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"],
	
	["::CUP Objects::", "", 0, "item"],
	//CUP Objects
	//Flags
	["Flag (AAF)", "Flag_AAF_F", 250, "object"],
	["Flag (BAF)", "FlagCarrierBAF", 250, "object"],
	["Flag (BLUFOR)", "FlagCarrierBLUFOR_EP1", 250, "object"],
	["Flag (CDF)", "FlagCarrierCDF_EP1", 250, "object"],
	["Flag (CSAT)", "Flag_CSAT_F", 250, "object"],
	["Flag (Czech Republic)", "FlagCarrierCzechRepublic_EP1", 250, "object"],
	["Flag (FIA)", "Flag_FIA_F", 250, "object"],
	["Flag (Germany)", "FlagCarrierGermany_EP1", 250, "object"],
	["Flag (IDAP)", "Flag_IDAP_F", 250, "object"],
	["Flag (INDFOR)", "FlagCarrierINDFOR_EP1", 250, "object"],
	["Flag (NAPA)", "FlagCarrierGUE", 250, "object"],
	["Flag (NATO)", "Flag_NATO_F", 250, "object"],
	["Flag (OPFOR)", "FlagCarrierOPFOR_EP1", 250, "object"],
	["Flag (POW/MIA)", "FlagCarrierPOWMIA_EP1", 250, "object"],
	["Flag (RACS)", "FlagCarrierSouth", 250, "object"],
	["Flag (Red Cross Crystal)", "FlagCarrierRedCrystal_EP1", 250, "object"],
	["Flag (Red Cross)", "FlagCarrierRedCross_EP1", 250, "object"],
	["Flag (Russia)", "FlagCarrierRU", 250, "object"],
	["Flag (Takistan)", "FlagCarrierTakistan_EP1", 250, "object"],
	["Flag (Task Force Knight)", "KnightFlagCarrierTFKnight_EP1", 250, "object"],
	["Flag (USA)", "FlagCarrierWest", 250, "object"]
	];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	// SKIPSAVE = will not be autosaved until first manual force save, good for cheap vehicles that usually get abandoned
	//["InStoreName", "ClassName", Price, "vehicle"],

	["Kart", "C_Kart_01_F", 400, "vehicle", "SKIPSAVE"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 500, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Quadbike (NATO)", "B_Quadbike_01_F", 500, "vehicle", "SKIPSAVE"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 500, "vehicle", "SKIPSAVE"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 500, "vehicle", "SKIPSAVE"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 500, "vehicle", "SKIPSAVE"],

	["Hatchback", "C_Hatchback_01_F", 800, "vehicle", "SKIPSAVE"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1000, "vehicle", "SKIPSAVE"],
	["SUV", "C_SUV_01_F", 1100, "vehicle", "SKIPSAVE"],

	["MB 4WD", "C_Offroad_02_unarmed_F", 1000, "vehicle", "SKIPSAVE"],
	["MB 4WD (Guerilla)", "I_C_Offroad_02_unarmed_F", 900, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob

	["Offroad", "C_Offroad_01_F", 1100, "vehicle", "SKIPSAVE"],
	["Offroad Camo", "I_G_Offroad_01_F", 1250, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Offroad Police", "B_GEN_Offroad_01_gen_F", 1250, "vehicle", "SKIPSAVE", "noDLC"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle", "SKIPSAVE"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle", "SKIPSAVE"],

	["Truck", "C_Van_01_transport_F", 700, "vehicle", "SKIPSAVE"],
	["Truck Camo", "I_G_Van_01_transport_F", 800, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	["Truck Box", "C_Van_01_box_F", 900, "vehicle", "SKIPSAVE"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle", "SKIPSAVE"],
	["Fuel Truck Camo", "I_G_Van_01_fuel_F", 2100, "vehicle", "SKIPSAVE", "HIDDEN"], // hidden, just a paintjob
	
	//Laws Of War DLC Vans
	
	["Van Cargo", "C_Van_02_vehicle_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Transport", "C_Van_02_transport_F", 1000, "vehicle", "SKIPSAVE"],
	["Van Police Cargo", "B_GEN_Van_02_vehicle_F", 1250, "vehicle", "SKIPSAVE"],
	["Van Police Transport", "B_GEN_Van_02_transport_F", 1250, "vehicle", "SKIPSAVE"],
	["Van Ambulance", "C_Van_02_medevac_F", 1500, "vehicle", "SKIPSAVE"],
	["Van Repair", "C_Van_02_service_F", 2000, "vehicle", "SKIPSAVE"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Resupply", "B_Truck_01_ammo_F", 5000, "vehicle"],
	//["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7000, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 8000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 9000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 10000, "vehicle"],
	
	//CUP MTVR
	["MTVR Transport DES", "CUP_B_MTVR_USA", 6000, "vehicle"],
	["MTVR Transport WDL", "CUP_B_MTVR_USMC", 6000, "vehicle"],
	//["MTVR Ammo DES", "CUP_B_MTVR_Ammo_USA", 30000, "vehicle"],
	//["MTVR Ammo WDL", "CUP_B_MTVR_Ammo_USMC", 30000, "vehicle"],
	["MTVR Fuel DES", "CUP_B_MTVR_Refuel_USA", 8000, "vehicle"],
	["MTVR Fuel WDL", "CUP_B_MTVR_Refuel_USMC", 8000, "vehicle"],
	
	//CUP Tatra T810
	["Tatra T810 Fuel DES", "CUP_B_T810_Refuel_CZ_DES", 10000, "vehicle"],
	["Tatra T810 Fuel WDL", "CUP_B_T810_Refuel_CZ_WDL", 10000, "vehicle"],
	["Tatra T810 Transport DES", "CUP_B_T810_Unarmed_CZ_DES", 6000, "vehicle"],
	["Tatra T810 Transport WDL", "CUP_B_T810_Unarmed_CZ_WDL", 6000, "vehicle"],
	//Ends
	["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Resupply", "O_Truck_03_ammo_F", 5000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7000, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 8000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 9000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 10000, "vehicle"],

	["Zamak Resupply", "I_Truck_02_ammo_F", 4000, "vehicle"],
	["Zamak Transport", "I_Truck_02_transport_F", 4500, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 6000, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 7000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 8000, "vehicle"],

	//CUP Ural
	["Ural", "CUP_B_Ural_CDF", 6000, "vehicle"],
	//["Ural Ammo", "CUP_B_Ural_Reammo_CDF", 30000, "vehicle"],
	["Ural Fuel", "CUP_B_Ural_Refuel_CDF", 8000, "vehicle"],
	
	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"]
];

armoredArray = compileFinal str
[
	["MB 4WD AT", "I_C_Offroad_02_AT_F", 20000, "vehicle"],
	["MB 4WD AT (ION)", "CUP_I_4WD_AT_ION", 20000, "vehicle"],
	["Prowler (Doorless)", "B_CTRG_LSV_01_light_F", 1250, "vehicle", "SKIPSAVE"],
	["Prowler", "B_T_LSV_01_unarmed_F", 1500, "vehicle", "SKIPSAVE"],
	["Prowler HMG", "B_T_LSV_01_armed_F", 6000, "vehicle", "SKIPSAVE"],
	["Prowler AT", "B_T_LSV_01_AT_F", 20000, "vehicle"],
	["Qilin", "O_T_LSV_02_unarmed_F", 2000, "vehicle", "SKIPSAVE"],
	["Qilin Minigun", "O_T_LSV_02_armed_F", 6000, "vehicle", "SKIPSAVE"],
	["Qilin AT", "O_T_LSV_02_AT_F", 20000, "vehicle"],
	["Offroad AT", "I_G_Offroad_01_AT_F", 20000, "vehicle"],

	["Hunter", "B_MRAP_01_F", 4000, "vehicle", "SKIPSAVE"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle", "SKIPSAVE"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle", "SKIPSAVE"],
	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 22500, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 27500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 30000, "vehicle"],
	["Rhino MGS", "B_AFV_Wheeled_01_cannon_F", 45000, "vehicle"],
	["Rhino MGS UP", "B_AFV_Wheeled_01_up_cannon_F", 55000, "vehicle"],
	
	["::CUP Armoured::", "", 0, "item"],
	//CUP Armoured - Sorted Alphabetically (Roughly), Ascending, Unarmed then MG always firsts
	["Coyote L2A1 DES", "CUP_B_BAF_Coyote_L2A1_D", 6500, "vehicle"],
	["Coyote L2A1 WDL", "CUP_B_BAF_Coyote_L2A1_W", 6500, "vehicle"],
	["Coyote GMG DES", "CUP_B_BAF_Coyote_GMG_D", 12500, "vehicle"],
	["Coyote GMG WDL", "CUP_B_BAF_Coyote_GMG_W", 12500, "vehicle"],
	["Dingo MG DES", "CUP_B_Dingo_GER_Des", 8000, "vehicle"],
	["Dingo MG WDL", "CUP_B_Dingo_GER_Wdl", 8000, "vehicle"],
	["Dingo GMG DES", "CUP_B_Dingo_GL_GER_Des", 15000, "vehicle"],
	["Dingo GMG WDL", "CUP_B_Dingo_GL_GER_Wdl", 15000, "vehicle"],
	["GAZ Vodnik Medevac", "CUP_O_GAZ_Vodnik_MedEvac_RU", 6000, "vehicle"],
	["GAZ Vodnik PK", "CUP_O_GAZ_Vodnik_PK_RU", 8000, "vehicle"],
	["GAZ Vodnik PK/AGS", "CUP_O_GAZ_Vodnik_AGS_RU", 17500, "vehicle"],
	["GAZ Vodnik BPPU", "CUP_O_GAZ_Vodnik_BPPU_RU", 130000, "vehicle"],
	["HMMWV DES", "CUP_B_HMMWV_Unarmed_USA", 4500, "vehicle"],
	["HMMWV WDL", "CUP_B_HMMWV_Unarmed_USMC", 4500, "vehicle"],
	["HMMWV Ambulance DES", "CUP_B_HMMWV_Ambulance_USA", 6000, "vehicle"],
	["HMMWV Ambulance WDL", "CUP_B_HMMWV_Ambulance_USMC", 6000, "vehicle"],
	["HMMWV DSHKM DES (ACR)", "CUP_B_HMMWV_DSHKM_GPK_ACR", 15000, "vehicle"],
	["HMMWV M1151 M2 DES", "CUP_B_HMMWV_M2_GPK_ACR", 8500, "vehicle"],
	["HMMWV M1151 M2 WDL", "CUP_B_HMMWV_M2_GPK_NATO_T", 8500, "vehicle"],
	["HMMWV M2 DES", "CUP_B_HMMWV_M2_USA", 7500, "vehicle"],
	["HMMWV M2 WDL", "CUP_B_HMMWV_M2_USMC", 7500, "vehicle"],
	["HMMWV Mk19 DES", "CUP_B_HMMWV_MK19_USA", 15000, "vehicle"],
	["HMMWV Mk19 WDL", "CUP_B_HMMWV_MK19_NATO_T", 15000, "vehicle"],
	["HMMWV SOV M2 DES", "CUP_B_HMMWV_SOV_M2_USA", 8000, "vehicle"],
	["HMMWV SOV M2 WDL", "CUP_B_HMMWV_SOV_M2_NATO_T", 8000, "vehicle"],
	["HMMWV SOV Mk19 DES", "CUP_B_HMMWV_SOV_USA", 13000, "vehicle"],
	["HMMWV SOV Mk19 WDL", "CUP_B_HMMWV_SOV_NATO_T", 13000, "vehicle"],
	["HMMWV TOW DES", "CUP_B_HMMWV_TOW_USA", 22000, "vehicle"],
	["HMMWV TOW WDL", "CUP_B_HMMWV_TOW_NATO_T", 22000, "vehicle"],
	["Land Rover DES", "CUP_B_LR_Transport_GB_D", 3500, "vehicle"],
	["Land Rover WDL", "CUP_B_LR_Transport_GB_W", 3500, "vehicle"],
	["Land Rover Ambulance DES", "CUP_B_LR_Ambulance_GB_D", 4250, "vehicle"],
	["Land Rover Ambulance WDL", "CUP_B_LR_Ambulance_GB_W", 4250, "vehicle"],
	["M1126 ICV M2 DES", "CUP_B_M1126_ICV_M2_Desert", 27500, "vehicle"],
	["M1126 ICV M2 WDL", "CUP_B_M1126_ICV_M2_Woodland", 27500, "vehicle"],
	["M1126 ICV Mk19 DES", "CUP_B_M1126_ICV_MK19_Desert", 27500, "vehicle"],
	["M1126 ICV Mk19 WDL", "CUP_B_M1126_ICV_MK19_Woodland", 27500, "vehicle"],
	["M1130 WDL", "CUP_B_M1130_CV_M2_Woodland", 25000, "vehicle"],	
	["M1130 DES", "CUP_B_M1130_CV_M2_Desert", 25000, "vehicle"],
	["Mastiff HMG DES", "CUP_B_Mastiff_HMG_GB_D", 17500, "vehicle"],
	["Mastiff HMG WDL", "CUP_B_Mastiff_HMG_GB_W", 17500, "vehicle"],
	["Ridgeback HMG DES", "CUP_B_Ridgback_HMG_GB_D", 17000, "vehicle"],
	["Ridgeback HMG WDL", "CUP_B_Ridgback_HMG_GB_W", 17000, "vehicle"],
	["UAZ - Open, Unarmed", "CUP_B_UAZ_Open_CDF", 2000, "vehicle"],
	["UAZ - Unarmed", "CUP_B_UAZ_Unarmed_CDF", 2500, "vehicle"],
	["UAZ DSHKM", "CUP_B_UAZ_MG_CDF", 7500, "vehicle"],
	["UAZ AGS-30", "CUP_B_UAZ_AGS30_CDF", 15000, "vehicle"],
	["UAZ METIS", "CUP_B_UAZ_METIS_CDF", 25000, "vehicle"],
	["UAZ SPG-9", "CUP_B_UAZ_SPG9_CDF", 20000, "vehicle"],
	["Wolfhound HMG DES", "CUP_B_Wolfhound_HMG_GB_D", 15000, "vehicle"],
	["Wolfhound HMG WDL", "CUP_B_Wolfhound_HMG_GB_W", 15000, "vehicle"]	
];

tanksArray = compileFinal str
[
	["AWC 303 Nyx Recon", "I_LT_01_scout_F", 5000, "vehicle"],
	["AWC 304 Nyx Autocannon", "I_LT_01_cannon_F", 20000, "vehicle"],
	["AWC 301 Nyx AT", "I_LT_01_AT_F", 20000, "vehicle"],
	["AWC 302 Nyx AA", "I_LT_01_AA_F", 20000, "vehicle"],
	["CRV-6e Bobcat (Resupply)", "B_APC_Tracked_01_CRV_F", 30000, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 30000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 35000, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 50000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 50000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 50000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 50000, "vehicle"],
	["T-140 Angara", "O_T_MBT_04_cannon_F", 75000, "vehicle"],
	["T-140K Angara", "O_T_MBT_04_command_F", 90000, "vehicle"],
	
	["::CUP Tanks::", "", 0, "item"],
	//CUP APC/IFV's
	["USMC AAV", "CUP_B_AAV_USMC", 25000, "vehicle"],
	["BMP-1P", "CUP_O_BMP1P_TKA", 30000, "vehicle"],
	["BMP-1", "CUP_O_BMP1_TKA", 30000, "vehicle"],
	["BMP-2", "CUP_O_BMP2_RU", 32500, "vehicle"],
	["BMP-2 ZU-23", "CUP_O_BMP2_ZU_TKA", 35000, "vehicle"],
	["BMP-3", "CUP_O_BMP3_RU", 40000, "vehicle"],
	["BRDM-2", "CUP_O_BRDM2_RUS", 20000, "vehicle"],
	["BTR-60", "CUP_O_BTR60_TK", 25000, "vehicle"],
	["BTR-90", "CUP_O_BTR90_RU", 27500, "vehicle"],
	["FV-432 Bulldog M2 DES", "CUP_B_FV432_Bulldog_GB_D_RWS", 27500, "vehicle"],
	["FV-432 Bulldog M2 WDL", "CUP_B_FV432_Bulldog_GB_W_RWS", 27500, "vehicle"],
	["FV-432 Bulldog DES", "CUP_B_FV432_Bulldog_GB_D", 30000, "vehicle"],
	["FV-432 Bulldog WDL", "CUP_B_FV432_Bulldog_GB_W", 30000, "vehicle"],
	["FV-510 Warrior DES", "CUP_B_FV510_GB_D", 27500, "vehicle"],
	["FV-510 Warrior WDL", "CUP_B_FV510_GB_W", 27500, "vehicle"],
	["HMMWV Avenger DES", "CUP_B_HMMWV_Avenger_USA", 35000, "vehicle"],
	["HMMWV Avenger WDL", "CUP_B_HMMWV_Avenger_USMC", 35000, "vehicle"],
	["LAV-25 M240 DES", "CUP_B_LAV25M240_desert_USMC", 30000, "vehicle"],
	["LAV-25 M240 WDL", "CUP_B_LAV25M240_USMC", 30000, "vehicle"],
	["M6 Linebacker DES", "CUP_B_M6LineBacker_USA_D", 40000, "vehicle"],
	["M6 Linebacker WDL", "CUP_B_M6LineBacker_USA_W", 40000, "vehicle"],
	["M113 Bradley DES", "CUP_B_M113_desert_USA", 37500, "vehicle"],
	["M113 Bradley WDL", "CUP_B_M113_USA", 37500, "vehicle"],
	["M1128 MGS DES", "CUP_B_M1128_MGS_Desert", 75000, "vehicle"],		//OP Tank Destroyer
	["M1128 MGS WDL", "CUP_B_M1128_MGS_Woodland", 75000, "vehicle"],	//OP Tank Destroyer
	["ZSU-23", "CUP_B_ZSU23_CDF", 35000, "vehicle"],
	
	//CUP MBT's - Hidden tanks are to allow for selling of mission ones
	["Challenger 2 DES", "CUP_B_Challenger2_Desert_BAF", 50000, "vehicle"],
	["Challenger 2 WDL", "CUP_B_Challenger2_Woodland_BAF", 50000, "vehicle"],
	["Challenger 2 Two-Colour DES", "CUP_B_Challenger2_2CD_BAF", 50000, "vehicle"],
	["Challenger 2 Two-Colour WDL", "CUP_B_Challenger2_2CW_BAF", 50000, "vehicle"],
	["M1A1 Abrams DES", "CUP_B_M1A1_DES_USMC", 50000, "vehicle"],
	["M1A1 Abrams WDL", "CUP_B_M1A1_Woodland_USMC", 50000, "vehicle"],
	["M1A1 Abrams TUSK DES", "CUP_B_M1A2_TUSK_MG_DES_USMC", 60000, "vehicle"],
	["M1A1 Abrams TUSK WDL", "CUP_B_M1A2_TUSK_MG_USMC", 60000, "vehicle"],
	["ACR T-72M4CZ", "CUP_B_T72_CZ", 45000, "vehicle"],
	["SLA T-55", "CUP_O_T55_SLA", 37500, "vehicle"],
	["T-90 RUS", "CUP_O_T90_RU", 50000, "vehicle"]
];

helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Unarmed)", "O_Heli_Light_02_unarmed_F", 6000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Unarmed)", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 8000, "vehicle"], // AW101

	["Mi-290 Taru (Resupply)", "O_Heli_Transport_04_ammo_F", 7500, "vehicle"],
	["Mi-290 Taru (Crane)", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box)", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel)", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench)", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["Mi-290 Taru (Transport)", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["Mi-290 Taru (Medical)", "O_Heli_Transport_04_medevac_F", 12500, "vehicle"],
	["Mi-290 Taru (Repair)", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],

	["CH-67 Huron (Unarmed)", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-67 Huron (Armed)", "B_Heli_Transport_03_F", 20000, "vehicle"], // CH-47 with 2 side miniguns

	["UH-80 Ghost Hawk", "B_Heli_Transport_01_F", 12500, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["AH-9 Pawnee (Gun-Only)", "B_Heli_Light_01_dynamicLoadout_F", 15000, "vehicle", "variant_pawneeGun"], // Armed AH-6 (no missiles)
	["AH-9 Pawnee", "B_Heli_Light_01_dynamicLoadout_F", 35000, "vehicle", "variant_pawneeNormal"], // Armed AH-6
	["PO-30 Orca (DAR)", "O_Heli_Light_02_dynamicLoadout_F", 30000, "vehicle", "variant_orcaDAR"], // Armed Ka-60
	["PO-30 Orca (DAGR)", "O_Heli_Light_02_dynamicLoadout_F", 40000, "vehicle", "variant_orcaDAGR"], // Armed Ka-60, add "HIDDEN" if you don't want it, but don't remove the line!
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_dynamicLoadout_F", 40000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_dynamicLoadout_F", 55000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman", "O_Heli_Attack_02_dynamicLoadout_F", 80000, "vehicle"], // Mi-28 with gunner 

	["MQ-12 Falcon UAV", "B_T_UAV_03_F", 75000, "vehicle"], // Do NOT use "B_T_UAV_03_dynamicLoadout_F" (unless you don't need ASRAAM) 
	
	["::CUP Helicopters::", "", 0, "item"],
	//CUP Helicopters
	["AH-1Z USMC", "CUP_B_AH1Z_Dynamic_USMC", 95000, "vehicle"],
	["AH-6J Little Bird", "CUP_B_AH6J_USA", 35000, "vehicle"],
	["AH-64D", "CUP_B_AH64D_DL_USA", 95000, "vehicle"],
	["AW-159 Wildcat (Black Cat)", "CUP_B_AW159_RN_Blackcat", 40000, "vehicle"],
	["AW-159 Wildcat (Green)", "CUP_B_AW159_GB", 40000, "vehicle"],
	["AW-159 Wildcat (Grey)", "CUP_B_AW159_RN_Grey", 40000, "vehicle"],
	["AW-159 Wildcat (Unarmed,Black Cat)", "CUP_B_AW159_Unarmed_RN_Blackcat", 7500, "vehicle"],
	["AW-159 Wildcat (Unarmed, Green)", "CUP_B_AW159_Unarmed_GB", 7500, "vehicle"],
	["AW-159 Wildcat (Unarmed, Grey)", "CUP_B_AW159_Unarmed_RN_Grey", 7500, "vehicle"],
	["BAF AH1", "CUP_B_AH1_DL_BAF", 90000, "vehicle"],
	["CH-47F", "CUP_B_CH47F_USA", 10000, "vehicle"],
	["CH-53 Super Stallion", "CUP_B_CH53E_USMC", 9000, "vehicle"],
	["GER UH-1D DES", "CUP_B_UH1D_GER_KSK_Des", 7500, "vehicle"],
	["GER UH-1D WDL", "CUP_B_UH1D_GER_KSK", 7500, "vehicle"],
	["Merlin HC3 (Unarmed)", "CUP_B_Merlin_HC3_GB", 10000, "vehicle"],
	["Merlin HC3", "CUP_B_Merlin_HC3_Armed_GB", 12500, "vehicle"],
	["MH-6J Little Bird (Unarmed)", "CUP_B_MH6J_USA", 5000, "vehicle"],
	["MH-60S USMC", "CUP_B_MH60S_USMC", 12500, "vehicle"],
	["MH-60S FFV USMC", "CUP_B_MH60S_FFV_USMC", 12500, "vehicle"],
	["MH-60L 2x DAP US Army", "CUP_B_MH60L_DAP_2x_US", 40000, "vehicle"],
	["MH-60L 2x DAP US Navy ", "CUP_B_MH60L_DAP_2x_USN", 40000, "vehicle"],
	["MH-60L 4x DAP US Army", "CUP_B_MH60L_DAP_4x_US", 65000, "vehicle"],
	["MH-60L 4x DAP US Navy ", "CUP_B_MH60L_DAP_4x_USN", 65000, "vehicle"],
	["Mi-6T Hook", "CUP_B_MI6T_CDF", 25000, "vehicle", "HIDDEN"],
	["Mi-17", "CUP_B_Mi17_CDF", 12500, "vehicle"],
	["Mi-24", "CUP_B_Mi24_D_Dynamic_CDF", 125000, "vehicle"],
	["Mi-24 Mk4", "CUP_I_Mi24_Mk4_ION", 100000, "vehicle"],
	["SA-330 Puma HC2", "CUP_B_SA330_Puma_HC2_BAF", 5000, "vehicle"],
	["UH-1H SLA WDL", "CUP_O_UH1H_SLA", 7500, "vehicle"],
	["UH-1H TKA DES", "CUP_O_UH1H_TKA", 7500, "vehicle"],
	["UH-1Y Venom Gunship", "CUP_B_UH1Y_Gunship_Dynamic_USMC", 70000, "vehicle"],
	["UH-1Y Venom Transport (Unarmed)", "CUP_B_UH1Y_UNA_USMC", 7500, "vehicle"],
	["UH-60M", "CUP_B_UH60M_US", 12500, "vehicle"],
	["Ka-50 Black Shark", "CUP_O_Ka50_DL_RU", 100000, "vehicle"],
	["Ka-52", "CUP_O_Ka52_RU", 80000, "vehicle"],	//AT
	["Ka-60 Black (Rockets)", "CUP_O_Ka60_Blk_CSAT", 35000, "vehicle"],
	["Ka-60 Whale (Rockets)", "CUP_O_Ka60_Whale_CSAT", 35000, "vehicle"],
	["Ka-60 GL Black (Rockets - M32)", "CUP_O_Ka60_GL_Blk_CSAT", 45000, "vehicle"],
	["Ka-60 GL Whale (Rockets - M32)", "CUP_O_Ka60_GL_Whale_CSAT", 45000, "vehicle"]
];

planesArray = compileFinal str
[
	["Caesar BTT", "C_Plane_Civil_01_F", 2500, "vehicle"],

	["A-143 Buzzard AA", "I_Plane_Fighter_03_dynamicLoadout_F", 60000, "vehicle", "variant_buzzardAA"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_dynamicLoadout_F", 80000, "vehicle", "variant_buzzardCAS"],

	["A-149 Gryphon", "I_Plane_Fighter_04_F", 100000, "vehicle"],

	["F/A-181 Black Wasp (Gun-Only)", "B_Plane_Fighter_01_Stealth_F", 50000, "vehicle"], // no missiles or bombs
	["F/A-181 Black Wasp AA", "B_Plane_Fighter_01_F", 100000, "vehicle", "variant_blackwaspAA"],
	["F/A-181 Black Wasp CAS", "B_Plane_Fighter_01_F", 125000, "vehicle"],

	["To-201 Shikra (Gun-Only)", "O_Plane_Fighter_02_Stealth_F", 50000, "vehicle"], // no missiles or bombs
	["To-201 Shikra AA", "O_Plane_Fighter_02_F", 125000, "vehicle", "variant_shikraAA"],
	["To-201 Shikra CAS", "O_Plane_Fighter_02_F", 175000, "vehicle"],

	["A-164 Wipeout CAS", "B_Plane_CAS_01_dynamicLoadout_F", 200000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_dynamicLoadout_F", 100000, "vehicle"],

	["V-44 X Blackfish (Infantry)", "B_T_VTOL_01_infantry_F", 35000, "vehicle"],
	["V-44 X Blackfish (Gunship)", "B_T_VTOL_01_armed_F", 100000, "vehicle"],
	["Y-32 Xi'an", "O_T_VTOL_02_infantry_dynamicLoadout_F", 85000, "vehicle"],

	["KH-3A Fenghuang Missile UAV", "O_T_UAV_04_CAS_F", 30000, "vehicle"],
	
	["MQ4A Greyhawk Missile UAV", "B_UAV_02_dynamicLoadout_F", 30000, "vehicle", "variant_greyhawkMissile"],
	["K40 Ababil-3 Missile UAV", "O_UAV_02_dynamicLoadout_F", 30000, "vehicle", "variant_greyhawkMissile"],
	["K40 Ababil-3 Missile UAV", "I_UAV_02_dynamicLoadout_F", 30000, "vehicle", "variant_greyhawkMissile"],

	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_dynamicLoadout_F", 20000, "vehicle", "variant_greyhawkBomber"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than Missile ones
	["K40 Ababil-3 Bomber UAV", "O_UAV_02_dynamicLoadout_F", 20000, "vehicle", "variant_greyhawkBomber"],
	["K40 Ababil-3 Bomber UAV", "I_UAV_02_dynamicLoadout_F", 20000, "vehicle", "variant_greyhawkBomber"],

	["MQ4A Greyhawk Cluster UAV", "B_UAV_02_dynamicLoadout_F", 25000, "vehicle", "variant_greyhawkCluster"],
	["K40 Ababil-3 Cluster UAV", "O_UAV_02_dynamicLoadout_F", 25000, "vehicle", "variant_greyhawkCluster"],
	["K40 Ababil-3 Cluster UAV", "I_UAV_02_dynamicLoadout_F", 25000, "vehicle", "variant_greyhawkCluster"],

	["MQ4A Greyhawk DAGR UAV", "B_UAV_02_dynamicLoadout_F", 60000, "vehicle", "variant_greyhawkDAGR"],
	["K40 Ababil-3 DAGR UAV", "O_UAV_02_dynamicLoadout_F", 60000, "vehicle", "variant_greyhawkDAGR"],
	["K40 Ababil-3 DAGR UAV", "I_UAV_02_dynamicLoadout_F", 60000, "vehicle", "variant_greyhawkDAGR"],

	["UCAV Sentinel Missile", "B_UAV_05_F", 40000, "vehicle", "variant_sentinelMissile"],
	["UCAV Sentinel Bomber", "B_UAV_05_F", 20000, "vehicle", "variant_sentinelBomber"],
	["UCAV Sentinel Cluster", "B_UAV_05_F", 25000, "vehicle", "variant_sentinelCluster"],
	
	["::CUP Aircraft::", "", 0, "item"],
	//CUP Aircraft
	["A-10 Thunderbolt II", "CUP_B_A10_DYN_USA", 200000, "vehicle"],
	["AC-47 Spooky", "CUP_B_AC47_Spooky_USA", 250000, "vehicle"],
	["AV-8B Harrier (USMC)", "CUP_B_AV8B_DYN_USMC", 100000, "vehicle"],
	["C-130J Cargo (GB)", "CUP_B_C130J_Cargo_GB", 110000, "vehicle"],
	["C-130J Cargo (USMC)", "CUP_B_C130J_Cargo_USMC", 110000, "vehicle"],
	["C-130J (GB)", "CUP_B_C130J_GB", 100000, "vehicle"],
	["C-130J (USMC)", "CUP_B_C130J_USMC", 100000, "vehicle"],
	["Douglas C-47 Skytrain", "CUP_B_C47_USA", 15000, "vehicle"],
	["F-35B Lightning II (USMC)", "CUP_B_F35B_BAF", 100000, "vehicle"],
	["F-35B Lightning II (BAF)", "CUP_B_F35B_USMC", 100000, "vehicle"],
	["F-35B Lightning II (Stealth, BAF", "CUP_B_F35B_Stealth_BAF", 120000, "vehicle"],
	["F-35B Lightning II (Stealth, USMC)", "CUP_B_F35B_Stealth_USMC", 120000, "vehicle"],
	["Harrier GR.9", "CUP_B_GR9_DYN_GB", 100000, "vehicle"],
	["L-39ZA", "CUP_B_L39_CZ", 75000, "vehicle"],
	["MV-22 Osprey", "CUP_B_MV22_USMC", 30000, "vehicle"],
	["MV-22 Osprey (Ramp Gun)", "CUP_B_MV22_USMC_RAMPGUN", 35000, "vehicle"],
	["MV-22 Osprey (VIV)", "CUP_B_MV22_VIV_USMC", 35000, "vehicle"],
	["SU-34", "CUP_B_SU34_CDF", 200000, "vehicle"],
	["SU-25", "CUP_B_Su25_Dyn_CDF", 125000, "vehicle"]
	
	
];

boatsArray = compileFinal str
[
	["Water Scooter", "C_Scooter_Transport_01_F", 500, "boat", "SKIPSAVE"],

	["Rescue Boat", "C_Rubberboat", 500, "boat", "SKIPSAVE"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat", "SKIPSAVE"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat", "SKIPSAVE"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat", "SKIPSAVE"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat", "SKIPSAVE"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat", "SKIPSAVE"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat", "SKIPSAVE"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat", "SKIPSAVE"],
	["Motorboat (Rescue)", "C_Boat_Civil_01_rescue_F", 900, "boat", "SKIPSAVE"],
	["Motorboat (Police)", "C_Boat_Civil_01_police_F", 1100, "boat", "SKIPSAVE"],

	["RHIB", "I_C_Boat_Transport_02_F", 1500, "boat", "SKIPSAVE"],

	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 5000, "boat", "SKIPSAVE"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 5000, "boat", "SKIPSAVE"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 5000, "boat", "SKIPSAVE"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 3000, "submarine", "SKIPSAVE"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 3000, "submarine", "SKIPSAVE"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 3000, "submarine", "SKIPSAVE"],
	
	["::CUP Boats::", "", 0, "item"],
	//CUP Boats
	["Fishing Boat", "CUP_C_Fishing_Boat_Chernarus", 1000, "boat", "SKIPSAVE"],
	["PBX", "CUP_C_PBX_CIV", 750, "boat", "SKIPSAVE"],
	["RHIB (RACS)", "CUP_I_RHIB_RACS", 2000, "boat", "SKIPSAVE"],
	["RHIB (USMC)", "CUP_B_RHIB_USMC", 2000, "boat", "SKIPSAVE"],
	["RHIB Mk19 (RACS)", "CUP_I_RHIB2Turret_RACS", 3500, "boat", "SKIPSAVE"],
	["RHIB Mk19 (USMC)", "CUP_B_RHIB2Turret_USMC", 3500, "boat", "SKIPSAVE"],
	["Seafox Target Boat", "CUP_B_Seafox_USMC", 1000, "boat", "SKIPSAVE"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	// Deprecated
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Red - Kart", [[0, _kartDir + "kart_01_base_red_co.paa"]]] // no red TextureSource :(
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo - MH-9", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White - MH-9", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy - MH-9", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION - MH-9", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave - MH-9", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Blackfoot paintjob
		"Heli_Attack_01_base_F",
		[
			["Rusty - AH-99 Blackfoot", [[0, _wreckDir + "wreck_heli_attack_01_co.paa"]]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Rusty - Mi-48 Kajman", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy - Mi-48 Kajman", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Gorgon paintjobs
		"APC_Wheeled_03_base_F",
		[
			["Tan - AFV-4 Gorgon", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty - Hatchback", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	],
	[ // GOD EMPEROR
		"B_MBT_01_cannon_F",
		[
			["Trump - Slammer", [
				[0, _texDir + "slammer_trump_0.paa"],
				[1, _texDir + "slammer_trump_1.paa"]
			]]
		]
	],
	[
		"B_MBT_01_TUSK_F",
		[
			["Trump - Slammer", [[2, _texDir + "slammer_trump_2.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Artillery Strike Tablet", "artillery", "", "client\icons\tablet.paa", 500000, 100000, "HIDDEN"],
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 10, 0],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 10, 1],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Fuel Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Fuel Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 2500, 1250],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 25, 12],
	["Vault", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 100000, 50000, "HIDDEN"] 
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
