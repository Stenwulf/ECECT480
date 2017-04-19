#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Wed Apr 12 10:41:14 2017                
#                                                     
#######################################################

#@(#)CDS: Encounter v14.28-s033_1 (64bit) 03/21/2016 13:34 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute v14.28-s005 NR160313-1959/14_28-UB (database version 2.30, 267.6.1) {superthreading v1.25}
#@(#)CDS: CeltIC v14.28-s006_1 (64bit) 03/08/2016 00:08:23 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 14.28-s002 (64bit) 03/21/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 14.28-s007_1 (64bit) Mar  7 2016 23:11:05 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v14.28-s006
#@(#)CDS: IQRC/TQRC 14.2.2-s217 (64bit) Wed Apr 15 23:10:24 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
set init_verilog unmapped/aes.v
init_design
windowSelect 0.000 0.093 0.001 0.093
setBottomIoPadOrient {}
setBottomIoPadOrient {}
setBottomIoPadOrient {}
set init_lef_file {/mnt/class_data/ecec571-f2015/IBM_CMOS7RF_p18u/Digital_KIT/ibm_cmos7rf_std_cell_20111130/std_cell/v.20111130/lef/cmos7rf_7ML_tech.lef /mnt/class_data/ecec571-f2015/IBM_CMOS7RF_p18u/Digital_KIT/ibm_cmos7rf_std_cell_20111130/std_cell/v.20111130/lef/ibm_cmos7rf_sc_12Track.lef}
init_design
setBottomIoPadOrient {}
setBottomIoPadOrient {}
save_global aes_cipher_top.globals
set init_gnd_net vss
set init_design_settop 0
set init_mmmc_file aes_cipher_top.view
set init_pwr_net vdd
init_design
setBottomIoPadOrient {}
setBottomIoPadOrient {}
