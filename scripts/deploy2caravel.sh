#!/bin/bash
#CARAVEL=/media/philipp/Daten/skywater/caravel-stdcelllib-stdcells

if [ -z "$CARAVEL" ]
then
	echo "Environment variables not found, please run '. env.sh' to define them."
	source env.sh || source ../env.sh
	#exit
fi

mkdir $CARAVEL/cells{,/lib,/lef,/lef/orig,/gds,/mag}

rm -f $CARAVEL/cells/lib/*.lib $CARAVEL/cells/lef/orig/*.lef $CARAVEL/cells/lef/*.lef $CARAVEL/cells/gds/*.gds $CARAVEL/cells/mag/*.mag

cd $STDCELLLIB/Catalog

#perl $CARAVEL/scripts/drcexpander.pl $PDK_ROOT/sky130A/libs.tech/magic/sky130A.tech >$CARAVEL/sky130Aexpanded.tech
#perl ../Tools/perl/drcfixall.pl $CARAVEL/sky130Aexpanded.tech

cp *.lib $CARAVEL/cells/lib/
cp outputlib/*.lef $CARAVEL/cells/lef/orig/
cp outputlib/*.gds $CARAVEL/cells/gds/
rm $CARAVEL/cells/mag/demoboard.mag

cd $CARAVEL/cells/lef
perl fixup.pl

cd $CARAVEL/cells/lib
perl removenl.pl >new.lib
mv new.lib libresilicon.lib

perl $CARAVEL/scripts/generator.pl >$CARAVEL/verilog/rtl/user_proj_example.v
perl $CARAVEL/scripts/cells.pl >$CARAVEL/verilog/rtl/user_proj_cells.v
perl $CARAVEL/scripts/placement.pl >$CARAVEL/openlane/user_proj_example/macro_placement.cfg
#for a in $CARAVEL/cells/mag/
#do
#  perl $STDCELLLIB/Tools/perl/drcfix.pl $a
#done

cd $CARAVEL
#bash my.sh
make user_proj_example

echo "Deployment done.";
