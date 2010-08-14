#!perl -w

print("Begin entering lines:\n");

@lines = <STDIN>;

print("And in reverse order they are:\n");

foreach(reverse(@lines)) {
	print();
}
$num = @lines;
print("num of elements: $num");
