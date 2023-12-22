@echo off
rem 这是一个启动  v2rayN.exe 进程并修改代理ip的脚本
rem 将代理服务器ip设置为 127.0.0.1:18849
echo 正在设置代理服务器……
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "127.0.0.1:18849" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
echo 设置成功！代理服务器已修改为 127.0.0.1:18849
timeout /t 3 >nul
rem 启动v2rayN.exe
start "" "v2rayN.exe"
exit
