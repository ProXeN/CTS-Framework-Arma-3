/* PostInit function
 * This function walks through all playable/switchable units and assigns tasks and briefings to them
 */

/* Briefings:
 * FHQ_tt_MissionBriefing is a global variable that contains an array of briefing blocks.
 * Each block has a unique ID and a list of entries.
 * 
 * We process this by going through the briefing blocks first: For each entry, the units
 * referencing the briefing are collected in an array, and 
 */

if (!isServer) exitWith {};

FHQ_TTI_extraUnits = allMissionObjects "VirtualCurator_F"+allMissionObjects "VirtualSpectator_F";
FHQ_TTI_PostInitDone = true;

publicVariable "FHQ_TTI_extraUnits";
publicVariable "FHQ_TTI_PostInitDone";

private _briefings = missionNamespace getVariable ["FHQ_tt_MissionBriefing", []];
private _tasks = missionNamespace getVariable ["FHQ_tt_MissionTasks", []];
private _playable = (if (isMultiplayer) then {playableUnits+FHQ_TTI_extraUnits} else {switchableUnits});
private _i = 0;

for [{_i = 0}, {_i < count _briefings}, {_i = _i + 1}] do 
{
    private _briefing = _briefings select _i;
    private _id = _briefing select 0;
    private _entry = _briefing select 1;
    
    private _units = allMissionObjects "VirtualCurator_F";
    
	{
        if (tolower(_id) == tolower(_x getVariable ["FHQ_tt_UnitBriefing", ""])) then {
            _units = _units + [_x];
        };
    } foreach _playable;    
    
    if (count _units != 0) then {
    	([_units] + _entry) call FHQ_fnc_ttAddBriefing;
    };
};

for [{_i = 0}, {_i < count _tasks}, {_i = _i + 1}] do 
{
    private _task = _tasks select _i;
    private _id = _task select 0;
    private _entry = _task select 1;
    private _units = allMissionObjects "VirtualCurator_F";
    
    {
        if (_id in (_x getVariable ["FHQ_tt_UnitTasks", []])) then {
            _units = _units + [_x];
        };
    } foreach _playable;  
    
    if (count _units != 0) then {
		([_units] + [_entry]) call FHQ_fnc_ttAddTasks;
    };
};
