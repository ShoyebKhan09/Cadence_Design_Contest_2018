library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity number_of_ones is
    port (
        --- mapped 3=a, 2=b, 1=c, 0=d
        abcd : in std_logic_vector(3 downto 0);
        -- mapped x=2, y=1, z=0
        xyz  : out integer range - 4 to 5
    );
end entity;

architecture any of number_of_ones is
begin

    process (abcd) is
    begin
        case abcd is      
        when "0000" => xyz <= -4;
        when "0001" => xyz <= -2;
        when "0010" => xyz <= -2;
        when "0011" => xyz <= 0;
        when "0100" => xyz <= -2;
        when "0101" => xyz <= 0;
        when "0110" => xyz <= 0;
        when "0111" => xyz <= 2;
        when "1000" => xyz <= -2;
        when "1001" => xyz <= 0;
        when "1010" => xyz <= 0;
        when "1011" => xyz <= 2;
        when "1100" => xyz <= 0;
        when "1101" => xyz <= 2;
        when "1110" => xyz <= 2;
        when "1111" => xyz <= 4;
        when others => xyz <= 5; 
       
        end case;
    end process;
end architecture; 