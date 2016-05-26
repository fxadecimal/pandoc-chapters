#!/usr/bin/env bash

chapters=${1:-chapters}

cwd=$(pwd)
echo $cwd
dir="collated" 
collated="$dir/collated"
touch $collated

# Collation
rm ./$dir/collated*

echo -e "[\\\\\\]: # $(date)\n" > $collated
while ((i++)); read -r file; do
	cat $file >> $collated
	echo -e "\n\n---\n" >> $collated
	echo  -e "[\\\\\\]: # $file\n" >> $collated

done <$chapters

# Conversion
# odt
pandoc \
	-s $collated \
	--toc \
	--toc-depth 4 \
	--number-sections \
	--section-divs \
	--chapters \
	--self-contained \
	--standalone \
	--smart \
	--reference-odt ./templates/template.odt \
	-t odt -o "$collated.odt"

# html
pandoc -s $collated \
	--toc --toc-depth 4 \
	--number-sections \
	--section-divs \
	--chapters \
	--self-contained \
	--standalone \
	--smart \
	--css ./templates/template.css \
	-t html5 -o "$collated.html"

echo Written to $dir


