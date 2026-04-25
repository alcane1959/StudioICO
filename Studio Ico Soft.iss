#define MyAppName "Studio ICO"
#define MyAppVersion "1.5"
#define MyAppPublisher "Center Soft, Inc."

[Setup]
AppId={{E913D274-B46A-4454-9337-7DF2FEDFA355}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf32}\{#MyAppName}
PrivilegesRequired=admin
DisableProgramGroupPage=yes
OutputDir=C:\Users\alcan\OneDrive\Documentos\Inno Setup Output
OutputBaseFilename=Studio_Ico_Install
SetupIconFile=C:\MeusProjetos\StudioICO\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
DisableFinishedPage=no
UsedUserAreasWarning=no

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\MeusProjetos\StudioICO\*"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Ícone no Menu Iniciar
Name: "{autoprograms}\{#MyAppName}"; \
    Filename: "{commonpf}\Microsoft\Edge\Application\msedge.exe"; \
    Parameters: "--app=""file:///{app}/Studio_ICO.html"" --start-maximized --user-data-dir=""{localappdata}\{#MyAppName}\Data"""; \
    IconFilename: "{app}\icon.ico"

; Ícone na Área de Trabalho
Name: "{autodesktop}\{#MyAppName}"; \
    Filename: "{commonpf}\Microsoft\Edge\Application\msedge.exe"; \
    Parameters: "--app=""file:///{app}/Studio_ICO.html"" --start-maximized --user-data-dir=""{localappdata}\{#MyAppName}\Data"""; \
    IconFilename: "{app}\icon.ico"; \
    Tasks: desktopicon

[Run]
Filename: "{commonpf}\Microsoft\Edge\Application\msedge.exe"; \
    Parameters: "--app=""file:///{app}/Studio_ICO.html"" --start-maximized --user-data-dir=""{localappdata}\{#MyAppName}\Data"""; \
    Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; \
    Flags: nowait postinstall skipifsilent