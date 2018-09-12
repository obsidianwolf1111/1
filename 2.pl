use strict; use warnings;
use File::Copy;
my ($list, $target, $dump) =@ARGV;
die "ARG1 list ARG2 target ARG4 dump" if (!definded $dump);
$dir =~ s%/\z%%;
open(my $lfh, '<', $list);
my @list = readline $lfh;
close $lfh; chomp @list;
my $cnt = 0;
for my $line (@list)
{
if (-e $f)
{ copy($f, $dump) or printf("FAIL %s cnt: %d\n", $f, $cnt++); }
}
