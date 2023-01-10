library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity golf_controller is
port(clk,reset,soort : in std_logic; c : in std_logic_vector(13 downto 0); tel : in std_logic_vector(13 downto 0);
waarde_in : in std_logic_vector(5 downto 0); index : out std_logic_vector(5 downto 0); tel_reset : out std_logic; 
golf_uit : out std_logic_vector(5 downto 0));
end entity;

architecture generator of golf_controller is
type staat is(rs,genereren, ophalen);
signal ht,ft : staat;
signal htindex,ftindex : unsigned(4 downto 0);
begin

process(clk)
begin
if (rising_edge(clk)) then
	if (reset = '1') then
		ht <= rs;
		htindex <= to_unsigned(0,5);
	else
		htindex <= ftindex;
		ht <= ft;
	end if;
end if;
end process;

process(htindex,soort)
begin
index <= soort & std_logic_vector(htindex);
end process;

process(tel,waarde_in,c,htindex,ht)
begin
case ht is
when rs =>
	golf_uit <= "000000";
	tel_reset <= '1';
	ftindex <= "00000";
	ft <= ophalen;
when ophalen =>
	golf_uit <= waarde_in;
	tel_reset <= '1';
	ftindex <= htindex + 1;
	ft <= genereren;
when genereren =>
	golf_uit <= waarde_in;
	tel_reset <= '0';
	if (tel < c) then
		ftindex <= htindex;
		ft <= genereren;
	else
		ftindex <= htindex + 1;
		ft <= ophalen;
	end if;
end case;
end process;
end architecture;