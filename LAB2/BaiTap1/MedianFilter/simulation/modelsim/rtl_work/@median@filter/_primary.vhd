library verilog;
use verilog.vl_types.all;
entity MedianFilter is
    generic(
        WIDTH           : integer := 430
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        pixel_valid     : in     vl_logic;
        pixel_in        : in     vl_logic_vector(7 downto 0);
        pixel_out_valid : out    vl_logic;
        pixel_out       : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end MedianFilter;
