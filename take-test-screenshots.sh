#!/bin/bash

# Take test Screenshots

#First argument is optional,  it is an int of how many seconds to wait before running this script.  Default value is 0.5
if [[ $1 = '' ]]; then
	sleep 0.5
else
	sleep $1
fi

SOURCE_JS=('compiled/rectangle-brand-funded.js' 'compiled/rectangle-countdown.js' 'compiled/rectangle-default.js' 'compiled/testas-player.js')

for js_file in ${SOURCE_JS[*]}; do
	printf "\n"
	printf "Taking $js_file screenshot ..."
	node $js_file
	printf "\n"
done