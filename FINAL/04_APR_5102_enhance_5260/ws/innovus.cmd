#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Dec 13 21:28:57 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set eco_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set enc_enable_print_mode_command_reset_options 1
set init_gnd_net VSS
set init_lef_file {../library/lef/tsmc13fsg_8lm_cic.lef ../library/lef/antenna_8.lef}
set init_mmmc_file ../design_data/MMMC/mmmc.view
set init_pwr_net VDD
set init_top_cell ed25519
set init_verilog ../design_data/core_design/ed25519_syn.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 96
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set init_verilog ../design_data/core_design/ed25519_syn5102_enhance.v
init_design
init_design
init_design
set init_verilog ../design_data/core_design/ed25519_syn.v
set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
setMultiCpuUsage -localCpu 16
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set eco_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set enc_enable_print_mode_command_reset_options 1
set init_gnd_net VSS
set init_lef_file {../library/lef/tsmc13fsg_8lm_cic.lef ../library/lef/antenna_8.lef}
set init_mmmc_file ../design_data/MMMC/mmmc.view
set init_pwr_net VDD
set init_top_cell ed25519
set init_verilog ../design_data/core_design/ed25519_syn.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 96
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VDD -type net -net VDD
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VSS -type net -net VSS
saveDesign DB/init
setDesignMode -process 130
floorPlan -site TSM13SITE -r 1 0.6 6 6 6 6
saveIoFile -locations -temp ed25519.save.io
loadIoFile ed25519.save.io -ECO
init_design
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VDD -type net -net VDD
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VSS -type net -net VSS
saveDesign DB/init
setDesignMode -process 130
floorPlan -site TSM13SITE -r 1 0.6 6 6 6 6
saveIoFile -locations -temp ed25519.save.io
loadIoFile ed25519.save.io -ECO
saveDesign DB/floorplan
