@echo off

wsl.exe -u root -e sh -c "service docker status || service docker start"
