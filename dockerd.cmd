@echo off
pushd "%~dp0"
cls

echo This script allows you to run docker daemon.
echo.

net session >nul 2>&1
if not %errorLevel% == 0 (
		  echo To run this script, you must run it as a user with administrative privileges.
		    pause >nul
			  goto end
		)

ubuntu.exe -c "sudo service docker start && sudo docker ps > /dev/null && echo From now on, you can minimize this window and use the docker in other Ubuntu WSL sessions. If you are using a version of Windows 10 RS3 or earlier, do not close this window. && tail -f /dev/null"

:end
popd
@echo on
