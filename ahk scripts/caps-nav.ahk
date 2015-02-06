; Control key  ^
; Alt key      !
; Shift key    +
; Windows key  # 
; capslock     capslock
; some vi/vim like keys


;End key
capslock & 0::
GetKeyState, shiftState, shift, P
GetKeyState, spaceState, space, P
if spaceState = D
	send, +{End}		;space-caps-0 => shift-end : highlights from cursor to end of line
else
	if shiftState = D
		send, ^{End}	;shift-caps-0 => ctrl-end : goto end of document
	else
		send, {End}		;caps-0 => end : goto end of line
return

;Home key
capslock & 9::
GetKeyState, shiftState, shift, P
GetKeyState, spaceState, space, P
if spaceState = D
	send, +{Home}		;space-caps-9 => shift-home : highlights from cursor to beginning of line
else
	if shiftState = D
		send, ^{Home}	;shift-caps-9 => ctrl-home : goto beginning of document
	else
		send, {Home}	;caps-9 => home : goto beginning of line
return

;map to up arrow actions
capslock & k::
GetKeyState, shiftState, shift, P
GetKeyState, spaceState, space, P
if spaceState = D 
	send, ^{Up}			;space-caps-k => ctrl-up : scroll file up
else
	if shiftState = D
		send, +{Up}		;shift-caps-k => shift-up : highlights from cursor up to next line
	else
		send, {Up}		;caps-k => up : moves cursor up
return

;Map to down arrow actions
capslock & j::
GetKeyState, shiftState, shift, P
GetKeyState, spaceState, space, P
if spaceState = D 
	send, ^{Down}		;space-caps-j => ctrl-down : scroll file down
else
	if shiftState = D
		send, +{Down}	;shift-caps-j => shift=down : highlights from cursor down to next line
	else
		send, {Down}	;caps-j => down : moves cursor down
return

;Map to right arrow or ctrl right arrow
capslock & l::
GetKeyState, shiftState, shift, P
GetKeyState, spaceState, space, P
if spaceState = D 
	if shiftState = D
		send, +^{right} ;shift-space-caps-l => shift-ctrl-right : select to right by word
	else
		send, ^{right}	;space-caps-l => ctrl-right : move to right by word
else
	if shiftState = D
		send, +{right}  ;shift-caps-l => shift-right : selct to right by char
	else
		send, {right}  ;caps-l => right : move to right by char
return

;Map to left arrow or ctrl left arrow
capslock & h::
GetKeyState, shiftState, shift, P
GetKeyState, spaceState, space, P
if spaceState = D 
	if shiftState = D
		send, +^{left}	;shift-space-caps-h => shift-ctrl-left : select to left by word
	else
		send, ^{left}	;space-caps-h => ctrl-left : move to left by word
else
	if shiftState = D
		send, +{left}	;shift-caps-h => shift-left : select to left by char
	else
		send, {left}	;caps-h => left : move to left by char
return


capslock & x:: send, {delete}	;caps-x => delete 


capslock & c::
GetKeyState, state, space, P
if state = D 
	send !{F4}	;shift-caps-c => alt-F4 : close window
else
	send, ^{F4}	;caps-c => ctrl-F4 : close tab
return


capslock & t:: 
GetKeyState, state, space, P
if state = D 
	send ShiftAltTab	;shift-caps-t => shift-alt-tab
else
	send AltTab 		;caps-t => alt-tab
return



;Stop capslock & key from toggling capslock.
;capslock::
*capslock::
;+capslock::
capslock & down:: 
capslock & up::
capslock & right::
capslock & left::
capslock & appskey::
capslock & tab::
capslock & `::
capslock & 3::
capslock & 4:: 
capslock & 5::
capslock & 6::
capslock & 7::
capslock & 8::
capslock & -::
capslock & =::
capslock & y::
capslock & a::
capslock & `;::
capslock & \::
capslock & z::
capslock & v::
capslock & p:: 
capslock & ,::
capslock & .::
capslock & space::
capslock & enter::
capslock & w::
capslock & [::
capslock & ]::
capslock & #::

CapsLock::Return
+CapsLock::CapsLock