#!/bin/bash
set +x

FILE_LIST=$(ls *.json)

for file in $FILE_LIST
do
    ruby -e "require 'json'; f = File.read('${file}'); JSON.parse(f)" > /dev/null 2>&1
    success=$?
    if [ $success == 0 ]; then
        echo -e "\e[1;34mConfig file '${file}' validated.\e[0m"
    else
        failures[${#failures[*]}]="${file}"
    fi
done
[ ${#failures[*]} == 0 ] && echo -e "\e[1;32mAll config files are valid\e[0m" && exit 0
[ ${#failures[*]} != 0 ] && echo -e "The following config files don't contain valid json: \e[1;31m${failures[*]}\e[0m" && exit 1