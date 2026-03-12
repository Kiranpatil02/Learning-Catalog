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

### Operators
Conditional operators

| Operation | Description |
|---|---|
| num1 -eq num2 | 1st number equals 2nd number | 
| num1 -ne num2 | 1st number not equals 2nd number | 
| num  -ge num2 | 1st number greater than or equal to 2nd number |
| num  -gt num2 | 1st number greater than to 2nd number |
| num  -le num2 | 1st number less than or equal to 2nd number|
| num  -lt num2 | 1st number less than 2nd number |


#### File Operations

| File operations | Description |
| --- | ---|
| -e file | file exists    |
| -d file | file exists and is directory |
| -f file | file exists and is regular file |
| -L file | file exists and is symbolic link |
| -r file | file exists and is readable |
| -w file | file exists and is writable |
| -x file | file exists and is exectuable |
| -s file | file exists and size is greater than zero |
| -S file | file exists and is a network socket |

- Check ``file_status.sh`` code for implementation

### Loops

- While
 ```
 while [ expression ]

do 

    [ while_block_to_execute ]

done
 ```

 - for
```
for variable in 1,2,3 .. n

do 

    [ for_block_to_execute ]

done

```

- until

```
until [ expression ] 

do 

    [ until_block_to_execute ]

done
```


