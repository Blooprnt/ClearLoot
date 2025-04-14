#!/bin/bash

rm -f index.rs2f

echo 'meta {' > index.rs2f
echo '  name = "ClearLoot";' >> index.rs2f
echo '}' >> index.rs2f

cat modules.txt | while read line || [[ -n $line ]]; do
  cat $line/module.rs2f >> index.rs2f
done
