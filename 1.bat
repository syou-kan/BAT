@echo off
rem ����һ������  v2rayN.exe ���̲��޸Ĵ���ip�Ľű�
rem �����������ip����Ϊ 127.0.0.1:18849
echo �������ô������������
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "127.0.0.1:18849" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
echo ���óɹ���������������޸�Ϊ 127.0.0.1:18849
timeout /t 3 >nul
rem ����v2rayN.exe
start "" "v2rayN.exe"
exit
