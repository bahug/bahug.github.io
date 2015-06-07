#!/usr/bin/env bash

set -e

for i in `find * -name '*.md'`
do
  INPUT="$i"
  OUTPUT="${INPUT::(-3)}.html"
  echo Creating page from $INPUT as $OUTPUT
  pandoc -s -f markdown -o "$OUTPUT" "$INPUT"
done

