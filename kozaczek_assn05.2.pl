#!/usr/bin/perl

# script to extract a feature from a DNA sequence

# the DNA sequence
$DNA = 'ACGGATCCTATCAAATATTTCACATTTTCCTATTATGTCAATGCCAATTGAATCAATgttattagctgtgaattcgaactTTTTGGTATTTTCCGTTTCTTCGGATGATATGATGGGTCAATCATTTGCTTCATTGGTTCCAACGGTGGCAGCTGCGGAATCCGCTATTGGGTTAGCCATTTTCGTTATTACTTTCCGAGTCCGAGGGACTATTGCTGTAGAATTTATTAATAGCATTCAAGGTTAA';

$sequencename = "intron";
$start = 57;
$end = 22;

# coordinates of the subsequence
$extract = substr( $DNA, $start, $end);

# Print to STDOUT in FASTA format
print ">$sequencename\_$start\_$end", "\n";
print $extract, "\n";

exit;

#if( $DNA =~ /([a-cg-t])/ ){
#  print "Found a match\n";
#}else{
#  print "No match\n";
#}

#exit;
