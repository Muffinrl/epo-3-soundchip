library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sg_tb is
end entity;

architecture test of sg_tb is
component sg
port(clk,reset : in std_logic; noot_1, noot_2, noot_3 : in std_logic_vector(6 downto 0); golf_1,golf_2,golf_3: in std_logic_vector(1 downto 0);
aan_1,aan_2,aan_3,aan_4 : in std_logic; output_1,output_2,output_3,output_4 : out std_logic_vector(5 downto 0));
end component;
signal clk,reset,aan_1,aan_2,aan_3,aan_4 : std_logic;
signal noot_1,noot_2,noot_3 : std_logic_vector(6 downto 0);
signal golf_1,golf_2,golf_3 : std_logic_vector(1 downto 0);
signal output_1,output_2,output_3,output_4 : std_logic_vector(5 downto 0);
begin
L1: sg port map(clk,reset,noot_1,noot_2,noot_3,golf_1,golf_2,golf_3,aan_1,aan_2,aan_3,aan_4,output_1,output_2,output_3,output_4);
clk <= '0' after 0 ns, '1' after 20 ns when clk/='1' else '0' after 20 ns;
reset <= '1' after 0 ns, '0' after 100 ns;
noot_1 <= "0011111" after 0 ns, "1001000" after 25 ms, "1000000" after 75 ms;
noot_2 <= "0110001" after 0 ns, "0100000" after 75 ms;
noot_3 <= "0111010" after 0 ns, "1000111" after 50 ms;
golf_1 <= "00" after 0 ns, "01" after 50 ms;
golf_2 <= "01" after 0 ns, "10" after 25 ms, "00" after 50 ms;
golf_3 <= "11" after 0 ns, "00" after 25 ms, "10" after 75 ms;
aan_1 <= '1' after 0 ns;
aan_2 <= '1' after 0 ns;
aan_3 <= '1' after 0 ns;
aan_4 <= '0' after 0 ns, '1' after 15 ms, '0' after 80 ms;
end architecture;