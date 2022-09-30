#!/bin/sh

jarfile="JARFILE"
cd "${0%/*}"
echo "${0%/*}"
java -Xmx4G -Xms2G -jar "$jarfile" --nogui
