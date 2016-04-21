#!/usr/bin/perl

#set the file name to open
print "Input FASTA file\n";
$input = <>;

# ask for coordinates
print "Start position\n";
$start = <>;

print "End position\n";
$end = <>;

# strand of the feature
print "Would you prefer the F or R Strand?\n";
$strand = <>;

#open the file
open( FASTA, $input ) || die "Can't open $input: $!\n";

my @file = <FASTA>;

# close file 
close( FASTA );
my $file = shift @file;

#my $file = @file;

my @cuchuflito = split( //, "@file" ); # -> it's a regular expresion, en este caso // va a agregar un espacio en blanco en medio de cada elemento de la lista
$file = @cuchuflito;

$file_unido = join( '', @cuchuflito );

#if( $file eq $file_unido ){
#  print '$file and $file_unido are the same', "\n";
#}
#else{
#print "Peligro! Peligro!\n\n";
#}

$counter = 1;
$start = ( $start - 1 );
$lengh = ( $end - $start );

# extracting subsequence
@extracted = splice( @cuchuflito, $start, $lengh );
$name = "gene";
$extracted = join( '', @extracted );

$start = ( $start + 1 );
print ">$name\_$start\_$end\n";
print "$extracted\n\n";

print "$file_unido\n";
#print "@extracted\n";
#print "@cuchuflito\n";
#print "$start, $end and $lengh\n\n"
#}
exit;

# print "$revcomp\n";
