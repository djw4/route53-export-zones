#!/bin/sh
for LINE in $(cat route53-domains.csv); do touch zones/$LINE.db && cli53 export --full $LINE > zones/$LINE.db; done
