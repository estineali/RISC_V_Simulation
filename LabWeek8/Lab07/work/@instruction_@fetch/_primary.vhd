library verilog;
use verilog.vl_types.all;
entity Instruction_Fetch is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        Instruction     : out    vl_logic_vector(31 downto 0)
    );
end Instruction_Fetch;
