@echo off
Rem �޸���һ�еȺź����ֵΪNVDAԴ�����ļ����İ汾�Ų��ּ��ɳɹ����ɣ����ɵ��ļ�λ�� Output �ļ����С�
set nvda=2023.3
IF EXIST "%~dp0Application" (rd /s /q "%~dp0Application")
IF EXIST "%~dp0Output" (rd /s /q "%~dp0Output")
IF EXIST "%~dp0Application.exe" (del /f /q "%~dp0Application.exe")
IF EXIST "%~dp0NVDA ���˰�.exe" (del /f /q "%~dp0NVDA ���˰�.exe")
IF EXIST "%~dp0ReadMe.txt" (del /f /q "%~dp0ReadMe.txt")
"%~dp0nvda_%nvda%.exe" --create-portable-silent --portable-path="%~dp0Application"
if /i %PROCESSOR_IDENTIFIER:~0,3%==x86 (
Start /D  "%ProgramFiles%\NVDA" NVDA
) else (
Start /D  "%ProgramFiles(x86)%\NVDA" NVDA
)
COPY /B /V  /Y "%~dp0ReadMe.md" "%~dp0ReadMe.txt"
"%~dp0InnoSetup\Compil32" /cc "%~dp0��Я��NVDA.iss"
"%~dp0InnoSetup\Compil32" /cc "%~dp0NVDA ���˰�.iss"
"%~dp0Others\7z.exe" a -y -tzip "%~dp0Output\NVDA_Lazy_Edition_%nvda%.zip" "%~dp0NVDA ���˰�.exe" "%~dp0ReadMe.txt" "%~dp0�ָ����ݵ� NVDA ����.exe"
"%~dp0Others\7z.exe" a -y -tzip "%~dp0Output\NVDA���˰�Դ����.zip" "%~dp0Addons" "%~dp0InnoSetup" "%~dp0Others" "%~dp0userConfig" "%~dp0NVDA ���˰�.iss" "%~dp0%nvda%.exe" "%~dp0ReadMe.txt" "%~dp0��Я��NVDA.iss" "%~dp0�ָ����ݵ� NVDA ����.exe" "%~dp0ִ�нű�.bat"
IF EXIST "%~dp0Application" (rd /s /q "%~dp0Application")
IF EXIST "%~dp0Application.exe" (del /f /q "%~dp0Application.exe")
IF EXIST "%~dp0ReadMe.txt" (del /f /q "%~dp0ReadMe.txt")

Exit