#!/bin/bash

# Select all ruby files in the folder
DIRECTORIO=$1
ALL_RUBY_FILES=$(find $DIRECTORIO -name '*.rb')

for file in $ALL_RUBY_FILES 
do
        echo "expanding tabs on $file"
        expand -i file > ./temporal_file_for_tabs2spaces.file
        cat ./temporal_file_for_tabs2spaces.file > file
done

rm -f ./temporal_file_for_tabs2spaces.file
