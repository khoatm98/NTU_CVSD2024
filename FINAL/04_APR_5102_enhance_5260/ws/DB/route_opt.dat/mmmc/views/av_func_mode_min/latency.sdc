set_clock_latency -source -early -min -rise  -0.421687 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -early -min -fall  -0.439325 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -late -min -rise  -0.421687 [get_ports {i_clk}] -clock i_clk 
set_clock_latency -source -late -min -fall  -0.439325 [get_ports {i_clk}] -clock i_clk 
