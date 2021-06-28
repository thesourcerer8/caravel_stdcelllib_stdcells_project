#!/usr/bin/perl -w
use strict;


foreach my $mag (<*.mag>)
{
  my $name=$mag; $name=~s/\.mag$//;
  system "cp $mag $mag.beforemagic";

  open MAGIC,"|magic -dnull -noconsole -T sky130A $mag";
print MAGIC <<EOF
box -10 683 5210 778
erase locali
box -49 -114 5210 -17
erase locali
save
gds
quit
EOF
;
  close MAGIC;
  system "mv $name.gds ../gds/$name.gds";
}
