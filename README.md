# Caravel User Project

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![UPRJ_CI](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml) [![Caravel Build](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml)

# Libresilicon StdCellLib LS130 - SKY130 Test-wafer

This project is a test-wafer which puts various LS130 cells into the user-area of a Caravel harness for taping the LS130 cells out on the Skywater 130nm process.

The LS130 cells are generated with the https://github.com/thesourcerer8/StdCellLib flow (which uses Librecell's lclayout and lctime), using the Tech.SKY130 configuration.

The build report can be seen here: https://pdk.libresilicon.com/dist/StdCellLib_20210618/Catalog/buildreport.html
The cells were copied into this repository to avoid additional dependencies: https://github.com/thesourcerer8/caravel_stdcelllib_stdcells_project/tree/main/cells

A generator was developed to generate a Verilog file for all the cells that places each cell once and connects it to the IOs of the harness:
https://github.com/thesourcerer8/caravel_stdcelllib_stdcells_project/blob/main/scripts/generator.pl 
The script needs to be run from the Catalog directory of your StdCellLib. The output is then used as https://github.com/thesourcerer8/caravel_stdcelllib_stdcells_project/blob/main/verilog/rtl/user_proj_example.v

In the end I adapted https://github.com/thesourcerer8/caravel_stdcelllib_stdcells_project/blob/main/openlane/user_proj_example/config.tcl to use the cells as blackbox cells.

Build process:

git clone git@github.com:thesourcerer8/caravel_stdcelllib_stdcells_project.git

cd caravel_stdcelllib_stdcells_project

# Now please adapt the pathes in the file env.sh where necessary
. ./env.sh

make install    # install caravel-lite

make pdk        # clone and build pdk

make openlane   # clone and build build openlane

scripts/deploy2caravel.sh # This takes all the cells from the StdCellLib/Catalog directory and puts them on the Caravel

make user_proj_example # This builds the Caravel

Refer to [README](docs/source/index.rst) for the Caravel documentation. 
