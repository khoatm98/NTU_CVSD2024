add_ndr -width {METAL7 0.4 METAL8 0.88 METAL5 0.4 METAL6 0.4 METAL3 0.4 METAL4 0.4} -spacing {METAL7 0.42 METAL8 0.92 METAL5 0.42 METAL6 0.42 METAL3 0.42 METAL4 0.42} -min_cut {VIA78 2 } -name CTS_2W2S
create_route_type -name trunk_rule -non_default_rule CTS_2W2S -top_preferred_layer METAL7 -bottom_preferred_layer METAL6 -shield_net VSS
create_route_type -name leaf_rule -non_default_rule CTS_2W2S -top_preferred_layer METAL5 -bottom_preferred_layer METAL4
setNanoRouteMode -routeTopRoutingLayer 8 -routeBottomRoutingLayer 0
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type leaf route_type leaf_rule

set_db cts_buffer_cells {CLKBUFX20 CLKBUFX16 CLKBUFX12 CLKBUFX8 CLKBUFX6 CLKBUFX4}
set_db cts_inverter_cells {CLKINVX20 CLKINVX16 CLKINVX12 CLKINVX8 CLKINVX6}
set_db cts_clock_gating_cells {TLATNTSCAX20 TLATNTSCAX16 TLATNTSCAX12 TLATNTSCAX8 TLATNTSCAX6 TLATNTSCAX4}
set_db cts_use_inverters true
set_db cts_target_max_transition_time 600ps
set_db cts_target_max_transition_time_trunk 1ns
set_db cts_target_max_transition_time_leaf 600s
set_db cts_target_skew 300ps
