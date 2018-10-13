while (<>) {
my ($hours, $minutes, $seconds) = m/(\d+):(\d+):(\d+)/;
print $hours . " ". $minutes . " " . $seconds . "\n"; }
