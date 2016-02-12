#!perl

open(INPUT,"<InClass.java");

@lines = <INPUT>;

close(INPUT);
print @lines;

print "\n\n";
print $lines[1];

$program = join('',@lines);

print $program;

#removing multi-line comments
$program =~ s/\/\*(\n|.)*?\*\//COMMENT/g;

print $program;

#removing single-line comments
$program =~ s/\/\/.*\n/SINGLECOMMENT/g;
print $program;

#replacing multiple spaces with a single space
$program =~ s/  +/ /g/;
print $program;

print "checking import statements";
$program =~ s/import [a-z]\w*?/IMPORT/g;
print $program;


$program =~ s/\n//g;
print $program;
