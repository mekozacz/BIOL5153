#! /usr/bin/perl

# Add up some odd numbers
$count = 0;
$sum = 0;
$increment = 2;
$max = 18;

while( $count <= $max ){
  print $count += $increment, "\n";
  $sum += $count
}

print "The final count: $count\n";
print "The sum total was: $sum\n";

exit;

