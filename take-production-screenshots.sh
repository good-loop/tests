#!/bin/bash

# Take test Screenshots

SOURCE_JS=('compiled/good-loop-live-demo.js' 'compiled/as-player.js')

for js_file in ${SOURCE_JS[*]}; do
	printf "\n"
	printf "Taking $js_file screenshot ..."
	node $js_file
	printf "\n"
done