@echo off
rem ����һ���ر�  v2rayN.exe ���̲��޸Ĵ���ip��ˢ��dns����Ľű�
rem �رս�������Ϊ v2rayN.exe �Ľ���
taskkill /f /im v2rayN.exe
echo �ѹر� v2rayN.exe ����

rem �����������ip����Ϊ 127.0.0.1:2088
echo �������ô������������
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "127.0.0.1:2088" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
echo ���óɹ���������������޸�Ϊ 127.0.0.1:2088

rem ˢ��DNS��������
ipconfig /flushdns
echo ����ˢ��DNS��������...
echo | set /p="."
timeout /t 2 >nul
echo.
echo DNS����������ˢ��

timeout /t 3 >nul
exit
