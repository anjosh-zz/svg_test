#! /bin/bash

tags_file='tags'
href_file='href'

tags=$(cat "$tags_file")

for t in $tags; do
  test_file=testing/"$t".svg
  echo '<svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink">' > $test_file
  egrep --max-count=10 "<$t" $href_file >> $test_file
  echo '</svg>' >> $test_file
done
