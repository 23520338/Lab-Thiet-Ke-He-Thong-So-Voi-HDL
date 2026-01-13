library verilog;
use verilog.vl_types.all;
entity clk_div_1hz is
    port(
        clk_50m         : in     vl_logic;
        rst_n           : in     vl_logic;
        clk_1hz         : out    vl_logic
    );
end clk_div_1hz;
