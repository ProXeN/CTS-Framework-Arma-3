#define package "CTS_"

SET_GROUP(uniform) //Uniforme Básico
	["USP_CRYE_G3FC_AOR1",
	 "USP_CRYE_G3C_CUT_AOR1",
	 "USP_CRYE_G3C_SHORT_AOR1",
	 "USP_CRYE_G3C_CUT_TAN_AOR1",
	 "USP_CRYE_G3C_SHORT_TAN_AOR1"
	] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(helmet) //Cascos
	["CTS_MCA_Helmet_Light", "CTS_Mich2000_2_OGA", 
	 "CTS_oga_OPS", "CTS_Tan_spray_OPS", "CTS_oga_OPS_2", "CTS_tan_spray_OPS_2", 
	 "milgp_h_opscore_01_KHK","milgp_h_opscore_02_KHK","milgp_h_opscore_04_KHK",
	 "milgp_h_opscore_01_khk_hexagon","milgp_h_opscore_02_khk_hexagon","milgp_h_opscore_04_khk_hexagon",
	 "CFP_OPS2017_Helmet_AOR1", "CFP_OpsC_Med_AOR1", "CFP_OpsC_Covered2_AOR1", "CFP_OpsC_Covered_AOR1"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformFTL) //Uniforme Lideres de Equipo
	["CTS_CIRAS", "CTS_CIRAS_2", "CTS_CIRAS_3"] call FNC_AddItemRandom;
	["milgp_h_airframe_01_KHK", "milgp_h_airframe_02_KHK", "milgp_h_airframe_04_KHK", 
	 "milgp_h_airframe_01_khk_hexagon", "milgp_h_airframe_02_khk_hexagon", "milgp_h_airframe_04_khk_hexagon", "CTS_AirFrame" ] call FNC_AddItemRandom;
	["tfw_ilbe_dd_coy"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformM) //Uniforme Marksman
	["CTS_Armatus_2", "CTS_LBT6094_gen2"] call FNC_AddItemRandom;
	["CTS_MCA_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAR) //Uniforme Automatic Rifleman
	["CTS_FAPC_MG_OGA", "CTS_CarrierRig_Gunner_OGA", "CTS_LBT6094_MG_OGA", "CTS_RAV_MG_OGA", "CFP_RAV_MG_AOR1",
	 "CFP_LBT6094_MG_AOR1", "CFP_CarrierRig_Gunner_AOR1", "CFP_FAPC_MG_AOR1"] call FNC_AddItemRandom;
	["CTS_MCA_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAT) //Uniforme Rifleman AT
	["CTS_JPC", "CTS_JPC_2", "CTS_JPC_3", "CTS_Armatus_1"] call FNC_AddItemRandom;
	["CTS_MCA_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformENG) //Uniforme Engineer
	["CTS_FAPC_Breacher_OGA", "CTS_FAPC_Operator_OGA", "CFP_FAPC_Breacher_AOR1", "CFP_FAPC_Operator_AOR1"] call FNC_AddItemRandom;
	["CTS_MCA_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformMEDIC) //Uniforme Medic
	["milgp_v_jpc_medic_cb"] call FNC_AddItem;
	["CTS_MCA_Kitbag_compact2"] call FNC_AddItem;
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
	["adv_aceSplint_splint",4,"backpack"] call FNC_AddItem;
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
	["adv_aceSplint_splint",15,"backpack"] call FNC_AddItem;
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
	["TFAR_ANPRC152"] call FNC_AddItem;
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Objetos básicos nocturnos
		["ACE_Flashlight_XL50",1,"vest"] call FNC_AddItem;
		["ACE_IR_Strobe_Item",1,"vest"] call FNC_AddItem;
		["B_IR_Grenade",1,"vest"] call FNC_AddItem;
		["Chemlight_green",2,"vest"] call FNC_AddItem;
		["JAS_GPNVG18_Tan"] call FNC_AddItem;
	};
END_GROUP;

SET_GROUP(ammofrag) //Granadas/Explosivos básicos
	["SmokeShell", 2] call FNC_AddItem;
	["SmokeShellGreen", 2] call FNC_AddItem;
	["HandGrenade", 2] call FNC_AddItem;
	["rhs_mag_mk84",4,"vest"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle) //Rifle principal
	["rhs_mag_30Rnd_556x45_Mk262_PMAG",6,"vest"] call FNC_AddItem; //Munición Principal
	["SMA_MK18afgTAN"] call FNC_AddItem; //Rifle
	["sma_eotech_t"] call FNC_AddItem; //Mira
	["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,"vest"] call FNC_AddItem; //Munición Secundaria
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["sma_anpeq15_tan"] call FNC_AddItem; //Laser	
		["sma_supp1tan_556"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleGL) //Rifle lanzagranadas
	["rhs_mag_30Rnd_556x45_Mk262_PMAG",6,"vest"] call FNC_AddItem; //Munición Principal
	["1Rnd_HE_Grenade_shell",6,"vest"] call FNC_AddItem; //Granada Principal
	["SMA_MK18TAN_GL"] call FNC_AddItem; //Rifle
	["SMA_ELCAN_SPECTER_TAN_RDS_4z"] call FNC_AddItem; //Mira
	["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,"vest"] call FNC_AddItem; //Munición Secundaria
	["1Rnd_Smoke_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["1Rnd_SmokeRed_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["sma_anpeq15_tan"] call FNC_AddItem; //Laser	
		["sma_supp1tan_556"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleM) //Rifle Marksman
	["20Rnd_762x51_Mag",9,"vest"] call FNC_AddItem; //Munición Principal
	["arifle_SPAR_03_snd_F"] call FNC_AddItem; //Rifle
	["rhsusf_acc_leupoldmk4_2_d"] call FNC_AddItem; //Mira 
	["bipod_01_F_snd"] call FNC_AddItem; //Bípode
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["optic_nightstalker",1,"backpack"] call FNC_AddItem; //Mira Nocturna
		["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem; //Laser	
		["muzzle_snds_B_snd_f"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleAR) //Rifle Automatic Rifleman
	["rhsusf_200rnd_556x45_M855_mixed_box",4,"vest"] call FNC_AddItem; //Munición Principal
	["rhs_weap_m249_pip_L"] call FNC_AddItem; //Rifle
	["sma_spitfire_03_rds_low_black"] call FNC_AddItem; //Mira 
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem; //Laser	
		["rhsusf_acc_nt4_black"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(ammoAR) //Rifle Automatic Rifleman
	["rhsusf_200rnd_556x45_M855_mixed_box",3,"backpack"] call FNC_AddItem; //Munición Principal
END_GROUP;

SET_GROUP(ammorifle) //Rifle Automatic Rifleman
	["rhs_mag_30Rnd_556x45_Mk262_PMAG",8,"backpack"] call FNC_AddItem; //Munición Principal
END_GROUP;

SET_GROUP(AT) //AT
	["MRAWS_HEAT_F",2,"backpack"] call FNC_AddItem; //Munición Principal
	["launch_MRAWS_sand_F"] call FNC_AddItem; //AT
	["MRAWS_HE_F",1,"backpack"] call FNC_AddItem; //Munición Secundaria
END_GROUP;

SET_GROUP(EXP) //Explosivos
	["DemoCharge_Remote_Mag",2,"backpack"] call FNC_AddItem; //M112
	["SatchelCharge_Remote_Mag",1,"backpack"] call FNC_AddItem; //M183
	["AMP_Breaching_Charge_Mag",3,"vest"] call FNC_AddItem; //Breaching Charge
END_GROUP;

SET_GROUP(pistol) //Pistola
	["RH_15Rnd_45cal_fnp",2,"vest"] call FNC_AddItem; //Munición
	["RH_fnp45"] call FNC_AddItem; //Pistola
	["RH_gemtech45"] call FNC_AddItem; //Accesorios
END_GROUP;

case (package + "FTL"): { //Lider de Equipo
	ADD_GROUP(uniform);
	ADD_GROUP(uniformFTL);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleGL);
	ADD_GROUP(pistol);
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
