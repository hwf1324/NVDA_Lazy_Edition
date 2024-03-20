[Setup]
;�޸������еȺź����ֵΪNVDA��װ�����Ӧ�İ汾��
VersionInfoVersion=2023.3.0.29780
AppVersion=2023.3
AppName=NVDA ���˰�
AppVerName=NVDA ���˰�
DefaultDirName={userappdata}\NVDA
AllowNoIcons=yes
OutputDir=.
OutputBaseFilename=NVDA ���˰�
Compression=lzma
DisableDirPage=Yes
DisableProgramGroupPage=yes
AppendDefaultDirName=No
DirExistsWarning=No
Uninstallable=No
LicenseFile=Application\documentation\copying.txt
SetupIconFile=Application\images\nvda.ico
InfoBeforeFile=Readme.txt
MinVersion=6.03
ArchitecturesInstallIn64BitMode=x64 ia64 arm64
AllowCancelDuringInstall=No
AlwaysShowComponentsList=No
ShowComponentSizes=No
ShowTasksTreeLines=Yes
RestartIfNeededByRun=no
ShowLanguageDialog=No

[Languages]
Name: "english"; MessagesFile: "compiler:Languages\English.isl"
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Messages]
ReadyLabel2a=��������װ���Կ�ʼ��װ���̡�
FinishedHeadingLabel=[name] ��װ����ɣ����ֶ����� NVDA �ѿ�ʼʹ��

[Types]
Name: "default"; Description: "Ĭ�ϰ�װ"
Name: "compact"; Description: "��С��װ"
Name: Full; Description: "������װ"
Name: "custom"; Description: "�Զ��尲װ"; Flags: iscustom

[Components]
Name: "Settings"; Types: Full default compact custom; Description: "�޸Ĳ��� NVDA ����"; Check: not FileExists(ExpandConstant('{userappdata}\NVDA\nvda.ini'))
Name: "Settings"; Description: "�޸Ĳ��� NVDA ����"; Check: FileExists(ExpandConstant('{userappdata}\NVDA\nvda.ini'))
Name: "Voices"; Types: Full default custom; Description: "��������";
Name: "Voices\VVTTS"; Types: Full default custom; Description: "VVTTS ��������"
Name: "Voices\VVTTS\IBMTTS"; Types: Full default custom; Description: "IBMTTS �������棨VVTTS ����棩"
Name: "Voices\AiSound5"; Types: Full custom; Description: "AiSound5 ��������"
Name: "Voices\WorldVoice"; Types: Full default custom; Description: "WorldVoice ��Vocalizer Expressive ������"
Name: "Addons"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "��ѡ���"
Name: "Addons\addonsHelp"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "����ĵ�"
Name: "Addons\addonUpdater"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "���������"
Name: "Addons\AudioControl"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "��Ƶ����"; OnlyBelowVersion: 10.0
Name: "Addons\audioManager"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "��Ƶ������"; MinVersion: 10.0
Name: "Addons\baiduTranslation"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "�ٶȷ���"
Name: "Addons\clipboardEnhancement"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "�������ʶ���ǿ"
Name: "Addons\DragAndDrop"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "DragAndDrop �������Ϸţ�"
Name: "Addons\enhancedTouchGestures"; Types: Full custom; Flags: disablenouninstallwarning; Description: "����������ǿ"
Name: "Addons\goldenCursor"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "��ɫ���"
Name: "Addons\imeExpressive"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "�������뷨֧��"
Name: "Addons\MSEdgeDiscardAnnouncements"; Types: Full custom; Flags: disablenouninstallwarning; Description: "��ֹ Microsoft Edge UIA ֪ͨ"
Name: "Addons\NumberProcessing"; Types: Full custom; Flags: disablenouninstallwarning; Description: "���ִ���"
Name: "Addons\NVBox"; Types: Full custom; Flags: disablenouninstallwarning; Description: "NV����"
Name: "Addons\NVDACNMirror"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "NVDA �����������¾���Դ"
Name: "Addons\QQEnhancement"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "PC QQ��ǿ"
Name: "Addons\QuickAdjustment"; Types: Full custom; Flags: disablenouninstallwarning; Description: "���ٵ���"
Name: "Addons\remote"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "Զ��֧��"
Name: "Addons\resourceMonitor"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "��Դ�����"
Name: "Addons\unmute"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "ȡ��ϵͳ����"
Name: "Addons\WakeSpeaker"; Types: Full custom; Flags: disablenouninstallwarning; Description: "����������"
Name: "Addons\WeChatEnhancement"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "PC΢����ǿ"
Name: "Addons\wintenApps"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "Windows Ӧ����ǿ"; MinVersion: 10.0
Name: "Addons\xyOCR"; Types: Full default custom; Flags: disablenouninstallwarning; Description: "����OCR"
Name: "Addons\YYPatch"; Types: Full custom; Flags: disablenouninstallwarning; Description: "YY ����"

[Tasks]
Name: "StartOnLogon"; Description: "�ڻ�ӭ�������� NVDA"
Name: "Voices"; Description: "�����ϳ�������"; Components: Settings; OnlyBelowVersion: 10.0
Name: "Voices"; Description: "�����ϳ�������"; Components: Settings and Voices; Flags: Unchecked; MinVersion: 10.0
Name: "Voices\WorldVoice"; Description: "�л������ϳ����� WorldVoice"; Components: Voices\WorldVoice; Flags: exclusive Unchecked
Name: "Voices\AiSound5"; Description: "�л������ϳ����� AiSound5"; Components: Voices\AiSound5; Flags: exclusive Unchecked
Name: "Voices\IBMTTS"; Description: "�л������ϳ����� IBMTTS"; Components: Voices\VVTTS\IBMTTS; Flags: exclusive Unchecked
Name: "Voices\sapi4"; Description: "�л������ϳ����� Microsoft Speech API version 4 ��ʹ�� VVTTS ����"; Components: Voices\VVTTS; Flags: exclusive Unchecked
Name: "Voices\sapi5"; Description: "�л������ϳ����� Microsoft Speech API version 5"; OnlyBelowVersion: 10.0; Components: Settings; Flags: exclusive
Name: "Voices\nvbox"; Description: "�л������ϳ����� NV ���������ϳ���"; Components: Addons\NVBox; Flags: exclusive Unchecked
Name: "VVTTSDicts"; Description: "���� VVTTS �����ֵ䣨������ SAPI4��"; Components: Settings and Voices\VVTTS; Check: not FileExists(ExpandConstant('{userappdata}\NVDA\speechDicts\voiceDicts.v1\sapi4\sapi4-����-����_ Default (SimplifiedChinese) - IBM ViaVoice Text-to-Speech.dic'))
Name: "VVTTSDicts"; Description: "���� VVTTS �����ֵ䣨������ SAPI4��"; Components: Settings and Voices\VVTTS; Flags: Unchecked; Check: FileExists(ExpandConstant('{userappdata}\NVDA\speechDicts\voiceDicts.v1\sapi4\sapi4-����-����_ Default (SimplifiedChinese) - IBM ViaVoice Text-to-Speech.dic'))
Name: "DragAndDropGestures"; Description: "�޸� DragAndDrop �����̨ʽ����ݼ���ʼǱ����̷�����ͬ"; Components: "Addons\DragAndDrop"
Name: "DeleteProfile"; Description: "����û������ļ���"; Check: FileExists(ExpandConstant('{userappdata}\NVDA\nvda.ini')); Flags: Unchecked
Name: "DeleteProfile\Backup"; Description: "�������� NVDA ����"; Flags: exclusive
Name: "DeleteProfile\NoBackup"; Description: "���������� NVDA ����"; Flags: exclusive Unchecked

[code]
var
ResultCode: Integer;
procedure BackupNVDAProfile();
begin
ExtractTemporaryFile(ExtractFileName(ExpandConstant('{tmp}\7z.dll')));
ExtractTemporaryFile(ExtractFileName(ExpandConstant('{tmp}\7z.exe')));
Exec(ExpandConstant('{tmp}\7z.exe'), ' a -y -tzip "'+ ExpandConstant('{userdocs}')+ '\NVDABackup\NVDABackup.zip" "'+ ExpandConstant('{userappdata}\NVDA')+'\*"', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
end;
function ENUI: Boolean;
begin
  if MsgBox('Welcome to NVDA Lazy Edition.' #13#13 'The program has detected that the current system''s display language is not Simplified Chinese.' #13#13 'This program will not install personalized features such as settings and add-ons customized for Simplified Chinese users.' #13#13 'Click "OK" to start the NVDA original installer, or click "Cancel" to exit this program.', mbError, MB_OKCANCEL)= IDOK then
  begin
    Exec(ExpandConstant('{tmp}\Application\NVDA.exe'), '--launcher', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
  end;
  Result := False;
end;
function CHSUI: Boolean;
begin
  If not FileExists(ExpandConstant('{userappdata}\NVDA\nvda.ini')) Then
  begin
    ResultCode := SuppressibleMsgBox('��ӭʹ�� NVDA ���˰档' #13#13 '��������Զ�Ϊ����װ NVDA �����򼰲��ֳ��ò����' #13#13 '�����⵽��δ��װ NVDA ����δ����������ã�����ѡ����ٰ�װģʽ���Զ���װ������ NVDA��' #13#13 '��Ҫִ�п��ٰ�װ��' #13#13 '�������ǡ�ִ�п��ٰ�װ����������ִ�и߼���װ��������ȡ�����˳�������', mbConfirmation, MB_YESNOCANCEL or MB_DEFBUTTON1, IDNO)
  end else begin
    ResultCode := SuppressibleMsgBox('��ӭʹ�� NVDA ���˰档' #13#13 '��������Զ�Ϊ����װ NVDA �����򼰲��ֳ��ò����' #13#13 '�����⵽���� NVDA �����ļ����д��� NVDA�����ļ������������ü�����װ��ĳЩ�ļ����ܲ��ᱻ�滻��' #13#13 '��Ҫ�����������' #13#13 '�������ǡ���� NVDA �����ļ��У��������񡱱������ò�ִ�и߼���װ��������ȡ�����˳�������', mbConfirmation, MB_YESNOCANCEL or MB_DEFBUTTON1, IDNO)
    If ResultCode=IDYES Then
    begin
      ResultCode := SuppressibleMsgBox('��Ҫ�������е� NVDA ������' #13#13 '���ݵ��ļ������洢�� '+ ExpandConstant('{userdocs}\NVDABackup')+ ' �ļ����С�' #13#13 '�������ǡ����ݲ�������������ļ��У���������ֱ��������������ļ��У�������ȡ�����������ò�ִ�и߼���װ��', mbConfirmation, MB_YESNOCANCEL or MB_DEFBUTTON1, IDYES)
      If ResultCode=IDCANCEL Then
      begin
        ResultCode := IDNO;
      end else begin
        If ResultCode=IDYES Then
        begin
BackupNVDAProfile();
        end;
        DelTree(ExpandConstant('{userappdata}\NVDA'), True, True, True);
        ResultCode := SuppressibleMsgBox('��������������е� NVDA �����ļ��У���������ѡ����ٰ�װģʽ���Զ���װ������ NVDA��' #13#13 '��Ҫִ�п��ٰ�װ��' #13#13 '�������ǡ�ִ�п��ٰ�װ����������ִ�и߼���װ��������ȡ�����˳�������', mbConfirmation, MB_YESNOCANCEL or MB_DEFBUTTON1, IDNO)
      end;
    end;
  end;
  If ResultCode=IDCANCEL Then
  begin
    Result := False;
  end else begin
    Result := True;
  end;
end;
function InitializeSetup: Boolean;
begin
  ExtractTemporaryFile(ExtractFileName(ExpandConstant('{tmp}\Application.exe')));
  if Exec(ExpandConstant('{tmp}\Application.exe'), '/VERYSILENT /NORESTART', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode) then
  begin
  if GetUILanguage = 2052 then
  begin
    result := CHSUI;
  end else begin
    Result := ENUI
  end;
  end;
end;
function ShouldSkipPage(PageID: Integer): Boolean;
begin
  If ResultCode=IDYES Then
  begin
    if PageID = wpFinished then
    begin
      result := False;
    end else begin
      result := true;
    end;
  end;
end;
procedure InitializeWizard();
begin
WizardForm.LICENSEACCEPTEDRADIO.Checked := true;
end;
procedure DeinitializeSetup();
begin
  if Exec(ExpandConstant('{tmp}\Application\NVDA.exe'), '-q', '', SW_SHOWNORMAL, ewNoWait, ResultCode) then
end;
procedure VVTTSINI();
begin
  If FileExists(ExpandConstant('{pf}\ViaVoiceTTS\ibmeci.dll')) Then
  begin
    SetIniString('ibmeci', '	dllName ', 'ibmeci.dll', ExpandConstant('{userappdata}\NVDA\nvda.ini'));
    SetIniString('ibmeci', '	TTSPath ', ExpandConstant('{pf}\ViaVoiceTTS'), ExpandConstant('{userappdata}\NVDA\nvda.ini'));
  end;
end;

[ini]
FileName: "{tmp}\Application\locale\zh_CN\gestures.ini"; Section: "globalPlugins.DragAndDrop.GlobalPlugin"; Key: "None"; String: "kb(desktop):numpad9+nvda, kb(desktop):.+nvda"; Tasks: DragAndDropGestures
FileName: "{tmp}\Application\locale\zh_CN\gestures.ini"; Section: "globalPlugins.DragAndDrop.GlobalPlugin"; Key: "mouseCursorInfo"; String: """kb:,+control+nvda"""; Tasks: DragAndDropGestures
FileName: "{tmp}\Application\locale\zh_CN\gestures.ini"; Section: "globalPlugins.DragAndDrop.GlobalPlugin"; Key: "dragAndDrop"; String: """kb:,+nvda+shift"""; Tasks: DragAndDropGestures
FileName: "{app}\NVDA.ini"; Section: "speech"; Key: "	synth "; String: " aisound"; Tasks: "Voices\AiSound5"
FileName: "{app}\NVDA.ini"; Section: "speech"; Key: "	synth "; String: " sapi4"; Tasks: "Voices\sapi4"
FileName: "{app}\NVDA.ini"; Section: "speech"; Key: "	synth "; String: " sapi5"; Tasks: "Voices\sapi5"
FileName: "{app}\NVDA.ini"; Section: "speech"; Key: "	synth "; String: " WorldVoice"; Tasks: "Voices\WorldVoice"
FileName: "{app}\NVDA.ini"; Section: "speech"; Key: "	synth "; String: " nvbox"; Tasks: "Voices\nvbox"
FileName: "{app}\NVDA.ini"; Section: "speech"; Key: "	synth "; String: " ibmeci"; Tasks: "Voices\IBMTTS"

[InstallDelete]
Type: filesandordirs; Name: "{userappdata}\NVDA\*"; Tasks: DeleteProfile\Backup; BeforeInstall: BackupNVDAProfile();
Type: filesandordirs; Name: "{userappdata}\NVDA\*"; Tasks: DeleteProfile\NoBackup
Type: filesandordirs; Name: "{app}\Addons\AiSound5"; Tasks: "not DeleteProfile"; Components: "Voices\AiSound5"
Type: filesandordirs; Name: "{app}\Addons\IBMTTS"; Tasks: "not DeleteProfile"; Components: "Voices\VVTTS\IBMTTS"
Type: filesandordirs; Name: "{app}\Addons\WorldVoice"; Tasks: "not DeleteProfile"; Components: "Voices\WorldVoice"
Type: filesandordirs; Name: "{app}\Addons\addonsHelp"; Tasks: "not DeleteProfile"; Components: "Addons\addonsHelp"
Type: filesandordirs; Name: "{app}\Addons\addonUpdater"; Tasks: "not DeleteProfile"; Components: "Addons\addonUpdater"
Type: filesandordirs; Name: "{app}\Addons\audioManager"; Tasks: "not DeleteProfile"; Components: "Addons\audioManager"
Type: filesandordirs; Name: "{app}\Addons\AudioControl"; Tasks: "not DeleteProfile"; Components: "Addons\audioManager or Addons\AudioControl"
Type: filesandordirs; Name: "{app}\Addons\baiduTranslation"; Tasks: "not DeleteProfile"; Components: "Addons\baiduTranslation"
Type: filesandordirs; Name: "{app}\Addons\bluetoothaudio"; Tasks: "not DeleteProfile"; Components: "Addons\WakeSpeaker"
Type: filesandordirs; Name: "{app}\Addons\WakeSpeaker"; Tasks: "not DeleteProfile"; Components: "Addons\WakeSpeaker"
Type: filesandordirs; Name: "{app}\Addons\clipboardEnhancement"; Tasks: "not DeleteProfile"; Components: "Addons\clipboardEnhancement"
Type: filesandordirs; Name: "{app}\Addons\DragAndDrop"; Tasks: "not DeleteProfile"; Components: "Addons\DragAndDrop"
Type: filesandordirs; Name: "{app}\Addons\enhancedTouchGestures"; Tasks: "not DeleteProfile"; Components: "Addons\enhancedTouchGestures"
Type: filesandordirs; Name: "{app}\Addons\goldenCursor\__pycache__"; Tasks: "not DeleteProfile"; Components: "Addons\goldenCursor"
Type: filesandordirs; Name: "{app}\Addons\goldenCursor\doc"; Tasks: "not DeleteProfile"; Components: "Addons\goldenCursor"
Type: filesandordirs; Name: "{app}\Addons\goldenCursor\globalPlugins"; Tasks: "not DeleteProfile"; Components: "Addons\goldenCursor"
Type: filesandordirs; Name: "{app}\Addons\goldenCursor\locale"; Tasks: "not DeleteProfile"; Components: "Addons\goldenCursor"
Type: files; Name: "{app}\Addons\goldenCursor\installTasks.py"; Tasks: "not DeleteProfile"; Components: "Addons\goldenCursor"
Type: files; Name: "{app}\Addons\goldenCursor\manifest.ini"; Tasks: "not DeleteProfile"; Components: "Addons\goldenCursor"
Type: filesandordirs; Name: "{app}\Addons\ime_expressive"; Tasks: "not DeleteProfile"; Components: "Addons\imeExpressive"
Type: filesandordirs; Name: "{app}\Addons\MSEdgeDiscardAnnouncements"; Tasks: "not DeleteProfile"; Components: "Addons\MSEdgeDiscardAnnouncements"
Type: filesandordirs; Name: "{app}\Addons\numberProcessing"; Tasks: "not DeleteProfile"; Components: "Addons\numberProcessing"
Type: filesandordirs; Name: "{app}\Addons\NVBox"; Tasks: "not DeleteProfile"; Components: "Addons\NVBox"
Type: filesandordirs; Name: "{app}\Addons\QQEnhancement"; Tasks: "not DeleteProfile"; Components: "Addons\QQEnhancement"
Type: filesandordirs; Name: "{app}\Addons\QuickAdjustment"; Tasks: "not DeleteProfile"; Components: "Addons\QuickAdjustment"
Type: filesandordirs; Name: "{app}\Addons\remote"; Tasks: "not DeleteProfile"; Components: "Addons\remote"
Type: filesandordirs; Name: "{app}\Addons\resourceMonitor"; Tasks: "not DeleteProfile"; Components: "Addons\resourceMonitor"
Type: filesandordirs; Name: "{app}\Addons\unmute"; Tasks: "not DeleteProfile"; Components: "Addons\unmute"
Type: filesandordirs; Name: "{app}\Addons\NVDACNMirror"; Tasks: "not DeleteProfile"; Components: "Addons\NVDACNMirror"
Type: filesandordirs; Name: "{app}\Addons\viyfMirror"; Tasks: "not DeleteProfile"; Components: "Addons\NVDACNMirror"
Type: filesandordirs; Name: "{app}\Addons\WeChatEnhancement"; Tasks: "not DeleteProfile"; Components: "Addons\WeChatEnhancement"
Type: filesandordirs; Name: "{app}\Addons\wintenApps"; Tasks: "not DeleteProfile"; Components: "Addons\wintenApps"
Type: filesandordirs; Name: "{app}\Addons\xyOCR"; Tasks: "not DeleteProfile"; Components: "Addons\xyOCR"
Type: filesandordirs; Name: "{app}\Addons\YYPatch"; Tasks: "not DeleteProfile"; Components: "Addons\YYPatch"
Type: files; Name: "{app}\Addons\AiSound5.json"; Tasks: "not DeleteProfile"; Components: "Voices\AiSound5"
Type: files; Name: "{app}\Addons\IBMTTS.json"; Tasks: "not DeleteProfile"; Components: "Voices\VVTTS\IBMTTS"
Type: files; Name: "{app}\Addons\WorldVoice.json"; Tasks: "not DeleteProfile"; Components: "Voices\WorldVoice"
Type: files; Name: "{app}\Addons\addonsHelp.json"; Tasks: "not DeleteProfile"; Components: "Addons\addonsHelp"
Type: files; Name: "{app}\Addons\addonUpdater.json"; Tasks: "not DeleteProfile"; Components: "Addons\addonUpdater"
Type: files; Name: "{app}\Addons\audioManager.json"; Tasks: "not DeleteProfile"; Components: "Addons\audioManager"
Type: files; Name: "{app}\Addons\AudioControl.json"; Tasks: "not DeleteProfile"; Components: "Addons\audioManager or Addons\AudioControl"
Type: files; Name: "{app}\Addons\baiduTranslation.json"; Tasks: "not DeleteProfile"; Components: "Addons\baiduTranslation"
Type: files; Name: "{app}\Addons\bluetoothaudio.json"; Tasks: "not DeleteProfile"; Components: "Addons\WakeSpeaker"
Type: files; Name: "{app}\Addons\WakeSpeaker.json"; Tasks: "not DeleteProfile"; Components: "Addons\WakeSpeaker"
Type: files; Name: "{app}\Addons\clipboardEnhancement.json"; Tasks: "not DeleteProfile"; Components: "Addons\clipboardEnhancement"
Type: files; Name: "{app}\Addons\DragAndDrop.json"; Tasks: "not DeleteProfile"; Components: "Addons\DragAndDrop"
Type: files; Name: "{app}\Addons\enhancedTouchGestures.json"; Tasks: "not DeleteProfile"; Components: "Addons\enhancedTouchGestures"
Type: files; Name: "{app}\Addons\goldenCursor.json"; Tasks: "not DeleteProfile"; Components: "Addons\goldenCursor"
Type: files; Name: "{app}\Addons\ime_expressive.json"; Tasks: "not DeleteProfile"; Components: "Addons\imeExpressive"
Type: files; Name: "{app}\Addons\MSEdgeDiscardAnnouncements.json"; Tasks: "not DeleteProfile"; Components: "Addons\MSEdgeDiscardAnnouncements"
Type: files; Name: "{app}\Addons\numberProcessing.json"; Tasks: "not DeleteProfile"; Components: "Addons\numberProcessing"
Type: files; Name: "{app}\Addons\NVBox.json"; Tasks: "not DeleteProfile"; Components: "Addons\NVBox"
Type: files; Name: "{app}\Addons\QQEnhancement.json"; Tasks: "not DeleteProfile"; Components: "Addons\QQEnhancement"
Type: files; Name: "{app}\Addons\QuickAdjustment.json"; Tasks: "not DeleteProfile"; Components: "Addons\QuickAdjustment"
Type: files; Name: "{app}\Addons\remote.json"; Tasks: "not DeleteProfile"; Components: "Addons\remote"
Type: files; Name: "{app}\Addons\resourceMonitor.json"; Tasks: "not DeleteProfile"; Components: "Addons\resourceMonitor"
Type: files; Name: "{app}\Addons\unmute.json"; Tasks: "not DeleteProfile"; Components: "Addons\unmute"
Type: files; Name: "{app}\Addons\NVDACNMirror.json"; Tasks: "not DeleteProfile"; Components: "Addons\NVDACNMirror"
Type: files; Name: "{app}\Addons\WeChatEnhancement.json"; Tasks: "not DeleteProfile"; Components: "Addons\WeChatEnhancement"
Type: files; Name: "{app}\Addons\wintenApps.json"; Tasks: "not DeleteProfile"; Components: "Addons\wintenApps"
Type: files; Name: "{app}\Addons\xyOCR.json"; Tasks: "not DeleteProfile"; Components: "Addons\xyOCR"
Type: files; Name: "{app}\Addons\YYPatch.json"; Tasks: "not DeleteProfile"; Components: "Addons\YYPatch"

[Run]
Filename: "{tmp}\Application\nvda"; Parameters: "-m --install-silent --enable-start-on-logon=True"; Tasks: "StartOnLogon"
Filename: "{tmp}\Application\nvda"; Parameters: "-m --install-silent --enable-start-on-logon=False"; Tasks: "not StartOnLogon"
Filename: "{tmp}\Application\nvda"; Parameters: "-m -s"; Flags: nowait
Filename: "{tmp}\VVTTS"; Parameters: "/S"; Components: "Voices\VVTTS and Settings"; AfterInstall: VVTTSINI();
Filename: "{tmp}\VVTTS"; Parameters: "/S"; Components: "Voices\VVTTS and not Settings"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\AiSound5*"" -aoa -o""{app}\Addons\AiSound5"""; Components: "Voices\AiSound5"
Filename: "{tmp}\7z"; Parameters: "x ""aisound.zip"" -aoa -o""{app}\Addons\AiSound5\synthDrivers"""; Components: "Voices\AiSound5"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\IBMTTS*"" -aoa -o""{app}\Addons\IBMTTS"""; Components: "Voices\VVTTS\IBMTTS"
Filename: "{tmp}\vcredist_x86"; Parameters: "/install /quiet /norestart"; Components: "Voices\WorldVoice"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\WorldVoice*"" -aoa -o""{app}\Addons\WorldVoice"""; Components: "Voices\WorldVoice"
Filename: "{tmp}\7z"; Parameters: "x ""aisound.zip"" -aoa -o""{app}\WorldVoice-workspace\aisound"""; Components: "Voices\WorldVoice"
Filename: "{tmp}\7z"; Parameters: "x ""VE.zip"" -aoa -o""{app}\WorldVoice-workspace\VE"""; Components: "Voices\WorldVoice"
Filename: "{tmp}\7z"; Parameters: "x ""voice.zip"" -aoa -o""{app}\WorldVoice-workspace"""; Components: "Voices\WorldVoice"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\addonsHelp*"" -aoa -o""{app}\Addons\addonsHelp"""; Components: "Addons\addonsHelp"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\addonUpdater*"" -aoa -o""{app}\Addons\addonUpdater"""; Components: "Addons\addonUpdater"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\AudioControl*"" -aoa -o""{app}\Addons\AudioControl"""; Components: "Addons\AudioControl"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\audioManager*"" -aoa -o""{app}\Addons\audioManager"""; Components: "Addons\audioManager"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\baiduTranslation*"" -aoa -o""{app}\Addons\baiduTranslation"""; Components: "Addons\baiduTranslation"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\WakeSpeaker*"" -aoa -o""{app}\Addons\WakeSpeaker"""; Components: "Addons\WakeSpeaker"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\clipboardEnhancement*"" -aoa -o""{app}\Addons\clipboardEnhancement"""; Components: "Addons\clipboardEnhancement"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\DragAndDrop*"" -aoa -o""{app}\Addons\DragAndDrop"""; Components: "Addons\DragAndDrop"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\enhancedTouchGestures*"" -aoa -o""{app}\Addons\enhancedTouchGestures"""; Components: "Addons\enhancedTouchGestures"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\goldenCursor*"" -aoa -o""{app}\Addons\goldenCursor"""; Components: "Addons\goldenCursor"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\ime_expressive*"" -aoa -o""{app}\Addons\ime_expressive"""; Components: "Addons\imeExpressive"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\MSEdgeDiscardAnnouncements*"" -aoa -o""{app}\Addons\MSEdgeDiscardAnnouncements"""; Components: "Addons\MSEdgeDiscardAnnouncements"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\numberProcessing*"" -aoa -o""{app}\Addons\numberProcessing"""; Components: "Addons\numberProcessing"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\NVBox*"" -aoa -o""{app}\Addons\NVBox"""; Components: "Addons\NVBox"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\QQEnhancement*"" -aoa -o""{app}\Addons\QQEnhancement"""; Components: "Addons\QQEnhancement"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\QuickAdjustment*"" -aoa -o""{app}\Addons\QuickAdjustment"""; Components: "Addons\QuickAdjustment"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\remote*"" -aoa -o""{app}\Addons\remote"""; Components: "Addons\remote"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\resourceMonitor*"" -aoa -o""{app}\Addons\resourceMonitor"""; Components: "Addons\resourceMonitor"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\unmute*"" -aoa -o""{app}\Addons\unmute"""; Components: "Addons\unmute"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\NVDACNMirror*"" -aoa -o""{app}\Addons\NVDACNMirror"""; Components: "Addons\NVDACNMirror"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\WeChatEnhancement*"" -aoa -o""{app}\Addons\WeChatEnhancement"""; Components: "Addons\WeChatEnhancement"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\wintenApps*"" -aoa -o""{app}\Addons\wintenApps"""; Components: "Addons\wintenApps"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\xyOCR*"" -aoa -o""{app}\Addons\xyOCR"""; Components: "Addons\xyOCR"
Filename: "{tmp}\7z"; Parameters: "x ""Addons\YYPatch*"" -aoa -o""{app}\Addons\YYPatch"""; Components: "Addons\YYPatch"

[Files]
Source: "Application.exe"; DestDir: "{tmp}"; Flags: dontcopy deleteafterinstall
Source: "Others\7z.dll"; DestDir: "{tmp}"; Flags: deleteafterinstall ignoreversion
Source: "Others\7z.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall ignoreversion
Source: "userConfig\nvda.ini"; DestDir: "{app}"; Components: "Settings"; Flags: ignoreversion
Source: "userConfig\sapi4-����-����_ Default (SimplifiedChinese) - IBM ViaVoice Text-to-Speech.dic"; DestDir: "{app}\speechDicts\voiceDicts.v1\sapi4"; Tasks: "VVTTSDicts"; Flags: ignoreversion
Source: "Others\VVTTS.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall ignoreversion; Components: "Voices\VVTTS"
Source: "Others\aisound.zip"; DestDir: "{tmp}"; Flags: deleteafterinstall ignoreversion; Components: "Voices\AiSound5 or Voices\WorldVoice"
Source: "Others\vcredist_x86.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall ignoreversion; Components: "Voices\WorldVoice"
Source: "Others\VE.zip"; DestDir: "{tmp}"; Flags: deleteafterinstall ignoreversion; Components: "Voices\WorldVoice"
Source: "Others\voice.zip"; DestDir: "{tmp}"; Flags: deleteafterinstall ignoreversion; Components: "Voices\WorldVoice"
Source: "Addons\AiSound5*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Voices\AiSound5"
Source: "Addons\IBMTTS*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Voices\VVTTS\IBMTTS"
Source: "Addons\WorldVoice*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Voices\WorldVoice"
Source: "Addons\addonsHelp*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\addonsHelp"
Source: "userConfig\nvda3208.pickle"; DestDir: "{app}"; Components: "Settings and Addons\addonUpdater"; Flags: ignoreversion
Source: "Addons\addonUpdater*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\addonUpdater"
Source: "Addons\AudioControl*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\AudioControl"
Source: "Addons\audioManager*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\audioManager"
Source: "Addons\baiduTranslation*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\baiduTranslation"
Source: "Addons\WakeSpeaker*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\WakeSpeaker"
Source: "Addons\clipboardEnhancement*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\clipboardEnhancement"
Source: "Addons\DragAndDrop*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\DragAndDrop"
Source: "Addons\enhancedTouchGestures*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\enhancedTouchGestures"
Source: "Addons\goldenCursor*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\goldenCursor"
Source: "Addons\ime_expressive*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\imeExpressive"
Source: "Addons\MSEdgeDiscardAnnouncements*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\MSEdgeDiscardAnnouncements"
Source: "Addons\numberProcessing*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\numberProcessing"
Source: "Addons\NVBox*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\NVBox"
Source: "Addons\QQEnhancement*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\QQEnhancement"
Source: "Addons\QuickAdjustment*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\QuickAdjustment"
Source: "Addons\remote*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\remote"
Source: "Addons\resourceMonitor*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\resourceMonitor"
Source: "Addons\unmute*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\unmute"
Source: "Addons\NVDACNMirror*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\NVDACNMirror"
Source: "Addons\WeChatEnhancement*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\WeChatEnhancement"
Source: "Addons\wintenApps*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\wintenApps"
Source: "Addons\xyOCR*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\xyOCR"
Source: "Addons\YYPatch*"; DestDir: "{tmp}\Addons"; Flags: deleteafterinstall ignoreversion; Components: "Addons\YYPatch"

