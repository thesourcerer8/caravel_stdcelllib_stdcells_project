#!/usr/bin/perl -w

foreach my $mag (<*.mag>)
{
  my $cell=$mag; $cell=~s/\.mag$//;	
  #print "Checking $cell\n";
  my $STDCELLLIB=$ENV{'STDCELLLIB'};
  my $drc=0;
  if(open(IN,"<$STDCELLLIB/Catalog/$cell.drc"))
  {
    while(<IN>)
    {
      $drc=$1 if(m/Number of DRC errors: (\d+)/);
    }
    close IN;
  }
  else
  {
    print "Warning: Could not find DRC: $STDCELLLIB/$cell.drc $!\n";
    $drc=1;
  }
  if($drc)
  {
    print "Removing cell with $drc DRC issues: $cell\n";
    unlink $mag;
    unlink "../lef/orig/$cell.lef";
    unlink "../lef/$cell.lef";
    unlink "../gds/$cell.gds";
    unlink "../lib/$cell.lib";
  }

}

