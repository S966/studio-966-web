#!/bin/bash
 
apps=(nine-six-six)
 
for app in ${apps[@]}; do
    host="http://$app.herokuapp.com"
    curl  --output /var/log/keep-alive.txt -L $host
done
