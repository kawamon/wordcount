#!/usr/bin/env perl

while (<>) {
    chomp();
    (@words) = split /\W+/;
    foreach $w (@words) {
        print "$w\t1\n"
    }
}
