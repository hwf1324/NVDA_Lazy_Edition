[Setup]
AppName=NVDA ���ûָ�����
AppVersion=1.0
VersionInfoVersion=1.0
AppVerName=NVDA ���ûָ�����
AppPublisher=NVDACN
AppPublisherURL=https://www.nvdacn.com/
AppSupportURL=https://github.com/nvdacn/NVDA_Lazy_Edition
AppUpdatesURL=https://github.com/nvdacn/NVDA_Lazy_Edition/releases
DefaultDirName={userappdata}\NVDA
AllowNoIcons=yes
OutputDir=Output
OutputBaseFilename=NVDA ���ûָ�����
Compression=lzma
DisableDirPage=Yes
DisableProgramGroupPage=yes
AppendDefaultDirName=No
DirExistsWarning=No
Uninstallable=No
SetupIconFile=Temp\NVDA\images\nvda.ico
ArchitecturesInstallIn64BitMode=x64 ia64 arm64
AllowCancelDuringInstall=No
AlwaysShowComponentsList=No
ShowComponentSizes=No
ShowTasksTreeLines=Yes
RestartIfNeededByRun=no
ShowLanguageDialog=No

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[code]
procedure RestoreNVDAProfile();
var
  ResultCode: Integer;
begin
  if MsgBox('�����򽫻ָ����� NVDA ���˰氲װ���������ݵ����õ� NVDA �����ļ��У�����ԭ�Լ������İ��������Ƶ��Զ������á�' #13#13 '���ݵ������ļ��ɹ��ָ��󽫻ᱻɾ����' #13#13 '�ָ��������������� NVDA����Ҫ���ڻָ���', mbConfirmation, MB_YESNO)= IDYES then
  begin
    ShellExec('', ExpandConstant('{commonpf32}\NVDA\nvda.exe'), '-q', '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
    DelTree(ExpandConstant('{userappdata}\NVDA'), True, True, True);
    ExtractTemporaryFile(ExtractFileName(ExpandConstant('{tmp}\7z.dll')));
    ExtractTemporaryFile(ExtractFileName(ExpandConstant('{tmp}\7z.exe')));
    Exec(ExpandConstant('{tmp}\7z.exe'), 'x "'+ ExpandConstant('{userdocs}\NVDABackup\NVDABackup.zip')+'" -aoa -o"'+ ExpandConstant('{userappdata}\NVDA')+'"', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
    DelTree(ExpandConstant('{userdocs}\NVDABackup'), True, True, True);
    DeleteIniSection('globalPlugins.DragAndDrop.GlobalPlugin', ExpandConstant('{commonpf32}\NVDA\locale\zh_CN\gestures.ini'));
    ShellExec('', ExpandConstant('{commonpf32}\NVDA\nvda.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
    MsgBox('��ϲ�������ɹ�!', mbInformation, MB_OK);
  end;
end;
function InitializeSetup: Boolean;
begin
  if FileExists(ExpandConstant('{userdocs}\NVDABackup\NVDABackup.zip')) = True then
  begin
    RestoreNVDAProfile();
  end else begin
    MsgBox('δ��⵽���ñ����ļ����޷��ָ�!', mbCriticalError, MB_OK)
  end;
  Result := False;
end;

[Files]
Source: "Tools\7Zip\7z.dll"; DestDir: "{tmp}"; Flags: deleteafterinstall ignoreversion
Source: "Tools\7Zip\7z.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall ignoreversion
