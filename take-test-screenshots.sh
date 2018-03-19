#!/bin/bash

# Take test Screenshots

SOURCE_JS=('compiled/rectangle-brand-funded.js' 'compiled/rectangle-countdown.js' 'compiled/rectangle-default.js' 'compiled/testas-player.js')

for js_file in ${SOURCE_JS[*]}; do
	printf "\n"
	printf "Taking $js_file screenshot ..."
	node $js_file
	printf "\n"
done