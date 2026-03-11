#!/bin/bash

echo "Enter the path"
read path # Here path is variable

echo "How deep in directory you want to go?"
read depth # ANother variable

# $ dollar sign is used to reference variable
echo "All files at path" $path 
du -d $depth -all -h $path