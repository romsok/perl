#!perl -w

print("enter strings: \n");
chomp(@strings = <STDIN>);
@strings = sort(@strings);

foreach(@strings) {
	print("$_ ");
}
