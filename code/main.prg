
** Setup Aplication Enviroments
_screen.WindowState = 2
_screen.Caption = "Fichas Tagmar"
_screen.BackColor = RGB(32,32,32)
_screen.Icon = 'imgs\icon.ico'
SET PATH TO code ; data ; form ; menu ; report ; imgs 
ON SHUTDOWN DO cleanup in main.prg
SET TALK OFF 
SET DELETED ON 
SET EXCLUSIVE OFF
SET DATE TO DMY
SET STATUS BAR OFF
SET REPORTBEHAVIOR 80

CLEAR 

** Setup Menus

DO mainMenu.mpr
DO FORM listPers
** Call Login Form

** Start READ EVENT
READ EVENTS

** Clean Up

ON SHUTDOWN 

PROCEDURE cleanup
	CLEAR EVENTS
	FOR x = 1 TO _screen.FormCount 
		_screen.Forms[_screen.FormCount].Release()
	NEXT x	
	_screen.BackColor = RGB(125,125,125)
	SET SYSMENU TO DEFAULT 
	*CLOSE DATABASES
	*CLOSE ALL
	*CLEAR ALL 
ENDPROC 
