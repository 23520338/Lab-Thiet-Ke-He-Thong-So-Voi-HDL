library verilog;
use verilog.vl_types.all;
entity lab1 is
    generic(
        state0          : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        state1          : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        state2          : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        state3          : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        state4          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        state5          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        state6          : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        state7          : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1);
        mssv0           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        mssv1           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        mssv2           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        mssv3           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        mssv4           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        mssv5           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        mssv6           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        mssv7           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0)
    );
    port(
        \in\            : in     vl_logic_vector(3 downto 0);
        cnt             : in     vl_logic_vector(1 downto 0);
        load_en         : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of state0 : constant is 1;
    attribute mti_svvh_generic_type of state1 : constant is 1;
    attribute mti_svvh_generic_type of state2 : constant is 1;
    attribute mti_svvh_generic_type of state3 : constant is 1;
    attribute mti_svvh_generic_type of state4 : constant is 1;
    attribute mti_svvh_generic_type of state5 : constant is 1;
    attribute mti_svvh_generic_type of state6 : constant is 1;
    attribute mti_svvh_generic_type of state7 : constant is 1;
    attribute mti_svvh_generic_type of mssv0 : constant is 1;
    attribute mti_svvh_generic_type of mssv1 : constant is 1;
    attribute mti_svvh_generic_type of mssv2 : constant is 1;
    attribute mti_svvh_generic_type of mssv3 : constant is 1;
    attribute mti_svvh_generic_type of mssv4 : constant is 1;
    attribute mti_svvh_generic_type of mssv5 : constant is 1;
    attribute mti_svvh_generic_type of mssv6 : constant is 1;
    attribute mti_svvh_generic_type of mssv7 : constant is 1;
end lab1;
