sub twoargs {
  $name = $_[0];
  $surname = $_[1];

  print $name." ".$surname."\n";
}

twoargs("hello", "world");
