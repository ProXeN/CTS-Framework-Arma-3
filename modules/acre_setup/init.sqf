["ACRE setup", "Module for all ACRE settings.", "BlackHawk"] call FNC_RegisterModule;

#include "settings.sqf"

if (isServer && FW_enable_channel_names) then {
    {
        _x params ["_cn_radioName", "_cn_channel", "_cn_label", "_cn_name"];
        [_cn_radioName, FW_Presets select _forEachIndex, _cn_channel, _cn_label, _cn_name] remoteExecCall ["acre_api_fnc_setPresetChannelField", 0, true];
    } foreach FW_ChannelNames;
};

if(!isDedicated) then {
	[] spawn {
		waitUntil { !isNull acre_player };

		private _side = side player;
        private _customSide = (player getVariable ["FW_CustomScramble", nil]);

        if (isNil "_customSide") then {
            _side = _customSide;
        };
        
        private _side_i = 3;
        switch (_side) do { 
            case west: { 
                _side_i = 0;
            };
            case east: { 
                _side_i = 1;
            };
            case independent: { 
                _side_i = 2;
            };
            default { 
                _side_i = 3;
            };
        };
        
        if (FW_enable_scramble) then {
            private _preset = FW_Presets select _side_i;
            
            ["ACRE_PRC343", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_PRC77", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_PRC117F", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_PRC152", _preset ] call acre_api_fnc_setPreset;
            ["ACRE_PRC148", _preset ] call acre_api_fnc_setPreset;
        };

        if (FW_enable_babel) then {
            (FW_LanguagesBabel select _side_i) call acre_api_fnc_babelSetSpokenLanguages;
        
            private _languages = player getVariable ["FW_Languages", []];

            if (count _languages > 0) then {
                
                _languages call acre_api_fnc_babelSetSpokenLanguages;
                
            };
        };

        private _channels = player getVariable ["FW_Channels", []];

        private _radioID;
        {
            _x params [
                ["_radio", ""],
                ["_channel", 1],
                ["_spatial", "CENTER"]
            ];
            _radioID = [_radio] call acre_api_fnc_getRadioByType;
            
            if (!isNil "_radioID") then {
                [_radioID, _channel] call acre_api_fnc_setRadioChannel;
                [_radioID, _spatial] call acre_api_fnc_setRadioSpatial;
            };
        } foreach _channels;
		
	};
    
};