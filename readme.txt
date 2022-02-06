Copyright (c) 1991-2005 VTfm.  All rights reserved.

		Norton Commander Style
	     Video Terminals File Manager
		     VMS-version

Author: Vladimir K. Vershinin, Moscow, Russia
E-mail: vershinin-vk@tochka.ru

HISTORY:

1991, July - First release 1.0 with name NCvtf.

	- developed on VAXC v3.0;
	- supports VT-terminal modes with only
	  24x80 rows/columns;
	- uses EDT$EDIT routine for view and edit;
	- works only on VAXVMS.
 .
 .
 .

2004, August - Release 2.0-0 with name VTfm.

	- developed on DECC v6.0;
	- redesigned and reduced source code;
	- supports VT-terminal modes with more
	  then 24x80 rows/columns;
	- uses TPU$TPU routine for view and edit;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- does not accept node specification in
	  GotoDir, Edit, Copy and RenMov operations
	  (use VTfm command line instead in this cases);
	- does not translate disk device logicals in
	  RenMov operation, so if, for example,
	  logicals XXX: and YYY: point to the SAME
	  physical disk device VTfm RenMov files
	  via copy;
	- does not Copy directory files with their
	  content (make destination directory first
	  and then Copy source directory content);
	- does not RenMov directory files with their
	  content to ANOTHER logical or physical disk
	  device (make destination directory first
	  and then RenMov source directory content);
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2004, October - Release 2.2-6

	- Copy, RenMov and Delete DIRECTORY TREES;
	- supports LOGICALs when GotoDir, Copy or
	  RenMov (SYS$LOGIN, SYS$MANAGER, SYS$COMMON,
	  SYS$COMMON:[SYSMGR] e.t.c.);
	- recognizes the same disk device with DIFFERENT
	  logical names when RenMov, so if, for example,
	  logicals XXX: and YYY: point to the SAME
	  physical disk VTfm RenMov files WITHOUT copy;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not support EXTENDED FILE SPECIFICATIONS
	  on ODS-5 volumes;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2004, October - Release 2.2-8

	- some changes and additions of function keys
	  when input and edit lines (see also 19FKey):
		^P - extract previous command line
		     (instead of ^E),
		^H - cursor to beg of line,
		^E - cursor to end of line,
		^U - delete chars from beg of line
		     to current position;
	- some minor bug fixes;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not support EXTENDED FILE SPECIFICATIONS
	  on ODS-5 volumes;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2004, November - Release 2.2-9

	- speed up Copy operation more than 3 times
	  (127 blocks size of I/O buffer);
	- change ^P function key (extract Previous
	  command line) to ^V (extract preVious
	  command line) for use VTfm on Console
	  terminal;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not support EXTENDED FILE SPECIFICATIONS
	  on ODS-5 volumes;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2004, November - Release 2.2-A

	- supports possibility of using F1-F10 keys
	  on some keyboards instead of default F11-F20
	  keys (use "f1" argument when run VTfm);
	- some bug fixes;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not support EXTENDED FILE SPECIFICATIONS
	  on ODS-5 volumes;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2005, January - Release 2.3-2

	- first release with support of EXTENDED FILE
	  SPECIFICATIONS on ODS-5 volumes;
	- command line is up to 4K chars;
	- some bug fixes;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2005, March - Release 2.3-4

	- fix bug concerning incorrect display of file
	  size in bytes when it more than 4GB;
	- some bug fixes concerning long file names;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2005, March - Release 2.3-7

	- improved overall performance;
	- dynamic memory allocation for directory panels
	  and command strings;
	- more accurate code concerning the circumflex
	  symbol (^) in file and directory specifications
	  (in particular concerning the Unicode chars);
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2005, March - Release 2.3-8

	- environment file SYS$LOGIN:VTFM$ENVIRONMENT.DAT added
	  for storing the following information when exit VTfm:
	   - directory panels orientation (left/right or top/bottom);
	   - current directory panel (left/right/top/bottom);
	   - file size measure (blocks or bytes);
	   - disk device and directory specification (for each panel);
	   - filtering wildcard mask (for each panel);
	   - selection wildcard mask (for each panel);
	   - current file bar position (for each panel);
	- some minor bug fixes;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2005, April - Release 2.3-9

	- some more enhancements concerning Find, Select
	  and UnSelect functions:
	   - possibility of using zero or nigative version numbers
	     in wildcard masks (such as *.*;0 or *.*;-2 e.t.c.);
	   - VTfm shows now the number of selected files
	     in file statistics line;
	   - VTfm switch OFF the Select (Sel) key when ALL
	     files in diectory panel are selected;
	   - VTfm switch OFF the Unselect (Rem) key when
	     there are NO selected files in directory panel;
	- some minor bug fixes;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

2005, April - Release 2.3-A

	- fix some bug concerning modification of Select
	  function in VTfm release 2.3-9;
	- works on VAX, Alpha and IA64 with OpenVMS.

Currently known restrictions:

	- supports only LOCAL or CLUSTERWIDE disk
	  devices when GotoDir, Copy, RenMov or Delete
	  (if need to use NODE specification use VTfm
	  command line);
	- does not support "*", "%", "?", "[.", ".]",
	  "[-", ".-" and "..." in DIRECTORY specification
	  when GotoDir, Copy or RenMov;
	- does not open any archive files (use
	  correspondent utility in VTfm command line).

BUILDING EXECUTABLE:

For building VTfm executable unzip VTFM.ZIP first in some
directory and then use the following DCL commands:

	$ set default [.vtfm]
	$ @vtfm.com

The result of this operation is VTFM.VAX_EXE for VAX,
VTFM.ALPHA_EXE for ALPHA or VTFM.IA64_EXE for IA64.

After that you can define, for example, symbol vtfm:

	$ vtfm :== $dev:[dir]vtfm.alpha_exe

and use the following command to run your VTfm:

	$ vtfm

VTfm works with Digital VT-series terminals or terminal
emulators which can emulate such terminals (PowerTerm,
for example).

OPERATION KEYS:

The default VTfm operation keys for Digital VT-series
terminals are F11-F20:

	11 GotoVMS - <F11>,
	12 GotoDir - <F12>,
	13 View    - <F13>,
	14 Edit    - <F14>,
	15 Copy    - <Help>,
	16 RenMov  - <Do>,
	17 MkDir   - <F17>,
	18 Delete  - <F18>,
	19 FKey    - <F19>,
	20 Quit    - <F20>.

See correspondent Keyboard Map when use terminal emulator.

It is possible to use F1-F10 keys on some keyboards instead
of default F11-F20 keys if run VTfm with "f1" argument:

	$ vtfm f1

