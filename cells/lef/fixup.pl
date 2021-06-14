#!/usr/bin/perl -w
use strict;

my %layersToDo=("li1"=>1,"mcon"=>1,"locali"=>1,"metal1"=>1);

foreach my $origlef (<orig/*.lef>)
{
  my $lef=$origlef; $lef=~s/^orig\///;	
  my $mag="../mag/$lef"; $mag=~s/\.lef$/\.mag/;
  print STDERR "origlef: $origlef\n lef: $lef\n mag:$mag\n";
  my $obs="";

  if(open(MAGIN,"<$mag"))
  {
    print "Extracting Obstruction information from $mag\n";	  
    my $active=0;
    while(<MAGIN>)
    {
      if(m/<< (\w+) >>/)
      {
        $active=defined($layersToDo{$1});
	$obs.="    LAYER $1 ;\n" if($active);
      }
      if(m/rect (-?\d+) (-?\d+) (-?\d+) (-?\d+)/ && $active)
      {
        $obs.="RECT ( ".($1/100.0)." ".($2/100.0)." ) ( ".($3/100.0)." ".($4/100.0)." ) ;\n";
      }
    }
    close MAGIN;
  }
  else
  {
     print "ERROR: Could not open magic file $mag : $!\n";
  }

  #print "$mag\n$obs\n";
  #next;

  my $cell=$lef; $cell=~s/\.lef//;
  print "$lef\n";
  open LEFIN,"<orig/$lef";
  open LEFOUT,">$lef";
  our $pin="";
  my $filled=0;
  while(<LEFIN>)
  {
    $pin=$1 if(m/PIN (\w+)/);	  
    s/SYMMETRY X Y R90/SITE unit/;
    s/SITE CORE/SYMMETRY X Y R90/;
    #s/SITE unit.*//;
    s/metal2/met1/;
    s/VDD/vdd/;
    s/GND/gnd/;
    s/USE SIGNAL/USE POWER/ if($pin eq "VDD");
    s/USE SIGNAL/USE GROUND/ if($pin eq "GND");

    if(m/^END (\w+)/ && !$filled)
    {
      print LEFOUT "  OBS\n$obs\n  end\n";
    }

    print LEFOUT $_;	   
    #print $_;
    if(m/FOREIGN/)
    {
      if(open(MAG,"<$mag"))
      {
        while(<MAG>)
        {
          if(m/rect 0 0 (\d+) (\d+)/)
          {
            my $h=$1;
            my $w=$2;
            my $factor=0.01;
            print "$lef -> ".($1*$factor)." ".($2*$factor)."\n";
            print LEFOUT " SIZE ".($1*$factor)." BY ".($2*$factor)." ;\n";
          }
          if(m/string FIXED_BBOX 0 0 (\d+) (\d+)/)
          {
            my $h=$1;
            my $w=$2;
            my $factor=0.01;
            print "$lef -> ".($1*$factor)." ".($2*$factor)."\n";
            print LEFOUT " SIZE ".($1*$factor)." BY ".($2*$factor)." ;\n";
          }

	}
        close MAG;
      }
    }
  }
  close LEFOUT;
  close LEFIN;

  open MAGIC,"|magic -dnull -noconsole -T sky130A";
  print MAGIC "lef read $lef\n";
  print MAGIC "load $cell\n";
  print MAGIC "lef write $lef\n";
  print MAGIC "quit\n";
  close MAGIC;
}
