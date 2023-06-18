library IEEE;
use IEEE.std_logic_1164.all;

entity neural_network_top is
--generic(
--Number_of_features : positive :=3; 
--Number_of_inputs  : positive :=3 );
port( 
x : in std_logic_vector(31 downto 0);
w : in std_logic_vector(31 downto 0) ;
w_layer_2 : in std_logic_vector(15 downto 0);
neuron_top_output : out std_logic_vector (1 downto 0)
);
end neural_network_top;

architecture vhdl_rtl of neural_network_top is
signal x_xor : std_logic_vector(7 downto 0);


begin
----Layer 1--------------------------------------------------------------------------
neuron_1 : entity work.neuron_input port map(x(3 downto 0),w(3 downto 0),x_xor(0));
neuron_2 : entity work.neuron_input port map(x(7 downto 4),w(7 downto 4),x_xor(1));
neuron_3 : entity work.neuron_input port map(x(11 downto 8),w(11 downto 8),x_xor(2));
neuron_4 : entity work.neuron_input port map(x(15 downto 12),w(15 downto 12),x_xor(3));
neuron_5 : entity work.neuron_input port map(x(19 downto 16),w(19 downto 16),x_xor(4));
neuron_6 : entity work.neuron_input port map(x(23 downto 20),w(23 downto 20),x_xor(5));
neuron_7 : entity work.neuron_input port map(x(27 downto 24),w(27 downto 24),x_xor(6));
neuron_8 : entity work.neuron_input port map(x(31 downto 28),w(31 downto 28),x_xor(7));

-----Layer 2-----------------------------------------------------------------------------
neuron_9 : entity work.neuron_final port map(x_xor(7 downto 0),w_layer_2(7 downto 0),neuron_top_output(0));
neuron_10 : entity work.neuron_final port map(x_xor(7 downto 0),w_layer_2(15 downto 8),neuron_top_output(1));
--neuron_11 : entity work.neuron_final port map(x_xor(7 downto 0),w_layer_2(23 downto 16),neuron_top_output(2));


end vhdl_rtl;
