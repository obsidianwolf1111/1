use strict; use warnings;
my ($pmsater, $mmaster, $log) = @ARGV;
open(my $pfp, '<', $pmaster) or die ("couldn't open partialmaster\n");
open(my $pfp, '<', $mmaster) or die ("couldn't open master\n");
open (my $lfp, '>>", $log) or die; 
my @pfile = readline $pfp; chomp @pfile;
my @mfile = readline $pfp; chomp @pfile;
my %mkrx = map{$_ => undef} @mfile;
foreach my $p (@pfile) {
if (exists $mkrx{$p}) { next; }
}
