@echo off
Rem �޸���һ�еȺź����ֵΪNVDAԴ�����ļ������ɳɹ����ɣ����ɵ��ļ�λ�� Output �ļ����С�
set nvda=nvda_2024.1rc1

Rem ɾ���Ѿ����ڵ����˰�����ļ�
IF EXIST "%~dp0Application" (rd /s /q "%~dp0Application")
IF EXIST "%~dp0Output" (rd /s /q "%~dp0Output")
IF EXIST "%~dp0Application.exe" (del /f /q "%~dp0Application.exe")
IF EXIST "%~dp0NVDA ���˰�.exe" (del /f /q "%~dp0NVDA ���˰�.exe")
IF EXIST "%~dp0NVDA ���ûָ�����.exe" (del /f /q "%~dp0NVDA ���ûָ�����.exe")
IF EXIST "%~dp0ReadMe.txt" (del /f /q "%~dp0ReadMe.txt")

Rem ������Я�� NVDA
"%~dp0%nvda%.exe" --create-portable-silent --portable-path="%~dp0Application"
if /i %PROCESSOR_IDENTIFIER:~0,3%==x86 (
Start /D  "%ProgramFiles%\NVDA" NVDA
) else (
Start /D  "%ProgramFiles(x86)%\NVDA" NVDA
)

Rem ��ʼ����
COPY /B /V  /Y "%~dp0ReadMe.md" "%~dp0ReadMe.txt"
"%~dp0InnoSetup\Compil32" /cc "%~dp0��Я�氲װ�ű�.iss"
"%~dp0InnoSetup\Compil32" /cc "%~dp0���˰氲װ�ű�.iss"
"%~dp0InnoSetup\Compil32" /cc "%~dp0�ָ����ݵ� NVDA ����.iss"
"%~dp0Others\7z.exe" a -y -tzip "%~dp0Output\NVDA_Lazy_Edition_%date:~0,4%.%date:~5,2%.%date:~8,2%.zip" "%~dp0NVDA ���˰�.exe" "%~dp0ReadMe.txt" "%~dp0NVDA ���ûָ�����.exe"
"%~dp0Others\7z.exe" a -y -tzip "%~dp0Output\Source_Code_And_Dependency_Files_%date:~0,4%.%date:~5,2%.%date:~8,2%.zip" "%~dp0Addons" "%~dp0InnoSetup" "%~dp0Others" "%~dp0userConfig" "%~dp0NVDA ���˰�.iss" "%~dp0%nvda%.exe" "%~dp0ReadMe.md" "%~dp0NVDA ��Я��.iss" "%~dp0�ָ����ݵ� NVDA ����.iss" "%~dp0ִ�нű�.bat"

Rem ������ʱ�ļ�
IF EXIST "%~dp0Application" (rd /s /q "%~dp0Application")
IF EXIST "%~dp0Application.exe" (del /f /q "%~dp0Application.exe")
IF EXIST "%~dp0ReadMe.txt" (del /f /q "%~dp0ReadMe.txt")

Exit