##Start Docker in WSL on Windows Login

```cmd
wsl.exe -u root -e sh -c "service docker status || service docker start"
```
