$set noverify
$!
$ arch_name=f$getsyi("ARCH_NAME")
$!
$ mac/nodebug/object=FSPEC_PT.'arch_name'_OBJ -
			[.SRC]FSPEC_PT.'arch_name'_MAR
$!
$ cc/nodebug/object=VTFM.'arch_name'_OBJ [.SRC]VTFM.C
$!
$ link/nodebug/notraceback/executable=VTFM.'arch_name'_EXE -
			VTFM.'arch_name'_OBJ,FSPEC_PT.'arch_name'_OBJ
$!
$ delete *.'arch_name'_OBJ;*
$ purge VTFM.'arch_name'_EXE
$!
$exit
