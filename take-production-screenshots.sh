#!/bin/bash

if [[ $HOSTNAME = 'butcher' ]]; then
	TESTS_HOME='/home/daniel/winterwell/good-loop/tests'
else
	TESTS_HOME="/home/$USER/winterwell/tests"
fi
# Take test Screenshots

#First argument is optional,  it is an int of how many seconds to wait before running this script.  Default value is 0.5
if [[ $1 = '' ]]; then
	sleep 0.5
else
	sleep $1
fi


SOURCE_JS=("$TESTS_HOME/compiled/good-loop-live-demo.js" "$TESTS_HOME/compiled/as-player.js")

for js_file in ${SOURCE_JS[*]}; do
	printf "\n"
	printf "Taking $js_file screenshot ..."
	node $js_file
	printf "\n"
done