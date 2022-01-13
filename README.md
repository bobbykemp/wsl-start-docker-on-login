## Start the Docker service in WSL on Windows Login

If you are like me, and run docker as a normal service in your WSL install, here is a quick and easy way to automate the startup of the service whenever you log into Windows:

Steps:

1. Press <kbd>WIN</kbd>+<kbd>R</kbd>
2. Type: "shell:startup" in the "Run" popup
3. Place the .bat file in this repo in the Startup folder
4. The bat file just runs the following command:

```cmd
wsl.exe -u root -e sh -c "service docker status || service docker start"
```

This command invokes wsl as the root user, without prompting for a password. It then executes the command in quotes, which checks to see if the docker service is running, and if not, starts the docker service.
