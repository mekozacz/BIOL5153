#! /usr/bin/perl

$infile = <>;

open( FASTA, $infile ) || die "Can't open $infile: $!\n";
my @file_array;
my @sequences;

while ( $line = <FASTA> ) {

  if( $line =~ /\A>(.*)/ ){
    chomp $line;
    push (@file_array, $1);
 }
  else{ 
    push (@sequences, $line); # -> couldn't get rid of that "\n" :/
 }
}

#print @file_array, "\n\n";
#print $file_array[0], "\n", $file_array[1], "\n\n";
#print $sequences[0], "\n", $sequences[1], "\n\n";

for( $i = 0; $i < @file_array; $i++ ){
  print $file_array[$i], "\n";
  print $sequences[$i], "\n";
}

exit;
