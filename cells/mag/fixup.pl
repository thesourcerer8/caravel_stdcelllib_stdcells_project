#!/usr/bin/perl -w
use strict;

foreach my $mag (<*.mag>)
{
  my $name=$mag; $name=~s/\.mag$//;
  system "cp $mag $mag.beforemagic";

  my $width=150;
  my $min=100;
  my $max=200;

  open IN,"<$mag";
  while(<IN>)
  {
    if(m/string FIXED_BBOX 0 0 (\d+) (\d+)/)
    {
      $width=$1; $min=$1-31; $max=$min+31;
      print "min: $min max: $max\nmagic $mag\nbox $min 17 $max 649\n";
    }
  }

my $cmd=<<EOF
snap internal

box 0 683 10000 778
erase locali

box 0 -114 10000 -17
erase locali

box 0 17 31 649
erase locali

box $min 17 $max 649
erase locali

box 0 -17 $width 17
label GND se locali
port make
port use ground
port shape abutment

box 31 17 $min 48
label GND se locali
port make
port use ground
port shape abutment

box 0 649 $width 683
label VDD se locali
port make
port use power
port shape abutment

box 31 618 $min 649
label VDD se locali
port make
port use power
port shape abutment

port renumber
save
gds
quit
EOF
;
  #print $cmd;
  open MAGIC,"|magic -dnull -noconsole -T sky130A $mag";
  print MAGIC $cmd;
  close MAGIC;
  system "mv $name.gds ../gds/$name.gds";
}

