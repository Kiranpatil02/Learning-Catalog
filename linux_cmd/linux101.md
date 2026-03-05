## Viewing files

### cat  - prints file contents
```
cat <filename>
```

### head - prints first 10 lines of file contents
```
head <filename>
```
- To print n lines
```
head -n <filename>
```
### tail - prints last 10 lines file contents
```
tail <filename>
``` 
```
tail -n <filename>
``` 

### more - displays file contents with forward and backward navigation
- Displays as much as possible which fits in the screen
```
more <filename>
```
### less - similar to more, but one page at a time
```
less <filename>
```

## Text processing

- grep
- sed
- sort

### grep
- Used to search particular word in text file/files
```
grep <word_to_search> <filename>
```
### sed
- replace text in a file
```
sed 's/<text_to_replace>/<replacement_text>/' <filename>
```

### sort
- sorts in increasing order by default
- The content is not reflected in original file
```
sort <filename>
```

## I/O Redirection

- Instead of displaying outputs on CLI, we use operators to redirect output of the command to files.

```
ls > example.txt
```
- Here the ``ls`` outputs are saved into example.txt file
- Similarly
```
echo "Hello world" > hello.txt
```
- Below ``sort`` first sorts and the output is passed as input to ``uniq`` which prints the unique from the input