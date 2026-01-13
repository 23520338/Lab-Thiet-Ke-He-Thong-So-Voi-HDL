library verilog;
use verilog.vl_types.all;
entity ConvertRGB is
    port(
        r               : in     vl_logic_vector(7 downto 0);
        g               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        level           : in     vl_logic_vector(3 downto 0);
        gray_out        : out    vl_logic_vector(7 downto 0)
    );
end ConvertRGB;
