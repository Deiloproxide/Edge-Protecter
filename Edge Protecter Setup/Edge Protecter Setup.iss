;汉化:MonKeyDu 
;由 Inno Setup 脚本向导 生成的脚本,有关创建 INNO SETUP 脚本文件的详细信息，请参阅文档！!

#define MyAppName "Edge Protecter"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Deiloproxide"
#define MyAppExeName "Edge Protecter.exe"
#define MyAppAssocName "Nahida Data Assets - 纳西妲资源库"
#define MyAppAssocExt ".nda"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
;注意:AppId 的值唯一标识此应用程序。请勿在安装程序中对其他应用程序使用相同的 AppId 值。
;（若要生成新的 GUID，请单击“工具”|”在 IDE 中生成 GUID）。
AppId={{C39AF23D-8E6F-4C0B-99EA-8188F20F72D2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
DisableWelcomePage=no
DisableReadypage=yes
;下行注释，指定安装程序无法运行，除 Arm 上的 x64 和 Windows 11 之外的任何平台上.
ArchitecturesAllowed=x64compatible
;WizardImageFile=侧图186x356.bmp
;WizardSmallImageFile=顶图165x54.bmp,
;WizardSmallImageFile=顶图54x54.bmp
;下行注释，强制安装程序在 64 位系统上，但不强制以 64 位模式运行.
ArchitecturesInstallIn64BitMode=x64compatible
ChangesAssociations=yes
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=..\LICENSE.txt
;取消下行前面 ; 符号，在非管理安装模式下运行（仅为当前用户安装）.
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=..\Edge Protecter Setup
OutputBaseFilename=Edge Protecter Setup
SetupIconFile=Na.ico
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "chs"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "Edge Protecter\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "Edge Protecter\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[code]
procedure InitializeWizard();
begin
WizardForm.LICENSEACCEPTEDRADIO.checked:= true;
end;

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

