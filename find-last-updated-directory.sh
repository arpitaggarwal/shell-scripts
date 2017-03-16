#!/bin/bash

path="/Users/ArpitAggarwal/shell-scripts/*"
backupdir=$(find $path -type d -prune | tail -n 1)
echo $backupdir
