dim fso
set fso = createObject("Scripting.FileSystemObject")
fspath = fso.getParentFolderName(WScript.ScriptFullName) 
Set objShell = CreateObject("WScript.Shell")
Set objExec = objShell.Exec("powershell -nologo  -command tree " & fspath & " | out-file " & fspath & "\tree.txt ")
Set objExec = objShell.Exec("powershell -nologo  -command tree /f " & fspath & " | out-file " & fspath & "\tree_file.txt")
objExec.StdIn.Close()
WScript.Echo objExec.StdOut.Readall()
set objExec = Nothing
set objShell = Nothing
