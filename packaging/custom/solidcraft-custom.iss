; Instalador da compilacao modificada do SolidCraft do fork do usuario.
; Mantem nome, executavel e icone originais.
; AppId diferente do produto oficial para nao substitui-lo por MSI.
#define MyAppName "SolidCraft"
#define MyAppVersion "0.16.1"

[Setup]
AppId={{7DF29159-D8A0-44DC-BEA0-314AA930CC09}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName=SolidCraft {#MyAppVersion} (versao personalizada)
AppPublisher=SolidCraft contributors (versao modificada)
DefaultDirName={localappdata}\Programs\SolidCraft-Personalizado
DefaultGroupName=SolidCraft
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
OutputDir=..\..\dist
OutputBaseFilename=SolidCraft-Windows-Instalador
Compression=lzma2
SolidCompression=yes
SetupIconFile=..\..\assets\icons\app\windows\exports\solidcraft.ico
UninstallDisplayIcon={app}\solidcraft.exe
WizardStyle=modern
CloseApplications=yes

[Files]
Source: "..\..\target\release\solidcraft.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\LICENSE-MIT"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\LICENSE-APACHE"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\NOTICE"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\THIRD-PARTY-LICENSES.txt"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\SolidCraft"; Filename: "{app}\solidcraft.exe"; WorkingDir: "{app}"; IconFilename: "{app}\solidcraft.exe"
Name: "{autodesktop}\SolidCraft"; Filename: "{app}\solidcraft.exe"; WorkingDir: "{app}"; IconFilename: "{app}\solidcraft.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Criar atalho do SolidCraft na area de trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\solidcraft.exe"; Description: "Abrir SolidCraft"; Flags: nowait postinstall skipifsilent
