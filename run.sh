#!/bin/sh
# Amazon Route53 to BIND export script

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
