#!/bin/bash

echo "Donner minutes "
        read COMMAND
        list=`ps -ef --sort=-start_time|grep -v -e ^UID`
        xminutes=$(date -d "$COMMAND minutes ago" +%s)
        while IFS= read -r line; do
            start=`echo $line|cut -d' ' -f5`
            startdate=$(date -d "$start" +%s)
            if [ $startdate -ge $xminutes ];
            then
                echo --- $line ---    
            fi    
        done <<< "$list"    
        ;;