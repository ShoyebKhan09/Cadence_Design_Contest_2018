library IEEE;
use IEEE.std_logic_1164.all;

entity neuron_final is
generic(
NUM_INPUTS : positive :=8);
port(
d_i : in std_logic_vector(NUM_INPUTS-1 downto 0);
w_i : in std_logic_vector(NUM_INPUTS-1 downto 0);

neuron_output : out std_logic
);
end neuron_final;

architecture vhdl_rtl of neuron_final is

--component xor_lut
--port( x_data : in std_logic;
---      y_data : in std_logic;
--      out_data : out std_logic
--  );
--end component;

signal x_o : std_logic_vector(NUM_INPUTS-1 downto 0);

signal y_o : integer range -8 to 5 ;



begin
process(d_i,w_i)
begin


--GEN_ADD: for i in 0 to NUM_INPUTS-1 generate
--xor_lut_1 : xor_lut port map(d_i(i),w_i(i),x_o(i));
--end generate;
x_o <= d_i xnor w_i;

end process;

number_of_ones_2 : entity work.number_of_ones_o port map(x_o,y_o);

process(y_o)
begin
if(y_o <= 0)  then
neuron_output <='0';
else
neuron_output <='1';
end if;
end process;


end vhdl_rtl;