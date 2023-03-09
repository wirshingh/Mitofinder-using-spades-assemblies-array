How to Run MitoFinder using Spades contains

1. Run "MvSpadesContigs.sh" to rename Spades contig output (contigs.fasta) files with unique individual samples names.

2. Run array builder. Script puts the output in a directory you specify:

bash mf_array_builder_output.sh 
-i : path to input spades contains
-o: path to output directory
-r: path to reference genome
-g: genetic translation table number (single digit number)
 
 
3. Then launch the array:

Source qsub_mf_spades_array.sou


Example:
Commands for running array script:

bash mf_array_builder_output.sh -i /example/input/path/contigs -o /example/output/path/directory/ -g 5 -r /example/path/reference_genome.gb


Then launch the array:

Source qsub_mf_spades_array.sou
