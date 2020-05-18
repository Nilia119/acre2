#include "script_component.hpp"
/*
 * Author: ACRE2Team
 * Retrieves the game object of a player from a VOIP ID.
 *
 * Arguments:
 * 0: VOIP ID <STRING>
 *
 * Return Value:
 * Player <OBJECT>
 *
 * Example:
 * ["1"] call acre_sys_core_fnc_voipIdToPlayer
 *
 * Public: No
 */

params ["_id"];

if (IS_STRING(_id)) then {
    _id = parseNumber _id;
};

private _return = nil;

{
    if ((_x select 0) == _id) exitWith { _return = _x select 1; };
} forEach (GVAR(playerList));

_return;
