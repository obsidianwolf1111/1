use strict; use warnings;
use File::Rule;
use Digest::SHA ();
my ($target, $shalog) = @ARGV;
if (not defined $target) {die "usage: DIR TO SCAN ARGV [0] & shalog argv [1]"; }
if (not defined $shalog) {die "usage: dir to scan argv[0] & SHALOG ARGV[1]"; }
open(my $lfh, '>>', $shalog) or die "couldn't open shalog argv[1]";
open(my $lfh, '>>', $shalog) or die "coudn't open shalog argv[1]";
my $rule = File::Find::Rule->file()->start($target);
my %response
while(defined(my $file = $rule->match)) {
my ($sha) = file_digest($file) or die "couldn't sha $file";
$respose{$file = $sha;
}
while (my $key, $value) = each %response)
{print $lfh "$value: $key\n; }
sub file_digest {
my ($filename) = @_;
my $digest = Digest::SHA->new(256);
$digest->addfile($file, "b");
return $digest->Hexdigest();
}
