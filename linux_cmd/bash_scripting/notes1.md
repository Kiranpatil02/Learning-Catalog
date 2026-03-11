### Exiting VIM
- ``:q`` : Exit the file but won’t exit if file has unsaved changes
- ``:wq`` : Save the changes and Exit
- ``:q!`` : Exit without saving changes

### Scripting
Bash Scripting is scripting language and runs on linux bash interpreter

``#!`` means start of the bash script and is known as *she-bang*

For firstscript.sh
```
#!/bin/bash

echo "Hello world!"
```

### Exit Status
After excecuting command, to check whether the program was success or resulted in error make use of ``echo $?`` tells exit status

0 - Success

Non 0 - Resulted in error


