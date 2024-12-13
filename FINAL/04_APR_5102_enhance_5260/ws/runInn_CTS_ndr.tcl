setMultiCpuUsage -localCpu 16

source CHIP.conf
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


setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer METAL8 -stacked_via_bottom_layer METAL1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top METAL3 bottom METAL3 left METAL2 right METAL2} -width {top 2 bottom 2 left 2 right 2} -spacing {top 0.24 bottom 0.24 left 0.24 right 0.24} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None -use_wire_group 1 -use_wire_group_bits 1 -use_interleaving_wire_group 1

addStripe -nets {VDD VSS} -layer METAL4 -direction vertical -width 2 -spacing 0.24 -set_to_set_distance 300 -start_from left -start_offset 300 -stop_offset 0 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit METAL8 -padcore_ring_bottom_layer_limit METAL1 -block_ring_top_layer_limit METAL8 -block_ring_bottom_layer_limit METAL1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin { standardcell} -skip_via_on_wire_shape { noshape }

addStripe -nets {VDD VSS} -layer METAL3 -direction horizontal -width 2 -spacing 0.24 -set_to_set_distance 300 -start_from bottom -start_offset 200 -stop_offset 0 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit METAL8 -padcore_ring_bottom_layer_limit METAL1 -block_ring_top_layer_limit METAL8 -block_ring_bottom_layer_limit METAL1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }

setSrouteMode -viaConnectToShape { ring stripe blockring }
sroute -connect { corePin } -layerChangeRange { METAL1(1) METAL8(8) } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { METAL1(1) METAL8(8) } -nets { VDD VSS } -allowLayerChange 1 -targetViaLayerRange { METAL1(1) METAL8(8) }


verify_drc
verify_connectivity

saveDesign DB/powerplan


createBasicPathGroups -expanded
report_path_groups
place_opt_design

saveDesign DB/place

setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -preCTS

saveDesign DB/place_opt

setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -preCTS

saveDesign DB/place_opt2

source ./cts_ndr.tcl -echo -verbose
update_constraint_mode -name func_mode -sdc_files ../design_data/core_design/ed25519_cts.sdc
create_ccopt_clock_tree_spec -file ./ccopt.spec
source ./ccopt.spec
ccopt_design -cts
saveDesign DB/cts

setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -postCTS
saveDesign DB/cts_opt

addTieHiLo -cell {TIEHI TIELO} -prefix LTIE
setNanoRouteMode -quiet -routeInsertAntennaDiode 1
setNanoRouteMode -quiet -routeAntennaCellName ANTENNA
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTdrEffort 10
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
setAnalysisMode -cppr both -clockGatingCheck true -timeBorrowing true -useOutputPinCap true -sequentialConstProp false -timingSelfLoopsNoSkew false -enableMultipleDriveNet true -clkSrcPath true -warn true -usefulSkew true -analysisType onChipVariation -log true
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix core_postRoute -outDir timingReports
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix core_postRoute -outDir timingReports
verify_drc
verify_connectivity
saveDesign DB/route

setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -postRoute
optDesign -postRoute -hold
saveDesign DB/route_opt

setAnalysisMode -cppr both -clockGatingCheck true -timeBorrowing true -useOutputPinCap true -sequentialConstProp false -timingSelfLoopsNoSkew false -enableMultipleDriveNet true -clkSrcPath true -warn true -usefulSkew true -analysisType onChipVariation -log true
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix core_postRoute -outDir timingReports
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix core_postRoute -outDir timingReports

verify_drc
verify_connectivity

setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -postRoute
optDesign -postRoute -hold
saveDesign DB/route_opt1

verify_drc
verify_connectivity

setAnalysisMode -cppr both -clockGatingCheck true -timeBorrowing true -useOutputPinCap true -sequentialConstProp false -timingSelfLoopsNoSkew false -enableMultipleDriveNet true -clkSrcPath true -warn true -usefulSkew true -analysisType onChipVariation -log true
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix core_postRoute -outDir timingReports
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix core_postRoute -outDir timingReports

setAnalysisMode -analysisType bcwc
write_sdf -max_view av_func_mode_max -min_view av_func_mode_max -edges noedge -splitsetuphold -remashold -splitrecrem -min_period_edges none ed25519.sdf
saveNetlist ed25519.v

saveDesign DB/chip_finish
