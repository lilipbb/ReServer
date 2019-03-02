@echo off 
net start mysqlpbb

set EMAIL_ACCOUNT=lilipbb@163.com
set EMAIL_PASS=669988pbb
set Mysql_path=C:\Program Files\MySQL\MySQL Server 5.7\bin
set year=%date:~0,4% 
set month=%date:~5,2% 
set day=%date:~8,2% 
set scx_db=backup_%year: =%-%month: =%-%day: =%.sql 
set MY_PATH=%~dp0

cd /d %Mysql_path%
md %MY_PATH%\mysqlbackup
mysqldump -uroot -p669988Pbb diunileimu user >%MY_PATH%\mysqlbackup\%scx_db%
cd /d %MY_PATH%
echo %MY_PATH%
blat -install smtp.163.com %EMAIL_ACCOUNT% 3 25
blat 1.txt -to %EMAIL_ACCOUNT% -u %EMAIL_ACCOUNT% -subject %scx_db% -pw %EMAIL_PASS% -attach mysqlbackup\%scx_db%
rem blat 1.txt -to lilipbb1@163.com -base64 -charset Gb2312 -subject %scx_db%  -server smtp.163.com -f %EMAIL_ACCOUNT% -u lilipbb -pw %EMAIL_PASS% -attach mysqlbackup\%scx_db%
taskkill /im ServerBase.exe /f
rem ªπ‘≠÷∏¡Ó mysql -uroot -p669988Pbb diunileimu<xx.sql --default-character-set=utf8