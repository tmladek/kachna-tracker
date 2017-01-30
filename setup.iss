; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Kachna Tracker"
#define MyAppVersion "4.0.1"
#define MyAppPublisher "Tom� Ml�dek"
#define MyAppURL "https://github.com/fgu-cas/kachna-tracker"
#define MyAppExeName "kachna-tracker.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CD12AE24-8588-4D62-898B-C2F06E326C00}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=build
OutputBaseFilename=kachna-tracker_setup
Compression=lzma2
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "build\x64\Release\kachna-tracker.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "tracker.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\opencv\build\install\x64\vc14\bin\opencv_core2413.dll"; DestDir: "{app}"; 
Source: "..\opencv\build\install\x64\vc14\bin\opencv_features2d2413.dll"; DestDir: "{app}"; 
Source: "..\opencv\build\install\x64\vc14\bin\opencv_highgui2413.dll"; DestDir: "{app}"; 
Source: "..\opencv\build\install\x64\vc14\bin\opencv_imgproc2413.dll"; DestDir: "{app}";
Source: "..\opencv\build\install\x64\vc14\bin\opencv_flann2413.dll"; DestDir: "{app}";
Source: "..\cbw64.dll"; DestDir: "{app}"; 
Source: "{drive:{src}}\Qt\5.7\msvc2015_64\bin\Qt5Core.dll"; DestDir: "{app}";Flags: external;
Source: "{drive:{src}}\Qt\5.7\msvc2015_64\bin\Qt5Gui.dll"; DestDir: "{app}";Flags: external; 
Source: "{drive:{src}}\Qt\5.7\msvc2015_64\bin\Qt5Widgets.dll"; DestDir: "{app}";Flags: external;
Source: "{drive:{src}}\Qt\5.7\msvc2015_64\bin\Qt5SerialPort.dll"; DestDir: "{app}";Flags: external;
Source: "{drive:{src}}\Qt\5.7\msvc2015_64\bin\Qt5Test.dll"; DestDir: "{app}";Flags: external;
Source: "{drive:{src}}\Qt\5.7\msvc2015_64\plugins\platforms\qwindows.dll"; DestDir: "{app}\platforms";Flags: external;
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\tracker.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon; IconFilename: "{app}\tracker.ico"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

