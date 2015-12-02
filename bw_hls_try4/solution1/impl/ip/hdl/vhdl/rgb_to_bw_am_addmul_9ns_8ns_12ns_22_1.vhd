
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_DSP48_0 is
port (
    a: in std_logic_vector(9 - 1 downto 0);
    b: in std_logic_vector(8 - 1 downto 0);
    c: in std_logic_vector(12 - 1 downto 0);
    p: out std_logic_vector(22 - 1 downto 0));

end entity;

architecture behav of rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_DSP48_0 is
    signal a_cvt: unsigned(10 - 1 downto 0);
    signal b_cvt: unsigned(10 - 1 downto 0);
    signal c_cvt: unsigned(12 - 1 downto 0);
    signal p_cvt: unsigned(22 - 1 downto 0);

begin

    a_cvt <= resize(unsigned(a), 10);
    b_cvt <= resize(unsigned(b), 10);
    c_cvt <= unsigned(c);
    p_cvt <= resize(((unsigned ( a_cvt) + unsigned (b_cvt)) * unsigned (c_cvt)), 22);
    p <= std_logic_vector(p_cvt);

end architecture;

Library IEEE;
use IEEE.std_logic_1164.all;

entity rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1 is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        din2 : IN STD_LOGIC_VECTOR(din2_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1 is
    component rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_DSP48_0 is
        port (
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            c : IN STD_LOGIC_VECTOR;
            p : OUT STD_LOGIC_VECTOR);
    end component;



begin
    rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_DSP48_0_U :  component rgb_to_bw_am_addmul_9ns_8ns_12ns_22_1_DSP48_0
    port map (
        a => din0,
        b => din1,
        c => din2,
        p => dout);

end architecture;


