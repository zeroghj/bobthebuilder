Func hotkeypathsel()
  msgbox(1,"","Veuillez selectionner le fichier de sauvegarde des keybinds de Wurm Online")
    Local Const $sMessage = "Please select hotkey path"

    ; selection du path pour le fichier de hotkey
    $hotkeypath = FileOpenDialog($sMessage, @WindowsDir & "\", "Images (*.txt)")
	pathsave()
 EndFunc



 Func pathsave()
    Local Const $sFilePath = @ScriptDir & "\save\hotkeypath.txt"

	  ; creation du fichier save
	  _FileCreate($sFilePath)

	  ; ouverture du fichier pour l'ecriture
	  Local $hFileOpen = FileOpen($sFilePath,1)

    ; Ecriture du path dans le fichier
    FileWrite($hFileOpen,$hotkeypath)

    ; fermeture du fichier
    FileClose($hFileOpen)

EndFunc
