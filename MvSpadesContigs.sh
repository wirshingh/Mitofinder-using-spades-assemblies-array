#!/bin/bash

# Will find all contigs.fasta files in the subdirectories of the working directory and 
# copy them to the working directory. During the copy it will prepend said fasta file 
# with the name of it's immediate parent directory.

# After this completes  a new directory called contigs will be created in the 
# working directory into which the renamed fasta files will be moved into.

find . -type f -exec sh -c 'for f do x=${f#./}; if [[ $x == *"/contigs.fasta" ]]; then cp "$x" "${x////_}"; fi done' {} + && mkdir contigs/ && mv *_contigs.fasta contigs/;