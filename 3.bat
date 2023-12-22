@echo off
rem 这是一个关闭  v2rayN.exe 进程并修改代理ip后刷新dns缓存的脚本
rem 关闭进程名称为 v2rayN.exe 的进程
taskkill /f /im v2rayN.exe
echo 已关闭 v2rayN.exe 进程

rem 将代理服务器ip设置为 127.0.0.1:2088
echo 正在设置代理服务器……
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "127.0.0.1:2088" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
echo 设置成功！代理服务器已修改为 127.0.0.1:2088

rem 刷新DNS解析缓存
ipconfig /flushdns
echo 正在刷新DNS解析缓存...
echo | set /p="."
timeout /t 2 >nul
echo.
echo DNS解析缓存已刷新

timeout /t 3 >nul
exit
