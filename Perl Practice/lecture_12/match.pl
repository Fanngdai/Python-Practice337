while (<>) {
print if m/foo/; 
print if m/foo/i; 
print if /http:\/\//; 
print if m!http://!; 
print if m{http://};
}
