#! /usr/bin/perl

open (my $fh, "<", "atp1.phy");

my $first;

while ( my $line = <$fh> ) {
  $first++ or next;


  if( $line =~ /[^\w\_\w\n]/ ){
   
    print $line, "\n";

  }else{
   
    print "Nothing";

    }

} 

exit;
