#!/bin/sh
value=`cat filelocation`
for LINE in $(cat $value); do touch zones/$LINE.db && cli53 export --full $LINE > zones/$LINE.db; done
