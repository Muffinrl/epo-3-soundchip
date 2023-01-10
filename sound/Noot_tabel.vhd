library ieee;
use ieee.std_logic_1164.all;

entity noot_tabel is
port(index : in std_logic_vector(6 downto 0) ; waarde : out std_logic_vector(13 downto 0));
end entity;

architecture tabel of noot_tabel is
begin
process(index)
begin
case index is
when "0011111" => waarde <= "11111001001000";
when "0100000" => waarde <= "11101011001001";
when "0100001" => waarde <= "11011101111100";
when "0100010" => waarde <= "11010001011111";
when "0100011" => waarde <= "11000101101110";
when "0100100" => waarde <= "10111010101000";
when "0100101" => waarde <= "10110000001010";
when "0100110" => waarde <= "10100110010001";
when "0100111" => waarde <= "10011100111100";
when "0101000" => waarde <= "10010100001000";
when "0101001" => waarde <= "10001011110100";
when "0101010" => waarde <= "10000011111110";
when "0101011" => waarde <= "01111100100100";
when "0101100" => waarde <= "01110101100100";
when "0101101" => waarde <= "01101110111110";
when "0101110" => waarde <= "01101000101111";
when "0101111" => waarde <= "01100010110111";
when "0110000" => waarde <= "01011101010100";
when "0110001" => waarde <= "01011000000101";
when "0110010" => waarde <= "01010011001000";
when "0110011" => waarde <= "01001110011110";
when "0110100" => waarde <= "01001010000100";
when "0110101" => waarde <= "01000101111010";
when "0110110" => waarde <= "01000001111111";
when "0110111" => waarde <= "00111110010010";
when "0111000" => waarde <= "00111010110010";
when "0111001" => waarde <= "00110111011111";
when "0111010" => waarde <= "00110100010111";
when "0111011" => waarde <= "00110001011011";
when "0111100" => waarde <= "00101110101010";
when "0111101" => waarde <= "00101100000010";
when "0111110" => waarde <= "00101001100100";
when "0111111" => waarde <= "00100111001111";
when "1000000" => waarde <= "00100101000010";
when "1000001" => waarde <= "00100010111101";
when "1000010" => waarde <= "00100000111111";
when "1000011" => waarde <= "00011111001001";
when "1000100" => waarde <= "00011101011001";
when "1000101" => waarde <= "00011011101111";
when "1000110" => waarde <= "00011010001011";
when "1000111" => waarde <= "00011000101101";
when "1001000" => waarde <= "00010111010101";
when "1001001" => waarde <= "00010110000001";
when "1001010" => waarde <= "00010100110010";
when "1001011" => waarde <= "00010011100111";
when "1001100" => waarde <= "00010010100001";
when "1001101" => waarde <= "00010001011110";
when "1001110" => waarde <= "00010000011111";
when "1001111" => waarde <= "00001111100100";
when "1010000" => waarde <= "00001110101100";
when "1010001" => waarde <= "00001101110111";
when "1010010" => waarde <= "00001101000101";
when "1010011" => waarde <= "00001100010110";
when "1010100" => waarde <= "00001011101010";
when "1010101" => waarde <= "00001011000000";
when "1010110" => waarde <= "00001010011001";
when "1010111" => waarde <= "00001001110011";
when "1011000" => waarde <= "00001001010000";
when "1011001" => waarde <= "00001000101111";
when "1011010" => waarde <= "00001000001111";
when "1011011" => waarde <= "00000111110010";
when "1011100" => waarde <= "00000111010110";
when "1011101" => waarde <= "00000110111011";
when "1011110" => waarde <= "00000110100010";
when "1011111" => waarde <= "00000110001011";
when others => waarde <= "00000000000000";
end case;
end process;
end architecture;