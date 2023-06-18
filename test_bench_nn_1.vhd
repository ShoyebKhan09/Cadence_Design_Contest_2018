library ieee;
use ieee.std_logic_1164.all;

entity test_bench_nn_1 is
end test_bench_nn_1;

architecture behavioral of test_bench_nn_1 is

constant TIME_DELTA : time := 100 ns;

 component neural_network_top
        -- ports
        port( 
            -- Inputs
            x : in std_logic_vector(31 downto 0);
            w : in std_logic_vector(31 downto 0);
            w_layer_2 : in std_logic_vector(15 downto 0);

            -- Outputs
            neuron_top_output : out std_logic_vector(1 downto 0)

    

        );
    end component;


component neuron_input
generic(
NUM_INPUTS : positive :=4);
port(
d_i : in std_logic_vector(NUM_INPUTS-1 downto 0);
w_i : in std_logic_vector(NUM_INPUTS-1 downto 0);
neuron_output : out std_logic
);
end component;

component number_of_ones
 port (
        --- mapped 3=a, 2=b, 1=c, 0=d
        abcd : in std_logic_vector(3 downto 0);
        -- mapped x=2, y=1, z=0
        xyz  : out integer range - 4 to 5
    );
end component;


component neuron_final
generic(
NUM_INPUTS : positive :=8);
port(
d_i : in std_logic_vector(NUM_INPUTS-1 downto 0);
w_i : in std_logic_vector(NUM_INPUTS-1 downto 0);

neuron_output : out std_logic
);
end component;

component number_of_ones_o
port (
        --- mapped 3=a, 2=b, 1=c, 0=d
        ain : in std_logic_vector(7 downto 0);
        -- mapped x=2, y=1, z=0
        xyz  : out integer range - 8 to 5
    );
end component;
    signal x : std_logic_vector(31 downto 0);
    signal w : std_logic_vector(31 downto 0);
	signal w_layer_2 : std_logic_vector(15 downto 0);
	--signal x : std_logic_vector(31 downto 0):=(others =>'0');
	--signal w : std_logic_vector(31 downto 0):=(others =>'0');
	--signal w_layer_2 : std_logic_vector(23 downto 0):=(others =>'0');
	signal neuron_top_output : std_logic_vector(1 downto 0);
       signal Errors : boolean; 
	signal ErrorCount : integer := 0;
	signal rst_n : std_logic;

	
	

begin
-- Instantiate Unit Under Test:  neural_network_top
    uut : neural_network_top
        -- port map
        port map( 
            -- Inputs
            x => x,
            w => w,
            w_layer_2 => w_layer_2,

            -- Outputs
            neuron_top_output => neuron_top_output

            

        );
		
		
simulation : process

procedure check(in1 : in std_logic_vector(31 downto 0);
                in2 : in std_logic_vector(31 downto 0);
	            in3 : in std_logic_vector(15 downto 0);
	            expected_res : in std_logic_vector(1 downto 0)) is
			    variable result : std_logic_vector(1 downto 0);  
				
begin

x <= in1;
w <= in2;
w_layer_2 <= in3;



wait for TIME_DELTA;

result := neuron_top_output;
--assert result = expected_res

if (result/=expected_res) then  ---- "/="  syntax:  test for inequality, result is boolean
 assert false report "Misclassification" severity error;
                    Errors <=true;
                   ErrorCount <= ErrorCount + 1;
                else
                    Errors <= false;
                end if;
report "Error Count :" & integer'image(ErrorCount);
end procedure check;

---------------------------------------------------------------------------------------------------
generate_clock : process(clk)
begin
clk <= not clk after period/2;
end process;

rst_n <='0',
        '1' after 10 ns;
		
process(clk,rst_n)

FILE file_in_1 : TEXT IS IN "datain_1.txt";
FILE file_in_2 : TEXT IS IN "datain_2.txt";
FILE file_in_3 : TEXT IS IN "datain_3.txt";
FILE file_out_1 : TEXT IS OUT "dataout.txt";

variable line_in :  line;
variable line_out : line;

variable input_tmp_1 : std_logic_vector;
variable input_tmp_2 : std_logic_vector;
variable input_tmp_3 : std_logic_vector;
variable out_tmp : std_logic_vector;

begin

if rst_n ='0' then
in1 <=(others => '0');
in2 <=(others => '0');
in3 <=(others => '0');

elsif clk'event and clk ='1' then

if not(endfile(file_in_1)) then
readline(file_in_1,line_in);
read (line_in,input_tmp_1);

readline(file_in_2,line_in);
read (line_in,input_tmp_2);

readline(file_in_3,line_in);
read (line_in,input_tmp_3);

in1<=(input_tmp_1);
in2<=(input_tmp_2);
in3<=(input_tmp_3);

out_tmp := expected_res;

write (line_out,out_tmp);
writeline (file_out,line_out);

else
assert false
report "End of file"
severity NOTE;
end if;

end if;

end process;
-----------------------------------------------------------------------------------------------------  
begin
check("00000000000000000000000000000000","11110001000100010001000100010001","1011101110000011","01");

check("00010001000100010001000100010001","11110001000100010001000100010001","1011101110000011","11");

check("00110011001100110011001100110011","11100011111111111111111100000001","1111101110111011","00");

check("01000100010001000100010001000100","11110001000100010001000100010001","1011101110000011","01");

check("01010101010101010101010101010101","11110001000100010001000100010001","1011101110000011","11");

check("01100110011001100110011001100110","11100011111111111111111100000001","1111101110111011","00");

check("01110111011101110111011101110111","11110001000100010001000100010001","1011101110000011","01");

check("10001000100010001000100010001000","11110001000100010001000100010001","1011101110000011","11");

check("10011001100110011001100110011001","11100011111111111111111100000001","1111101110111011","00");

check("10101010101010101010101010101010","11110001000100010001000100010001","1011101110000011","01");

check("10111011101110111011101110111011","11110001000100010001000100010001","1011101110000011","11");

check("11001100110011001100110011001100","11100011111111111111111100000001","1111101110111011","00");
check("11011101110111011101110111011101","11110001000100010001000100010001","1011101110000011","01");

check("11101110111011101110111011101110","11110001000100010001000100010001","1011101110000011","11");

check("11111111111111111111111111111111","11100011111111111111111100000001","1111101110111011","00");

wait;
end process simulation;
end behavioral;

