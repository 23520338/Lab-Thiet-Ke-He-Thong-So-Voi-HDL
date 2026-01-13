library verilog;
use verilog.vl_types.all;
entity final is
    port(
        clk_50m         : in     vl_logic;
        rst             : in     vl_logic;
        load_en         : in     vl_logic;
        \in\            : in     vl_logic_vector(3 downto 0);
        cnt             : in     vl_logic_vector(1 downto 0);
        hex0            : out    vl_logic_vector(6 downto 0)
    );
end final;
