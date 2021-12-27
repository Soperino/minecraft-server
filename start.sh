#!/bin/sh

jarfile="JARFILE"
cd "${0%/*}"
echo "${0%/*}"
java -Xmx8G -Xms3G -jar "$jarfile" nogui -o true
