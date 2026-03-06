## Server Administration

- Root user had UID=0, ``whoami`` lets you know current user

Important file information
- ``/etc/passwd`` - Stores the user name, the uid, the gid, the home directory, the login shell etc
- ``/etc/shadow`` - Stores the password associated with the users
- ``/etc/group`` - Stores information about different groups on the system

### Managing users
- ```useradd``` - Creates a new user
- ```passwd``` - adds or modifies password for a user
- ```userdel``` - deletes a user
- ```usermod``` - modifies attributes of user

### Becoming super User
- Helps to switch users
```
su <user>
```
- Switch to root
```
su su
```

- The file ``/etc/sudoers`` holds the names of users permitted to invoke sudo

## File permissions
- To know the permission of a file
```
ls -l <filename>
```
- Output : ``-rw-r--r-- 1 <user> <user>``

![The GitHub logo](https://linkedin.github.io/school-of-sre/level101/linux_basics/images/linux/admin/image57.png "GitHub Logo")


### chomd
- Used to modify files and directories permission in linux

### chown
- Used to change owner of files or directories
```
chown <new_owner> <file_name>
```

### chgrp
- Used to change group ownership of files or directories
```
chgrp <new_owner> <file_name>
```

## Entering Remote host
```
ssh <username>@<hostip>
```

## Transfer files from one host/local to another host

```
scp <filename> <user>@<hostip>:<path_to_save>
```
- If only ssh is enabled

```
scp -i ~/.ssh/<filename> <file> <user>@<hostip>:<path_to_save>
```
