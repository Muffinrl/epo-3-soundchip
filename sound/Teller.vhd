library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity teller is
port(clk,reset : in std_logic; tel : out std_logic_vector(13 downto 0));
end entity;

architecture tellen of teller is
type staat is (rs,hoog);
signal ht, ft : staat;
signal htel,ftel : unsigned(13 downto 0);
begin

process(clk)
begin
if (rising_edge(clk)) then
	if (reset = '1') then
		ht <= rs;
		htel <= "00000000000000";
	else
		ht <= ft;
		htel <= ftel;
	end if;
end if;
end process;

process(ht,htel)
begin
case ht is 
when rs =>
	ftel <= "00000000000000";
	ft <= hoog;
when hoog =>
	ftel <= htel +1;
	ft <= hoog;
end case;
end process;

process(htel)
begin
tel <= std_logic_vector(htel);
end process;
end architecture;