#define package "CTS_"

SET_GROUP(uniform) //Uniforme Básico
	["Black_Black_Camo",
	 "Black_Black_SS_Camo",
	 "BLack_Crye_Camo",
	 "Multicam_Black_Casual_Camo",
	 "Black_Crye_SS_Camo",
	 "BLack_Crye2_Camo"
	] call FNC_AddItemRandom;

	["milgp_f_face_shield_tactical_shemagh_cb", "milgp_f_face_shield_shemagh_cb", "milgp_f_face_shield_goggles_shemagh_cb",
	"CTS_Shemagh_Facemask_tan_Goggles", "CTS_Shemagh_Balaclava_tan_Goggles", "rhsusf_shemagh2_gogg_tan"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(helmet) //Cascos
	["CTS_oga_OPS", "CTS_oga_OPS_2", "milgp_h_opscore_01_KHK", "milgp_h_opscore_02_KHK", "milgp_h_opscore_04_KHK"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformFTL) //Uniforme Lideres de Equipo
	["CPC_belt_LBTgpcoy"] call FNC_AddItem;
	["milgp_h_airframe_01_KHK", "milgp_h_airframe_02_KHK", "milgp_h_airframe_04_KHK", "CTS_AirFrame" ] call FNC_AddItemRandom;
	["tfw_ilbe_dd_coy"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformM) //Uniforme Marksman
	["CTS_JPC_2", "CTS_JPC_3"] call FNC_AddItemRandom;
	["milgp_bp_hydration_cb"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAR) //Uniforme Automatic Rifleman
	["CTS_FAPC_MG_OGA", "CTS_CarrierRig_Gunner_OGA", "CTS_LBT6094_MG_OGA", "CTS_RAV_MG_OGA"] call FNC_AddItemRandom;
	["milgp_bp_hydration_cb"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAT) //Uniforme Rifleman AT
	["CPC_belt_LBTcoy"] call FNC_AddItem;
	["milgp_bp_Breacher_cb"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformENG) //Uniforme Engineer
	["CPC_belt_LBTcoy"] call FNC_AddItem;
	["milgp_bp_Pointman_mc", "milgp_bp_Pointman_cb"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformMEDIC) //Uniforme Medic
	["CPC_belt_LBTcoy"] call FNC_AddItem;
	["CTS_MCA_Kitbag_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformPILOT) //Uniforme Piloto
	["CTS_HeliPilot_Uniform"] call FNC_AddItem;
	["V_TacVest_blk"] call FNC_AddItem;
	["CTS_HeliPilot_Helmet"] call FNC_AddItem;
	["B_Parachute"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformCM) //Uniforme CM
	["milgp_v_jpc_teamleader_cb"] call FNC_AddItem;
	["CUP_H_BAF_PARA_PRRUNDER_BERET"] call FNC_AddItem;
	["tfw_ilbe_dd_coy"] call FNC_AddItem;
END_GROUP;

SET_GROUP(IFAK) //Medicinas básicas
	["ACE_tourniquet",2,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",6,"backpack"] call FNC_AddItem;
	["ACE_fieldDressing",4,"backpack"] call FNC_AddItem;
	["ACE_quikclot",7,"backpack"] call FNC_AddItem;
	["ACE_packingBandage",4,"backpack"] call FNC_AddItem;
	["ACE_morphine",2,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",2,"backpack"] call FNC_AddItem;
	["ACE_Splint",4,"backpack"] call FNC_AddItem;
END_GROUP;

SET_GROUP(IFAKMEDIC) //Medicinas Médico
	["ACE_tourniquet",15,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",20,"backpack"] call FNC_AddItem;
	["ACE_fieldDressing",20,"backpack"] call FNC_AddItem;
	["ACE_quikclot",20,"backpack"] call FNC_AddItem;
	["ACE_packingBandage",20,"backpack"] call FNC_AddItem;
	["ACE_morphine",15,"backpack"] call FNC_AddItem;
	["ACE_epinephrine",15,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",6,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",6,"backpack"] call FNC_AddItem;
	["ACE_Splint",15,"backpack"] call FNC_AddItem;
	["ACE_personalAidKit",1,"backpack"] call FNC_AddItem;
	["ACE_surgicalKit",1,"backpack"] call FNC_AddItem;
END_GROUP;

SET_GROUP(items) //Objetos básicos
	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["ItemMicroDAGR",1,"vest"] call FNC_AddItem;
	["ItemcTabHCam",1,"vest"] call FNC_AddItem;
	["ACE_CableTie",2,"vest"] call FNC_AddItem;
	["ACE_Clacker",1,"vest"] call FNC_AddItem;
	["MS_Strobe_Mag_1",1,"vest"] call FNC_AddItem;
	["ACRE_PRC152"] call FNC_AddItem;

	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Equipación Nocturna
		["ACE_Flashlight_XL50",1,"vest"] call FNC_AddItem;
		["ACE_IR_Strobe_Item",1,"vest"] call FNC_AddItem;
		["B_IR_Grenade",1,"vest"] call FNC_AddItem;
		["Chemlight_green",2,"vest"] call FNC_AddItem;
		["USP_GPNVG18_TAN"] call FNC_AddItem;
	};
END_GROUP;

SET_GROUP(ammofrag) //Granadas/Explosivos básicos
	["SmokeShell", 2] call FNC_AddItem;
	["SmokeShellGreen", 2] call FNC_AddItem;
	["rhs_mag_rgn", 2] call FNC_AddItem;
	["rhs_mag_zarya2",4,"vest"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle) //Rifle principal
	["rhs_30Rnd_545x39_7N22_AK",6,"vest"] call FNC_AddItem; //Munición Principal
	["AK105_B30_B31C_CTR_AFG_tan"] call FNC_AddItem; //Rifle
	["rhsusf_acc_eotech_552_d"] call FNC_AddItem; //Mira
	["rhs_30Rnd_545x39_AK_plum_green",3,"vest"] call FNC_AddItem; //Munición Secundaria
	["jas_sfpeq_ak_b30_b31c_top_blk"] call FNC_AddItem; //Laser	
	["ak105_b30_b31c_railcover_tan_right"] call FNC_AddItem; //Cover
	["rhs_acc_ak5"] call FNC_AddItem; //Silenciador

	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["silencer_hybrid_46"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleGL) //Rifle lanzagranadas
	["1Rnd_HE_Grenade_shell",6,"vest"] call FNC_AddItem; //Granada Principal
	["rhs_weap_M320"] call FNC_AddItem; //Rifle
	["1Rnd_Smoke_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["1Rnd_SmokeRed_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
END_GROUP;

SET_GROUP(rifleM) //Rifle Marksman
	["10Rnd_762x54_Mag",18,"vest"] call FNC_AddItem; //Munición Principal
	["srifle_DMR_01_black_F"] call FNC_AddItem; //Rifle
	["rhsusf_acc_leupoldmk4_2_mrds"] call FNC_AddItem; //Mira 
	["bipod_02_F_blk"] call FNC_AddItem; //Bípode
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["optic_nightstalker",1,"backpack"] call FNC_AddItem; //Mira Nocturna
		["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem; //Laser	
		["muzzle_snds_b"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleAR) //Rifle Automatic Rifleman
	["75rnd_762x39_AK12_Mag_F",8,"vest"] call FNC_AddItem; //Munición Principal
	["arifle_RPK12_F"] call FNC_AddItem; //Rifle
	["optic_arco_ak_blk_f"] call FNC_AddItem; //Mira 
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["rhsusf_acc_anpeq15_bk"] call FNC_AddItem; //Laser	
		["muzzle_snds_b"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(ammoAR) //Rifle Automatic Rifleman
	["75rnd_762x39_AK12_Mag_F",6,"backpack"] call FNC_AddItem; //Munición Principal
END_GROUP;

SET_GROUP(ammorifle) //Rifle Automatic Rifleman
	["rhs_30Rnd_545x39_7N22_AK",6,"backpack"] call FNC_AddItem; //Munición Principal
END_GROUP;

SET_GROUP(AT) //AT
	["RPG32_F",2,"backpack"] call FNC_AddItem; //Munición Principal
	["launch_RPG32_green_F"] call FNC_AddItem; //AT
	["RPG32_HE_F",1,"backpack"] call FNC_AddItem; //Munición Secundaria
END_GROUP;

SET_GROUP(EXP) //Explosivos
	["DemoCharge_Remote_Mag",2,"backpack"] call FNC_AddItem; //M112
	["SatchelCharge_Remote_Mag",1,"backpack"] call FNC_AddItem; //M183
	["AMP_Breaching_Charge_Mag",3,"vest"] call FNC_AddItem; //Breaching Charge
END_GROUP;

SET_GROUP(pistol) //Pistola
	["16Rnd_9x21_Mag",2,"vest"] call FNC_AddItem; //Munición
	["hgun_Rook40_F"] call FNC_AddItem; //Pistola
	["muzzle_snds_L"] call FNC_AddItem; //Accesorios
END_GROUP;

SET_GROUP(SMG) //Pistola
	["50Rnd_570x28_SMG_03",3,"vest"] call FNC_AddItem; //Munición
	["SMG_03C_camo"] call FNC_AddItem; //Pistola
END_GROUP;

case (package + "FTL"): { //Lider de Equipo
	ADD_GROUP(uniform);
	ADD_GROUP(uniformFTL);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(rifleGL);
	["LaserBatteries"] call FNC_AddItem; //Baterias Designador
	["LaserDesignator"] call FNC_AddItem; //Designador
	["ItemcTab"] call FNC_AddItem; //Tablet
	["SmokeShellBlue",2,"vest"] call FNC_AddItem; //Humo Azul
};

case (package + "M"): { //Marksman
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformM);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(ammoAR);
	ADD_GROUP(rifleM);
	ADD_GROUP(pistol);
	["ACE_Vector"] call FNC_AddItem; //Vector
	["ACE_Kestrel4500",1,"vest"] call FNC_AddItem; //Kestrel
	["ACE_ATragMX",1,"vest"] call FNC_AddItem; //AtragMX
	["ACE_RangeCard",1,"vest"] call FNC_AddItem; //Tablas
	["ACE_MapTools",1,"vest"] call FNC_AddItem; //Map Tools
};

case (package + "AR"): { //Automatic Rifleman
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformAR);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleAR);
	ADD_GROUP(pistol);
};

case (package + "AT"): { //AT
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformAT);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(AT);
};

case (package + "ENG"): { //Engineer
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformENG);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(EXP);
	["MRH_HackingTool"] call FNC_AddItem; //Hacking Tool
	["Toolkit",1, "backpack"] call FNC_AddItem; //Toolkit
};

case (package + "MEDIC"): { //Medic
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformMEDIC);
	ADD_GROUP(ifakMEDIC);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
};

case (package + "RFL"): { //Rifleman
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformENG);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
	ADD_GROUP(ammorifle);
};

case (package + "PILOT"): { //Rifleman
	ADD_GROUP(uniformPilot);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(SMG);
	ADD_GROUP(pistol);
};

case (package + "CM"): { //CM
	ADD_GROUP(uniform);
	ADD_GROUP(uniformCM);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
	["LaserBatteries"] call FNC_AddItem; //Baterias Designador
	["LaserDesignator"] call FNC_AddItem; //Designador
	["B_UAVTerminal"] call FNC_AddItem; //Tablet
	["ItemcTab",1,"uniform"] call FNC_AddItem; //Tablet
	["SmokeShellBlue",2,"vest"] call FNC_AddItem; //Humo Azul
};
