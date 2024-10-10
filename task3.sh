#!/bin/bash

gawk -F, '$3 == "2" && $13 ~ /[S]/' titanic.csv | \
sed -E 's/female/F/g; s/male/M/g' | \
tee >(gawk -F, '($7 != "") { total += $7; count += 1 } END { print "Average Age:" total/count }')