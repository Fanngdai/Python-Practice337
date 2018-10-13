# Fanng Dai
# Stony Brook University
# CSE337
# Due March 24th
# Question 3 part 2 of Homework 2

# Write a program that allows the user to input an amount of money in one
# currencies provided above and calculate the corresponding amount in the target
# currency. The program must use a hash of currency ratio pairs and be able to
# handle invalid currency unput.

use strict;
use warnings;

my $current;
my $target;
my $amount;
my $converted;
my %currency = qw(usd 1 eur 0.81 cad 1.29 inr 65.2 jpy 105.75 vnd 22750 krw 1079.43 btc 0.000088);
my @currency_accept = qw(usd eur cad inr jpy vnd krw btc);

print "Exchangeable currency: usd, eur, cad, inr, jpy, vnd, krw, btc\n";

print "Enter the current currency: ";
$current =<STDIN>;
chomp $current;
# insert i after second / to make case insensitive
until(grep(/^$current$/, @currency_accept)) {
  print "We do not trade $current!\n";
  print "Re-enter the current currency: ";
  $current = <STDIN>;
  chomp $current;
}

print "Enter the target currency: ";
$target =<STDIN>;
chomp $target;
# insert i after second / to make case insensitive
until(grep(/^$target$/, @currency_accept)) {
  print "We do not trade $target!\n";
  print "Re-enter the target currency: ";
  $target = <STDIN>;
  chomp $target;
}

print "Enter the amount of money: ";
$amount =<STDIN>;
chomp $amount;
until($amount =~/^[\d]+$/) {
  print "Re-enter the amount of money: ";
  $amount = <STDIN>;
  chomp $amount;
}

# For case insensitive
# $converted = ($amount / $currency{uc $current}) * $currency{uc $target};
$converted = ($amount / $currency{$current}) * $currency{$target};
print "$amount $current is $converted $target.\n";
