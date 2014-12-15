#!/usr/bin/env perl

$sum = 0;
$last = "";
while(<>) {
    chomp;
    ($key,$value) = split /\t/;
    $last = $key if $last eq "";
    if ($last ne $key) {
        print "$last\t$sum\n";
        $last = $key;
        $sum = 0;
    }
    $sum += $value;
}
print "$key\t$sum\n";
