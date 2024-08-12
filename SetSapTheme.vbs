Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\SAP\General\Appearance\SelectedTheme", 128, "REG_DWORD"
