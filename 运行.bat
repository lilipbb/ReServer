@echo off
net start mysqlpbb
cd /d %~dp0
start BeginServer.exe
rem pause