Func kFileselect()
  msgbox(0+262144,"","Please select your Wurm Unlimited keybinds file")
    Local Const $kMessage = "Please select hotkey path"

    ; selection du path pour le fichier de hotkey
    $hotkeypath = FileOpenDialog($kMessage, @WindowsDir & "\", "Images (*.txt)")
    if @error Then
      msgbox(1+262144,"","No file selected")
      $hotkeypathset = false
    Else
      $hotkeypathset = true
    Endif
    pathsave()
 EndFunc

Func pathsave()
  if ($hotkeypathset = true) Then
    Local Const $sFilePath = @ScriptDir & "\save\hotkeypath.txt"

	  ; creation du fichier save
	  _FileCreate($sFilePath)

	  ; ouverture du fichier pour l'ecriture
	  Local $hFileOpen = FileOpen($sFilePath,1)

    ; Ecriture du path dans le fichier
    FileWrite($hFileOpen,$hotkeypath)

    ; fermeture du fichier
    FileClose($hFileOpen)
  Else
    Local $whatdo = msgbox(5+262144,"Well this is unfortunate","The path you selected appears to be empty (or you didn't choose the file at all). This is required for Bob to work properly, you can either retry to set the path or cancel to terminate Bob.")
    Switch ($whatdo)
      Case 2
        Exit(0)
      Case 4
        hotkeypathsel()
    Endswitch
  Endif

EndFunc

Func hotkeypathsel()
msgbox(1,"","Please select your Wurm Unlimited installation folder")
    Local Const $fMessage = "Select a folder"
      Local $FileSelectFolder = FileSelectFolder($fMessage,"")
        if @error Then
          msgbox(1+262144,"","No folder selected")
        Endif
    Local $kFileExists = FileExists ($FileSelectFolder & "\WurmLauncher\PlayerFiles\configs\default\autorun.txt")
      if $kFileExists = 0 Then
        msgbox(1,""," There appears to be a problem, I couldn't retrieve your file, I will now ask you to select your keybinds file directly")
        $hotkeypathset = false
        kFileselect()
      Else
        $hotkeypath = ($FileSelectFolder & "\WurmLauncher\PlayerFiles\configs\default\autorun.txt")
        $hotkeypathset = true
        pathsave()
      EndIf
EndFunc
