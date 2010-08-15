#!perl -w

use 5.010;

greet('Roma');
greet('Diana');
greet('Katia');
greet('Bobos');

sub greet {
	my $name = shift @_;
	
	state @prev;
	
	print("Hi $name! ");
	
	if(@prev) { print("I\'ve seen @prev here before you!\n");}
	else { print("no one was here before you!\n");}
	
	push(@prev,$name);
}