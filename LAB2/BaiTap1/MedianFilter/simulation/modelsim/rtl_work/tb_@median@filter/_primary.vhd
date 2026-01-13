library verilog;
use verilog.vl_types.all;
entity tb_MedianFilter is
    generic(
        WIDTH           : integer := 430;
        HEIGHT          : integer := 554;
        SIZE            : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of HEIGHT : constant is 1;
    attribute mti_svvh_generic_type of SIZE : constant is 3;
end tb_MedianFilter;
