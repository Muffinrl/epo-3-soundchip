library ieee;
use ieee.std_logic_1164.all;

entity golf_tabel is
port(index : in std_logic_vector(5 downto 0) ; waarde : out std_logic_vector(5 downto 0));
end entity;

architecture tabel of golf_tabel is
begin
process(index)
begin
case index is
when "000000" => waarde <= "011111";
when "000001" => waarde <= "100101";
when "000010" => waarde <= "101011";
when "000011" => waarde <= "110001";
when "000100" => waarde <= "110110";
when "000101" => waarde <= "111010";
when "000110" => waarde <= "111101";
when "000111" => waarde <= "111110";
when "001000" => waarde <= "111110";
when "001001" => waarde <= "111101";
when "001010" => waarde <= "111011";
when "001011" => waarde <= "111000";
when "001100" => waarde <= "110100";
when "001101" => waarde <= "101110";
when "001110" => waarde <= "101000";
when "001111" => waarde <= "100010";
when "010000" => waarde <= "011100";
when "010001" => waarde <= "010110";
when "010010" => waarde <= "010000";
when "010011" => waarde <= "001010";
when "010100" => waarde <= "000110";
when "010101" => waarde <= "000011";
when "010110" => waarde <= "000001";
when "010111" => waarde <= "000000";
when "011000" => waarde <= "000000";
when "011001" => waarde <= "000001";
when "011010" => waarde <= "000100";
when "011011" => waarde <= "001000";
when "011100" => waarde <= "001101";
when "011101" => waarde <= "010011";
when "011110" => waarde <= "011001";
when "011111" => waarde <= "011111";
when "100000" => waarde <= "111111";
when "100001" => waarde <= "111100";
when "100010" => waarde <= "111010";
when "100011" => waarde <= "111000";
when "100100" => waarde <= "110110";
when "100101" => waarde <= "110100";
when "100110" => waarde <= "110010";
when "100111" => waarde <= "110000";
when "101000" => waarde <= "101110";
when "101001" => waarde <= "101100";
when "101010" => waarde <= "101010";
when "101011" => waarde <= "101000";
when "101100" => waarde <= "100110";
when "101101" => waarde <= "100100";
when "101110" => waarde <= "100010";
when "101111" => waarde <= "100000";
when "110000" => waarde <= "011110";
when "110001" => waarde <= "011100";
when "110010" => waarde <= "011010";
when "110011" => waarde <= "011000";
when "110100" => waarde <= "010110";
when "110101" => waarde <= "010100";
when "110110" => waarde <= "010010";
when "110111" => waarde <= "010000";
when "111000" => waarde <= "001110";
when "111001" => waarde <= "001100";
when "111010" => waarde <= "001010";
when "111011" => waarde <= "001000";
when "111100" => waarde <= "000110";
when "111101" => waarde <= "000100";
when "111110" => waarde <= "000010";
when "111111" => waarde <= "000000";
when others => waarde <= "000000";
end case;
end process;
end architecture;