library verilog;
use verilog.vl_types.all;
entity tb_ConvertRGB is
    generic(
        IMG_WIDTH       : integer := 2048;
        IMG_HEIGHT      : integer := 1365;
        TOTAL_PIXELS    : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IMG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of IMG_HEIGHT : constant is 1;
    attribute mti_svvh_generic_type of TOTAL_PIXELS : constant is 3;
end tb_ConvertRGB;
