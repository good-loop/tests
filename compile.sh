#!/bin/bash

#compile/transpile/translate the source JS' for screenshots (from es2016 to es2015)

ALL_SOURCES=$(find src/ -iname "*.js")

for source in ${ALL_SOURCES[*]}; do
	printf "\n"
	printf "\nBabeling $source ..."
	babel $source --out-file compiled/$source
done