# SAP-Theme-Setter
A simple script designed to automatically set the SAP theme by modifying a specific registry key in the user's environment. This script operates silently and does not require administrative privileges.

## Features

- **Silent Execution:** The script runs without displaying any windows or prompts.
- **No Admin Required:** Modify registry settings in `HKEY_CURRENT_USER` without the need for elevated permissions.

## How It Works

The script changes the value of the `SelectedTheme` in the following registry key: HKEY_CURRENT_USER\SOFTWARE\SAP\General\Appearance\SelectedTheme
The value is set to `80`.

To apply a different theme, simply modify the script with your preferred value.

| Theme Name                               | Code  |
|------------------------------------------|-------|
| SAP Signature Theme                       | 1     |
| SAP Signature Theme High Contrast Black   | 2     |
| Corbu Theme                               | 64    |
| Classic Theme                             | 32    |
| Blue Crystal Theme                        | 128   |
| Belize Theme                              | 256   |
| Belize High Contrast Black                | 512   |
| Belize High Contrast White                | 1024  |
| Quartz High Contrast Black                | 4096  |
| Quartz High Contrast White                | 8192  |
| Quartz Dark Theme                         | 16384 |
| Quartz Theme                              | 20248 |




## Setup Instructions
1. Modify the Script (Optional)
```vbscript
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\SAP\General\Appearance\SelectedTheme", 128, "REG_DWORD"
```
2. Set Up Auto Start (Optional)
If you want the script to run automatically every time you log in, you need to place it in the Startup folder:

### Copy SetSapTheme.vbs to the Startup folder:
- Press Win + R, type shell:startup, and press Enter.
- Place SetRegistryValue.vbs in this folder.

This will ensure that the script runs each time you log in to your computer.
