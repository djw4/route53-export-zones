#!/bin/sh
# Amazon Route53 to BIND export script
# Daniel Wagner 2016

# Check cli53 is installed
command cli53 -v >/dev/null 2>&1 || { echo >&2 "I require cli53 but it's not installed.  Aborting."; exit 1; }

# Setup
touch filelocation

# Find out where the domain list is and store it
echo "What is the filename for your list of domains? "
read domainlist
echo $domainlist > filelocation

# Run the main script
sh ./scripts/export.sh

# Cleanup
rm -f filelocation
echo "Export completed."
