library IEEE;
use IEEE.std_logic_1164.all;

entity number_of_ones_o is
port (
        --- mapped 3=a, 2=b, 1=c, 0=d
        ain : in std_logic_vector(7 downto 0);
        -- mapped x=2, y=1, z=0
        xyz  : out integer range - 8 to 5
    );
end entity;

architecture any of number_of_ones_o is
begin

    process (ain) is
    begin
        case ain is      
        when "00000000" => xyz <= -8;
        when "00000001" => xyz <= -4;
        when "00000010" => xyz <= -4;
        when "00000011" => xyz <= -4;
        when "00000100" => xyz <= -4;
        when "00000101" => xyz <= -4;
        when "00000110" => xyz <= -4;
        when "00000111" => xyz <= -4;
        when "00001000" => xyz <= -4;
        when "00001001" => xyz <= -4;
        when "00001010" => xyz <= -4;
        when "00001011" => xyz <= -4;
        when "00001100" => xyz <= -4;
        when "00001101" => xyz <= -4;
        when "00001110" => xyz <= -4;
        when "00001111" => xyz <= 0;----16 1st
        when "00010000" => xyz <= -4;
        when "00010001" => xyz <= -4;
        when "00010010" => xyz <= -4;
        when "00010011" => xyz <= -4;
        when "00010100" => xyz <= -4;
        when "00010101" => xyz <= -4;
        when "00010110" => xyz <= -4;
        when "00010111" => xyz <= -4;
        when "00011000" => xyz <= -4;
        when "00011001" => xyz <= -4;
        when "00011010" => xyz <= -4;
        when "00011011" => xyz <=  0;---
        when "00011100" => xyz <= -4;
        when "00011101" => xyz <= 0;
	when "00011110" => xyz <= 0;---
        when "00011111" => xyz <= 4;--16th 2and
	when "00100000" => xyz <= -4;
        when "00100001" => xyz <= -4;
        when "00100010" => xyz <= -4;
        when "00100011" => xyz <= -4;
        when "00100100" => xyz <= -4;
        when "00100101" => xyz <= -4;
        when "00100110" => xyz <= -4;
        when "00100111" => xyz <= 0;
        when "00101000" => xyz <= -4;
        when "00101001" => xyz <= -4;
        when "00101010" => xyz <= -4;
        when "00101011" => xyz <= 0;
        when "00101100" => xyz <= -4;
        when "00101101" => xyz <= 0;
        when "00101110" => xyz <= 0;
        when "00101111" => xyz <= 4;----16 1st
	when "00110000" => xyz <= -4;
        when "00110001" => xyz <= -4;
        when "00110010" => xyz <= -4;
        when "00110011" => xyz <= 0;
        when "00110100" => xyz <= -4;
        when "00110101" => xyz <= 0;
        when "00110110" => xyz <= 0;
        when "00110111" => xyz <= 4;
        when "00111000" => xyz <= -4;
        when "00111001" => xyz <= 4;
        when "00111010" => xyz <= 0;
        when "00111011" => xyz <= 4;---
        when "00111100" => xyz <= 0;
        when "00111101" => xyz <= 4;
	when "00111110" => xyz <= 4;---
        when "00111111" => xyz <= 4;--16th 2an
	when "01000000" => xyz <= -4;
        when "01000001" => xyz <= -4;
        when "01000010" => xyz <= -4;
        when "01000011" => xyz <= -4;
        when "01000100" => xyz <= -4;
        when "01000101" => xyz <= -4;
        when "01000110" => xyz <= -4;
        when "01000111" => xyz <=  0;
        when "01001000" => xyz <= -4;
        when "01001001" => xyz <= -4;
        when "01001010" => xyz <= -4;
        when "01001011" => xyz <= 0;
        when "01001100" => xyz <= -4;
        when "01001101" => xyz <= 0;
        when "01001110" => xyz <= 0;
        when "01001111" => xyz <= 4;----16 1st
	when "01010000" => xyz <= -4;
        when "01010001" => xyz <= -4;
        when "01010010" => xyz <= -4;
        when "01010011" => xyz <= 0;
        when "01010100" => xyz <= -4;
        when "01010101" => xyz <= 0;
        when "01010110" => xyz <= 0;
        when "01010111" => xyz <= 4;
        when "01011000" => xyz <= -4;
        when "01011001" => xyz <= 0;
        when "01011010" => xyz <= 0;
        when "01011011" => xyz <= 4;---
        when "01011100" => xyz <= 0;
        when "01011101" => xyz <= 4;
	when "01011110" => xyz <= 4;---
        when "01011111" => xyz <= 4;--16th 2and
	when "01100000" => xyz <= -4;
        when "01100001" => xyz <= -4;
        when "01100010" => xyz <= -4;
        when "01100011" => xyz <= 0;
        when "01100100" => xyz <= -4;
        when "01100101" => xyz <= 0;
        when "01100110" => xyz <= 0;
        when "01100111" => xyz <= 4;
        when "01101000" => xyz <= -4;
        when "01101001" => xyz <= 0;
        when "01101010" => xyz <= 0;
        when "01101011" => xyz <= 4;
        when "01101100" => xyz <= 0;
        when "01101101" => xyz <= 4;
        when "01101110" => xyz <= 4;
        when "01101111" => xyz <= 4;----16 1st
	when "01110000" => xyz <= -4;
        when "01110001" => xyz <= 0;
        when "01110010" => xyz <= 0;
        when "01110011" => xyz <= 4;
        when "01110100" => xyz <= 0;
        when "01110101" => xyz <= 4;
        when "01110110" => xyz <= 4;
        when "01110111" => xyz <= 4;
        when "01111000" => xyz <= 0;
        when "01111001" => xyz <= 4;
        when "01111010" => xyz <= 4;
        when "01111011" => xyz <= 4;---
        when "01111100" => xyz <= 4;
        when "01111101" => xyz <= 4;
	when "01111110" => xyz <= 4;---
        when "01111111" => xyz <= 4;--16th 2an
	when "10000000" => xyz <= -4;
        when "10000001" => xyz <= -4;
        when "10000010" => xyz <= -4;
        when "10000011" => xyz <= -4;
        when "10000100" => xyz <= -4;
        when "10000101" => xyz <= -4;
        when "10000110" => xyz <= -4;
        when "10000111" => xyz <= -4;
        when "10001000" => xyz <= -4;
        when "10001001" => xyz <= -4;
        when "10001010" => xyz <= -4;
        when "10001011" => xyz <= 0;
        when "10001100" => xyz <= -4;
        when "10001101" => xyz <= 0;
        when "10001110" => xyz <= 0;
        when "10001111" => xyz <= 4;
	when "10010000" => xyz <= 0;
        when "10010001" => xyz <= -4;
        when "10010010" => xyz <= -4;
        when "10010011" => xyz <= 0;
        when "10010100" => xyz <= -4;
        when "10010101" => xyz <= 0;
        when "10010110" => xyz <= 0;
        when "10010111" => xyz <= 4;
        when "10011000" => xyz <= -4;
        when "10011001" => xyz <= 0;
        when "10011010" => xyz <= 0;
	when "10011011" => xyz <= 4;
        when "10011100" => xyz <= 0;
        when "10011101" => xyz <= 4;
        when "10011110" => xyz <= 4;
        when "10011111" => xyz <= 4;
	when "10100000" => xyz <= -4;
        when "10100001" => xyz <= -4;
        when "10100010" => xyz <= -4;
        when "10100011" => xyz <= 0;
        when "10100100" => xyz <= -4;
        when "10100101" => xyz <= 0;
        when "10100110" => xyz <= 0;
        when "10100111" => xyz <= 4;
        when "10101000" => xyz <= -4;
        when "10101001" => xyz <= 0;
        when "10101010" => xyz <= 0;
        when "10101011" => xyz <= 4;
        when "10101100" => xyz <= -4;
        when "10101101" => xyz <= 4;
        when "10101110" => xyz <= 4;
        when "10101111" => xyz <= 4;
	when "10110000" => xyz <= -4;
        when "10110001" => xyz <= 0;
        when "10110010" => xyz <= 0;
        when "10110011" => xyz <= 4;
        when "10110100" => xyz <= 0;
        when "10110101" => xyz <= 4;
        when "10110110" => xyz <= 4;
        when "10110111" => xyz <= 4;
        when "10111000" => xyz <= 0;
        when "10111001" => xyz <= 4;
        when "10111010" => xyz <= 4;
	when "10111011" => xyz <= 4;
        when "10111100" => xyz <= 4;
        when "10111101" => xyz <= 4;
        when "10111110" => xyz <= 4;
        when "10111111" => xyz <= 4;
	when "11000000" => xyz <= -4;
        when "11000001" => xyz <= -4;
        when "11000010" => xyz <= -4;
        when "11000011" => xyz <= -4;
        when "11000100" => xyz <= -4;
        when "11000101" => xyz <= 0;
        when "11000110" => xyz <= 0;
        when "11000111" => xyz <= 4;
        when "11001000" => xyz <= -4;
        when "11001001" => xyz <= 0;
        when "11001010" => xyz <= 0;
        when "11001011" => xyz <= 4;
        when "11001100" => xyz <= 0;
        when "11001101" => xyz <= 4;
        when "11001110" => xyz <= 4;
        when "11001111" => xyz <= 4;
	when "11010000" => xyz <= -4;
	when "11010001" => xyz <= 0;
        when "11010010" => xyz <= 0;
        when "11010011" => xyz <= 4;
        when "11010100" => xyz <= 0;
        when "11010101" => xyz <= 4;
        when "11010110" => xyz <= 4;
        when "11010111" => xyz <= 4;
        when "11011000" => xyz <= 0;
        when "11011001" => xyz <= 4;
        when "11011010" => xyz <= 4;
        when "11011011" => xyz <= 4;
        when "11011111" => xyz <= 4;
        when "11100000" => xyz <= -4;
        when "11100001" => xyz <= 0;
        when "11100010" => xyz <= 0;
	when "11100011" => xyz <= 4;
	when "11100100" => xyz <= 0;
	when "11100101" => xyz <= 4;
	when "11100110" => xyz <= 4;
	when "11100111" => xyz <= 4;
	when "11101000" => xyz <= -4;
        when "11101001" => xyz <= 0;
        when "11101010" => xyz <= 0;
        when "11101011" => xyz <= 4;
        when "11101100" => xyz <= 0;
        when "11101101" => xyz <= 4;
        when "11101110" => xyz <= 4;
        when "11101111" => xyz <= 4;
	when "11110000" => xyz <= -4;
	when "11110001" => xyz <= 0;
	when "11110010" => xyz <= 0;
	when "11110011" => xyz <= 4;
	when "11110100" => xyz <= 4;
        when "11110101" => xyz <= 4;
        when "11110110" => xyz <= 4;
        when "11110111" => xyz <= 4;
        when "11111000" => xyz <= 4;
        when "11111001" => xyz <= 4;
        when "11111010" => xyz <= 4;
        when "11111011" => xyz <= 4;
	when "11111100" => xyz <= 4;
	when "11111101" => xyz <= 4;
	when "11111110" => xyz <= 4;
	when "11111111" => xyz <= 4;
	when others => xyz <= 5; 
       
        end case;
    end process;
end architecture; 