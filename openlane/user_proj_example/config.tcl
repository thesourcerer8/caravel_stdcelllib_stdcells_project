# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

set ::env(PDK) "sky130A"
#set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_ls"

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) user_proj_example

set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/user_proj_example.v"
#       $script_dir/../../verilog/rtl/user_proj_cells.v"

set verilog_root $script_dir/../../verilog/
set lef_root $script_dir/../../cells/lef/
set gds_root $script_dir/../../cells/gds/
# Adding the standard cells into OpenLane:
set ::env(EXTRA_LEFS) [glob $script_dir/../../cells/lef/*.lef]
set ::env(EXTRA_LIBS) [glob $script_dir/../../cells/lib/libres*.lib]
set ::env(EXTRA_GDS_FILES)  [glob $script_dir/../../cells/gds/*.gds]
set ::env(VERILOG_FILES_BLACKBOX) "$verilog_root/rtl/user_proj_cells.v"
set ::env(SYNTH_READ_BLACKBOX_LIB) 1
set ::env(CLOCK_TREE_SYNTH) 0
#set ::env(CLOCK_PERIOD) 0
set ::env(RUN_SPEF_EXTRACTION) 0
set ::env(MACRO_PLACEMENT_CFG) $script_dir/macro_placement.cfg

set ::env(DESIGN_IS_CORE) 0

set ::env(CLOCK_PORT) "wb_clk_i"
set ::env(CLOCK_NET) "counter.clk"
set ::env(CLOCK_PERIOD) "10"

set ::env(FP_SIZING) absolute
#set ::env(DIE_AREA) "0 0 900 600"
set ::env(DIE_AREA) "0 0 300 300"

set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg

set ::env(FP_TAPCELL_DIST) 13

set ::env(PL_BASIC_PLACEMENT) 0
set ::env(PL_RANDOM_GLB_PLACEMENT) 1
set ::env(PL_TARGET_DENSITY) 0.5

# If you're going to use multiple power domains, then keep this disabled.
set ::env(RUN_CVC) 0

set ::env(PLACE_SITE) "unit"
set ::env(PLACE_SITE_HEIGHT) "3.330"
set ::env(PLACE_SITE_WIDTH) "0.480"

set ::env(SYNTH_DRIVING_CELL) "sky130_fd_sc_ls__inv_8"
set ::env(ROOT_CLK_BUFFER) "sky130_fd_sc_ls__clkbuf_16"
set ::env(CLK_BUFFER) "sky130_fd_sc_ls__clkbuf_4"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_ls"

set ::env(STD_CELL_POWER_PINS) "VPWR VPB"
set ::env(STD_CELL_GROUND_PINS) "VGND VNB"

# set ::env(GLB_RT_OBS) "met2 0 3519 2920 3540" # Might be needed for precheck

# The following is a workaround on the extraction issue with the power rails in the Libresilicon cells. This should be removed when the reason has been identified and solved:
set ::env(QUIT_ON_ILLEGAL_OVERLAPS) 0

# Maximum layer used for routing is metal 4.
# This is because this macro will be inserted in a top level (user_project_wrapper) 
# where the PDN is planned on metal 5. So, to avoid having shorts between routes
# in this macro and the top level metal 5 stripes, we have to restrict routes to metal4.  
set ::env(GLB_RT_MAXLAYER) 5

# You can draw more power domains if you need to 
#set ::env(VDD_NETS) [list {vccd1}]
#set ::env(GND_NETS) [list {vssd1}]

set ::env(DIODE_INSERTION_STRATEGY) 4 

