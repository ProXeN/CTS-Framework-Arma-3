#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
This is an example:<br/>
<br/>
So is this.
ENDTAB;

NEWTAB("A. Enemy Forces:")
//Text goes here
ENDTAB;

NEWTAB("B. Friendly Forces:")
//Text goes here
ENDTAB;

NEWTAB("II. Mission:")
//Text goes here
ENDTAB;

NEWTAB("III. Execution:")
//Text goes here
ENDTAB;

NEWTAB("IV. Service Support:")
//Text goes here
ENDTAB;

NEWTAB("V. Command & Signal:")
//Text goes here
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
Olsen Framework V3.0
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();