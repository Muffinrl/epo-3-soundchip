library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blok is
port(clk,reset : in std_logic; c : in std_logic_vector(13 downto 0); blokgolf : out std_logic_vector(5 downto 0));
end entity;

architecture blokken of blok is
signal htel, ftel : unsigned(17 downto 0);
type staat is (aan,uit,rs);
signal ht,ft : staat;
signal c_eq : unsigned(17 downto 0);

begin

process(clk)
begin
if (rising_edge(clk)) then
	if (reset = '1') then
		htel <= "000000000000000000";
		ht <= rs;
	else
		htel <= ftel;
		ht <= ft;
	end if;
end if;
end process;

process(c)
begin
c_eq <= unsigned(c)&"0000";
end process;

process(htel,ht,c_eq)
begin
case ht is
	when rs =>
		blokgolf <= "000000";
		ftel <= "000000000000000000";
		ft <= aan;
	when aan =>
		blokgolf <= "111111";
		if (htel > c_eq) then
			ft <= uit;
			ftel <= "000000000000000000";
		else
			ft <= aan;
			ftel <= htel + 1;
		end if;
	when uit =>
		blokgolf <= "000000";
		if (htel > c_eq) then
			ft <= aan;
			ftel <= "000000000000000000";
		else
			ft <= uit;
			ftel <= htel + 1;
		end if;
end case;
end process;
end architecture;	