#!/bin/perl
use strict; 
use warnings; 
use IO::Socket; 

my $socket = new IO::Socket::INET ( 
PeerAddr => 'ixchel', 
PeerPort => '80', 
Proto => 'tcp', 
); 

die "Could not create socket: $!n" unless $socket; 

print "Enter data to send:\n"; 
my $data = <STDIN>; 
chomp $data; 
print $socket "Data received from user: '$data'\n"; 

close($socket); 

