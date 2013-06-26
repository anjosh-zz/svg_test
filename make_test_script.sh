#! /bin/bash

tags=$(cat tags)

for t in $tags; do
  file=testing/"$t".svg
  echo '<svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink">' > $file
  egrep --max-count=10 "<$t" href >> $file
  echo '</svg>' >> $file
done
