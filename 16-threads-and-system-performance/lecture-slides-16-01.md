## Fulbright-Nehru Lecture 15 Threads and System Performance

Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
## Process Management and Performance Montioring Commands

- ps
- top
- kill/killall
- iostat
- netstat


-------------------------------
## ps Command

- `ps [-options]` - Get the status of running processes
    - `-a` - Look at all processes (not just your own)
    - `-u` - Include username in the results
- A great tool for looking for specific processes
- `ps aux | grep '<process search>'` - A good way to find a specific type of process
- Can search by command such as `python`, `docker`, or `tomcat`

-------------------------------
## top Command

- `top` - Display a sorted list of processes (by default those using the most CPU)
- Will need to kill, freeze, or quit for command to exit

![Top Command](./images/top_command.png)

-------------------------------
## kill/killall Commands

- `kill <-signal_name or number> pid` - Terminate/Send a signal to a running process
    - `-1` - Kill all processes if super user
    - `-2` - interrupt
    - `-3` - quit
    - `-9` - kill
- `killall` - Like above but instead of pid, kill by process name
    - Good for killing processes based service, processing language, cli tool (e.g. java, docker, etc.)

-------------------------------
## iostat Command

- `iostat <options>` - Reports various I/O stats

![Top Command](./images/iostat_command.png)

-------------------------------
## netstat Command

- `netstat <options>` - Reports various networking stats and information
- Good when combined with commands like grep to find if services are running on network ports and the hostname/IP address
![bg left contain](./images/netstat_command.png)
