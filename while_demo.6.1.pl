#! /usr/bin/perl

# Estimate user's age
print "Type the current year, please.\n";
$max = <>;
chop($max);
$sum = 0;

print "When were you born? (just the year)\n";
$count = <>;
chop($count);

$age = $max - $count;

print "Then, you have been alive all these years:\n";

while( $count <= $max ){
  print $count, "\n";
  $sum += $count;
  $count += 1;
}

print "You are approximately $age years old\n";
print "And the sum total of all the numbers of this list was: $sum\n";

exit;
