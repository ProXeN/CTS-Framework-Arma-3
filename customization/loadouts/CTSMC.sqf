#define package "CTS_"

SET_GROUP(uniform) //Uniforme Básico
	["CTS_G2_camo_MC_OD_Shirt",
	 "CTS_G2_camo_MC_Tan_Shirt",
	 "CTS_G2_camo_MC",
	 "CTS_ColdWeatherGear_camo_multicam",
	 "CTS_G2_camo_rolled_MC_OD_Shirt",
	 "CTS_G2_camo_rolled_MC_Tan_Shirt",
	 "CTS_G2_camo_rolled_MC",
	 "USP_CRYE_G3C_CUT"
	] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformFTL) //Uniforme Lideres de Equipo
	["CTS_CIRAS", "CTS_CIRAS_2", "CTS_CIRAS_3"] call FNC_AddItemRandom;
	["milgp_h_airframe_01_CB", "milgp_h_airframe_01_MC",
	"milgp_h_airframe_02_CB", "milgp_h_airframe_02_MC",
	"milgp_h_airframe_04_CB", "milgp_h_airframe_04_MC",
	"CTS_AirFrame" ] call FNC_AddItemRandom;
	["tfw_ilbe_dd_coy"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformM) //Uniforme Marksman
	["CTS_Armatus_2", "CTS_LBT6094_gen2"] call FNC_AddItemRandom;
	["Mohawk_Core_cyalumen_tan", "Mohawk_Core_cyalumen_MTP", "OPS_CORE_F",
	 "OPS_CORE_strap_F", "CTS_OPS_Multicam", "CTS_oga_OPS", "CTS_Tan_spray_OPS",
	 "CTS_OPS_2_multicam", "CTS_oga_OPS_2", "CTS_tan_spray_OPS_2", "milgp_h_opscore_01_CB",
	 "milgp_h_opscore_01_mc", "milgp_h_opscore_02_CB",
	 "milgp_h_opscore_02_mc", "milgp_h_opscore_04_CB",
	 "milgp_h_opscore_04_mc"] call FNC_AddItemRandom;
	["CTS_MC_Backpack_compact"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAR) //Uniforme Automatic Rifleman
	["CTS_FAPC_MG_Multicam", "CTS_CarrierRig_Gunner_Multicam", "CTS_LBT6094_MG_Multicam", "CTS_RAV_MG_Multicam",
	 "CTS_FAPC_MG_OGA", "CTS_CarrierRig_Gunner_OGA", "CTS_LBT6094_MG_OGA", "CTS_RAV_MG_OGA"] call FNC_AddItemRandom;
	["Mohawk_Core_cyalumen_tan", "Mohawk_Core_cyalumen_MTP", "OPS_CORE_F",
	 "OPS_CORE_strap_F", "CTS_OPS_Multicam", "CTS_oga_OPS", "CTS_Tan_spray_OPS",
	 "CTS_OPS_2_multicam", "CTS_oga_OPS_2", "CTS_tan_spray_OPS_2", "milgp_h_opscore_01_CB",
	 "milgp_h_opscore_01_mc", "milgp_h_opscore_02_CB",
	 "milgp_h_opscore_02_mc", "milgp_h_opscore_04_CB",
	 "milgp_h_opscore_04_mc"] call FNC_AddItemRandom;
	["CTS_MC_Backpack_compact"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAT) //Uniforme Rifleman AT
	["CTS_JPC", "CTS_JPC_2", "CTS_JPC_3", "CTS_Armatus_1"] call FNC_AddItemRandom;
	["Mohawk_Core_cyalumen_tan", "Mohawk_Core_cyalumen_MTP", "OPS_CORE_F",
	 "OPS_CORE_strap_F", "CTS_OPS_Multicam", "CTS_oga_OPS", "CTS_Tan_spray_OPS",
	 "CTS_OPS_2_multicam", "CTS_oga_OPS_2", "CTS_tan_spray_OPS_2", "milgp_h_opscore_01_CB",
	 "milgp_h_opscore_01_khk_hexagon", "milgp_h_opscore_01_mc", "milgp_h_opscore_02_CB",
	 "milgp_h_opscore_02_khk_hexagon", "milgp_h_opscore_02_mc", "milgp_h_opscore_04_CB",
	 "milgp_h_opscore_04_khk_hexagon", "milgp_h_opscore_04_mc"] call FNC_AddItemRandom;
	["CTS_MC_Backpack_compact"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformENG) //Uniforme Engineer
	["CTS_RAV_operator_Multicam", "CTS_FAPC_Breacher_Multicam", "CTS_FAPC_Operator_Multicam",
	 "CTS_FAPC_Breacher_OGA", "CTS_FAPC_Operator_OGA"] call FNC_AddItemRandom;
	["Mohawk_Core_cyalumen_tan", "Mohawk_Core_cyalumen_MTP", "OPS_CORE_F",
	 "OPS_CORE_strap_F", "CTS_OPS_Multicam", "CTS_oga_OPS", "CTS_Tan_spray_OPS",
	 "CTS_OPS_2_multicam", "CTS_oga_OPS_2", "CTS_tan_spray_OPS_2", "milgp_h_opscore_01_CB",
	 "milgp_h_opscore_01_khk_hexagon", "milgp_h_opscore_01_mc", "milgp_h_opscore_02_CB",
	 "milgp_h_opscore_02_khk_hexagon", "milgp_h_opscore_02_mc", "milgp_h_opscore_04_CB",
	 "milgp_h_opscore_04_khk_hexagon", "milgp_h_opscore_04_mc"] call FNC_AddItemRandom;
	["CTS_MC_Backpack_compact"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformMEDIC) //Uniforme Medic
	["6094_MEDIC_coy"] call FNC_AddItem;
	["Mohawk_Core_cyalumen_tan", "Mohawk_Core_cyalumen_MTP", "OPS_CORE_F",
	 "OPS_CORE_strap_F", "CTS_OPS_Multicam", "CTS_oga_OPS", "CTS_Tan_spray_OPS",
	 "CTS_OPS_2_multicam", "CTS_oga_OPS_2", "CTS_tan_spray_OPS_2", "milgp_h_opscore_01_CB",
	 "milgp_h_opscore_01_khk_hexagon", "milgp_h_opscore_01_mc", "milgp_h_opscore_02_CB",
	 "milgp_h_opscore_02_khk_hexagon", "milgp_h_opscore_02_mc", "milgp_h_opscore_04_CB",
	 "milgp_h_opscore_04_khk_hexagon", "milgp_h_opscore_04_mc"] call FNC_AddItemRandom;
	["CTS_MC_Kitbag_compact"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformCM) //Uniforme CM
	["mbss_com_od"] call FNC_AddItem;
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
	["ACE_MapTools",1,"vest"] call FNC_AddItem;
	["ACE_microDAGR",1,"vest"] call FNC_AddItem;
	["ItemcTabHCam",1,"vest"] call FNC_AddItem;
	["ACE_CableTie",2,"vest"] call FNC_AddItem;
	["ACE_Clacker",1,"vest"] call FNC_AddItem;
	["TF_ANPRC152"] call FNC_AddItem;
	
	if (sunOrMoon < 1) then { //Objetos básicos nocturnos
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
	["AMP_Breaching_Charge_Mag",1,"vest"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle) //Rifle principal
	["rhs_mag_30Rnd_556x45_Mk262_Stanag",6,"vest"] call FNC_AddItem; //Munición Principal
	["rhs_weap_hk416d145"] call FNC_AddItem; //Rifle
	["rhsusf_acc_compm4"] call FNC_AddItem; //Mira
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,"vest"] call FNC_AddItem; //Munición Secundaria
	
	if (sunOrMoon < 1) then { //Accesorios nocturnos para rifle
		["rhsusf_acc_anpeq15side_bk"] call FNC_AddItem; //Laser	
		["rhsusf_acc_nt4_black"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleGL) //Rifle lanzagranadas
	["rhs_mag_30Rnd_556x45_Mk262_Stanag",6,"vest"] call FNC_AddItem; //Munición Principal
	["1Rnd_HE_Grenade_shell",6,"vest"] call FNC_AddItem; //Granada Principal
	["rhs_weap_hk416d145_m320"] call FNC_AddItem; //Rifle
	["SMA_ELCAN_SPECTER_RDS_4z"] call FNC_AddItem; //Mira
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,"vest"] call FNC_AddItem; //Munición Secundaria
	["1Rnd_Smoke_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["1Rnd_SmokeRed_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	
	if (sunOrMoon < 1) then { //Accesorios nocturnos para rifle
		["rhsusf_acc_anpeq15side_bk"] call FNC_AddItem; //Laser	
		["rhsusf_acc_nt4_black"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleM) //Rifle Marksman
	["20Rnd_762x51_Mag",9,"vest"] call FNC_AddItem; //Munición Principal
	["srifle_DMR_03_F"] call FNC_AddItem; //Rifle
	["optic_AMS"] call FNC_AddItem; //Mira 
	["bipod_01_F_blk"] call FNC_AddItem; //Bípode
	
	if (sunOrMoon < 1) then { //Accesorios nocturnos para rifle
		["optic_nightstalker",1,"backpack"] call FNC_AddItem; //Mira Nocturna
		["acc_pointer_ir"] call FNC_AddItem; //Laser	
		["muzzle_snds_B"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleAR) //Rifle Automatic Rifleman
	["rhsusf_200rnd_556x45_M855_mixed_box",5,"vest"] call FNC_AddItem; //Munición Principal
	["rhs_weap_m249_pip_L"] call FNC_AddItem; //Rifle
	["rhsusf_acc_compm4"] call FNC_AddItem; //Mira 
	
	if (sunOrMoon < 1) then { //Accesorios nocturnos para rifle
		["rhsusf_acc_anpeq15side_bk"] call FNC_AddItem; //Laser	
		["rhsusf_acc_nt4_black"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(AT) //AT
	["MRAWS_HEAT_F",2,"backpack"] call FNC_AddItem; //Munición Principal
	["launch_MRAWS_sand_F"] call FNC_AddItem; //AT
	["MRAWS_HE_F",1,"backpack"] call FNC_AddItem; //Munición Secundaria
END_GROUP;

SET_GROUP(EXP) //Explosivos
	["DemoCharge_Remote_Mag",2,"backpack"] call FNC_AddItem; //M112
	["SatchelCharge_Remote_Mag",1,"backpack"] call FNC_AddItem; //M183
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
	ADD_GROUP(uniformM);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleM);
	ADD_GROUP(pistol);
	["ACE_Vector"] call FNC_AddItem; //Vector
	["ACE_Kestrel4500",1,"vest"] call FNC_AddItem; //Kestrel
	["ACE_ATragMX",1,"vest"] call FNC_AddItem; //AtragMX
	["ACE_RangeCard",1,"vest"] call FNC_AddItem; //Tablas
};

case (package + "AR"): { //Automatic Rifleman
	ADD_GROUP(uniform);
	ADD_GROUP(uniformAR);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleAR);
	ADD_GROUP(pistol);
};

case (package + "AT"): { //Medic
	ADD_GROUP(uniform);
	ADD_GROUP(uniformAT);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(AT);
};

case (package + "ENG"): { //Medic
	ADD_GROUP(uniform);
	ADD_GROUP(uniformENG);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(EXP);
	["MRH_HackingTool"] call FNC_AddItem; //Hacking Tool
	["ACE_wirecutter"] call FNC_AddItem; //Wirecutter
	["Toolkit",1, "backpack"] call FNC_AddItem; //Toolkit
};

case (package + "MEDIC"): { //Medic
	ADD_GROUP(uniform);
	ADD_GROUP(uniformMEDIC);
	ADD_GROUP(ifakMEDIC);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
};

case (package + "RFL"): { //Rifleman
	ADD_GROUP(uniform);
	ADD_GROUP(uniformENG);
	ADD_GROUP(rifle);
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
