#!perl -w

@names = qw(fred betty barney dino wilma pebbles bam-bam);

print("@names\n");
print("enter numbers:\n");
@numbers = <STDIN>;
foreach(@numbers){
	print("$names[$_] ");
}
