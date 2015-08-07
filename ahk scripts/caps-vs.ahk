; Control key  ^
; Alt key      !
; Shift key    +
; Windows key  # 
; capslock     capslock
;vs & resharper shortcuts

;###########################
;##  resharper shortcuts  ##
;###########################

capslock & r:: send, ^+r 	;caps-r => ctrl-shift-r : opens 'Refactor This' menu

capslock & d:: send, !``d 	;caps-d => alt-`-d : go to 'Declaration' on Resharper's "Navigate to" menu


capslock & b:: send, ^+rb	;caps-b => ctrl-shift-r-b : go to 'Pull Members Up' on Resharper's "Refactor this" menu


capslock & i::
GetKeyState, spaceState, space, P
if spaceState = D 
	send, +!{PgDn} 	;space-caps-i => shift-alt-pgdn : Resharper's "Goto Next Error In Solution"
else
	send, !``i 		;caps-i => alt-`-i : go to 'Implementation' on Resharper's "Navigate to" menu
return


capslock & u::
GetKeyState, spaceState, space, P
if spaceState = D 
	send, +!{PgUp}	;space-caps-u => shift-alt-pgup : Resharper's "Goto Previous Error In Solution"
else 
	send, !``u 		;caps-u => alt-`-u : go to 'Usages of Symbol' on Resharper's "Navigate to" menu
return


capslock & n::
GetKeyState, spaceState, space, P
if spaceState = D
	send, !rus	;space-caps-n => alt-r-u-s : go to 'Create New Session' on 'Resharper->Unit Tests' menu
else
	send, !rur 	;caps-n => alt-r-u-r : go to 'Run Unit Tests' on 'Resharper->Unit Tests' menu
return

;##############################	
;##  visual studio shortcuts ##
;##############################

capslock & s:: send ^eu	;caps-s => ctrl-e-u : Visual Studio's Surround With


capslock & v:: send !bc	;caps-v => alt-b-c : Visual Studio's Clean Solution


capslock & e:: send ^m^e 	;caps-e => ctrl-m-ctrl-e : Visual Studio's Expand Current Region


;move window to different monitor
capslock & m::
GetKeyState, spaceState, space, P
if spaceState = D
	send #+{left}	;space-caps-m => windows-shift-left : move active window to next monitor on left
else
	send #+{right}	;caps-m => windows-shift-right : move active window to next monitor on right
return

