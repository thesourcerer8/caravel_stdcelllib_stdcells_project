#!/usr/bin/perl -w

my $width=0.48;
my $height=3.33;

our $nextla=$height*7;

my $STDCELLLIB=$ENV{'STDCELLLIB'} || "/home/philipp/libresilicon/StdCellLib";

foreach my $mag(<$STDCELLLIB/Catalog/*.mag>)
{
  next if((-s $mag)<=50);
  #print `ls -la $mag`;
  my $cell=$mag; $cell=~s/\.mag$/.cell/;
  next unless(-f $cell);
  my $lib=$mag; $lib=~s/\.mag$/.lib/;
  next unless(-f $lib);
  my $name=""; $name=$1 if($mag=~m/([\w\-\.]+)\.mag$/);
  next unless(-f $ENV{'CARAVEL'}."/cells/mag/$name.mag");

  print "$name ".($width*80)." $nextla N\n";
  $nextla+=$height*2;
}
