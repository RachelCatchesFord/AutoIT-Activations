FileChangeDir("c:\windows\system32")
RunWait(@ComSpec & " /c "&"cscript slmgr.vbs /ipk WINDOWSKEYGOESHERE","",@SW_HIDE)
RunWait(@ComSpec & " /c "&"cscript slmgr.vbs /ato","",@SW_HIDE)

;FileChangeDir("c:\program files (x86)\Microsoft Office\Office14") ; change location based on Office version
;RunWait(@ComSpec & " /c "&"cscript ospp.vbs /inpkey:OFFICEKEYGOESHERE","",@SW_HIDE)
;RunWait(@ComSpec & " /c "&"cscript ospp.vbs /act","",@SW_HIDE)
;RunWait(@ComSpec & " /c "&"cscript slmgr.vbs /dli","",@SW_HIDE)

RunWait(@ComSpec & " /c "&"cd \","",@SW_HIDE)
;RunWait(@ComSpec & " /c "&"@echo YOU ARE ABOUT TO CREATE A RESTORE POINT! THE MACHINE WILL RESTART AFTERWARDS.","",@SW_SHOW)
;RunWait(@ComSpec & " /c "&"pause","",@SW_SHOW)
RunWait(@ComSpec & " /c "&"wmic /namespace:\\root\default path SystemRestore call Disable System","",@SW_HIDE)
RunWait(@ComSpec & " /c "&"wmic /namespace:\\root\default path SystemRestore call Disable (Missing)","",@SW_HIDE)
RunWait(@ComSpec & " /c "&"wmic /namespace:\\root\default path SystemRestore call Enable (C:)","",@SW_HIDE)
RunWait(@ComSpec & " /c "&"wscript.exe c:\ActivationsWithRestore\CreateRestore.vbs","",@SW_HIDE)
RunWait(@ComSpec & " /c "&"shutdown -r -t 00","",@SW_HIDE)