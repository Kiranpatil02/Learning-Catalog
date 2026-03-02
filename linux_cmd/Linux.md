#### View file content
```
cat <filepath>
```
#### Edit file contents
```
nano <filepath>
```

#### Vim Code editor
```
vim <filepath>
```

#### Get all the logs of particular services
```
tail -f <filepath>
```

#### Start a service
```
systemctl start <filename>.service
```

#### Status of service
```
systemctl status <filename>.service
```

#### Stop a service
```
systemctl stop <filename>.service
```
#### Stream system logs in real time
```
journal system <servicename> -f
```

#### Re-read all services
```
systemctl daemon-reload
```

### top (important)
Real time system monitor of all running processes
```
top
```
- More powerful and prettier
```
htop
```