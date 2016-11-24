#!/bin/sh
for LINE in $(cat $domainlist); do touch zones/$LINE.db && cli53 export --full $LINE > zones/$LINE.db; done
