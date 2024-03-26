@echo off
Rem �޸���һ�еȺź����ֵΪNVDAԴ�����ļ������ɳɹ����ɣ����ɵ��ļ�λ�� Output �ļ����С�
set nvda=nvda_2024.1rc1

Rem ɾ���Ѿ����ڵ����˰�����ļ�
IF EXIST "%~dp0Output" (rd /s /q "%~dp0Output")
IF EXIST "%~dp0Temp" (rd /s /q "%~dp0Temp")

Rem ������Я�� NVDA
"%~dp0Resource\%nvda%.exe" --create-portable-silent --portable-path="%~dp0Temp\NVDA"
if /i %PROCESSOR_IDENTIFIER:~0,3%==x86 (
Start /D  "%ProgramFiles%\NVDA" NVDA
) else (
Start /D  "%ProgramFiles(x86)%\NVDA" NVDA
)

Rem ��ʼ����
MKDir "%~dp0Output"
COPY /B /V  /Y "%~dp0ReadMe.md" "%~dp0Output\ReadMe.txt"
"%~dp0Tools\InnoSetup\Compil32" /cc "%~dp0��Я�氲װ�ű�.iss"
"%~dp0Tools\InnoSetup\Compil32" /cc "%~dp0���˰氲װ�ű�.iss"
"%~dp0Tools\InnoSetup\Compil32" /cc "%~dp0�ָ����ݵ� NVDA ����.iss"
"%~dp0Tools\7Zip\7z.exe" a -y -tzip "%~dp0Output\Archive\NVDA_Lazy_Edition_%date:~0,4%.%date:~5,2%.%date:~8,2%.zip" "%~dp0Output\NVDA ���˰�.exe" "%~dp0Output\ReadMe.txt" "%~dp0Output\NVDA ���ûָ�����.exe"
"%~dp0Tools\7Zip\7z.exe" a -y -tzip "%~dp0Output\Archive\Source_Code_And_Dependency_Files_%date:~0,4%.%date:~5,2%.%date:~8,2%.zip" "%~dp0Resource" "%~dp0Tools" "%~dp0userConfig" "%~dp0ReadMe.md" "%~dp0��Я�氲װ�ű�.iss" "%~dp0�ָ����ݵ� NVDA ����.iss" "%~dp0���˰氲װ�ű�.iss" "%~dp0ִ�нű�.bat"

Exit