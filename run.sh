#!/bin/sh
# Amazon Route53 to BIND export script

echo "What is the filename for your list of domains? "
read domainlist
sh ./scripts/export.sh
echo "Export completed."
