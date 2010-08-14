#!perl -w

print("\nWhat is your name: \n");
greet(<STDIN>);

sub greet {
	my $name = shift @_;
	
	state $prev;
	
	print("Hi $name! $prev was here before you");
	
	$prev = $name;
}