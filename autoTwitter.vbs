option explicit 

' CREATE WSH-SHELL OBJECT
dim objWsh, i
set objWsh = createObject("wscript.shell")

objWsh.AppActivate "Google Chrome"
WScript.Sleep 1000

for i = 1 to 10
    objWsh.sendkeys("{TAB}")
    WScript.Sleep 500
next

objWsh.sendkeys("{ENTER}")
WScript.Sleep 500

objWsh.sendkeys("TEST.")
WScript.Sleep 1000

objWsh.sendkeys("{ENTER}")
WScript.Sleep 500

objWsh.sendkeys("^{ENTER}")
WScript.Sleep 500

Set objWsh = Nothing