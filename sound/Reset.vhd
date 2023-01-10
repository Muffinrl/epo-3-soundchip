library ieee;
use ieee.std_logic_1164.all;

entity reset_tussen is
port(reset_in,aan : in std_logic; soort : in std_logic; golf_reset, blok_reset : out std_logic);
end entity;

architecture resetten of reset_tussen is
begin
process(reset_in,soort,aan)
begin
if (reset_in = '1' or aan = '0') then
	golf_reset <= '1';
	blok_reset <= '1';
else
	golf_reset <= soort;
	blok_reset <= not(soort);
end if;
end process;
end architecture;