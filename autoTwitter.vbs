option explicit 

' CREATE WSH-SHELL OBJECT
dim objWsh, i, j
set objWsh = createObject("wscript.shell")

' const BROWSER = "chrome"
' const URL = "https://twitter.com/home"
' objWsh.run BROWSER & " " & URL

objWsh.AppActivate "Google Chrome"
WScript.Sleep 1000

function tweet(){
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
}

tweet()

' for j = 1 to 24
'     tweet()
'     WScript.Sleep 3600000
' next

Set objWsh = Nothing