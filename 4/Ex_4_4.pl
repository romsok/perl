#!perl -w

my @fred = aboveAverage(100,1..10);
my $aver = average(100,1..10);

print("\n\n\@fred is @fred\n\n");
print("\n\n\$aver is $aver\n\n");

sub aboveAverage {
	my $avg = &average(@_);
	my @abvAvg = ();
	
	foreach(@_) {
		if($_ > $avg) {
			push(@abvAvg,$_);
		}
	}	
	
	return @abvAvg;
}


sub average {
	my $size = @_;
	my $sum = 0;
	
	foreach(@_) {
		$sum += $_;
	}
	
	$sum/$size;
}