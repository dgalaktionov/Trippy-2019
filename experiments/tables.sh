#!/bin/bash

cat tables.txt | sed -e 's/+/\t/g' -e 's/\t/ \& /g' -e 's/$/ \\\\/g' | xclip -selection clipboard