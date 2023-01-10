library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity noise is
  port (clk, reset: 	in 	std_logic;
        noise: 	out 	std_logic_vector (5 downto 0));
end entity;

architecture noisegen of noise is
signal currstate1, nextstate1, currstate2, nextstate2, currstate3, nextstate3: 	std_logic_vector (5 downto 0);
signal feedback1, feedback2, feedback3: std_logic;
signal httel,fttel : unsigned(9 downto 0);
begin

process(clk)
begin
if (rising_edge(clk)) then
	if (reset = '1') then
		currstate1 <= ("000001");
		currstate2 <= ("000001");
		currstate3 <= ("000001");
		httel <= "0000000000";
	else
		currstate1 <= nextstate1;
		currstate2 <= nextstate2;
		currstate3 <= nextstate3;
		httel <= fttel;
	end if;
end if;
end process;

process(clk)
begin
if (rising_edge(clk)) then
	fttel <= httel + 1;
end if;
end process;

process(currstate1,currstate2,currstate3,httel,feedback1,feedback2,feedback3)
begin
if (httel = "1111111111") then
	feedback1 <= currstate1(4) xor currstate1(5) xor currstate1(2) xor currstate1(0);
	nextstate1 <= feedback1 & currstate1(5 downto 1);
	feedback2 <= currstate2(5) xor currstate2(3) xor currstate2(1) xor currstate2(0);
	nextstate2 <= feedback2 & currstate2(5 downto 1);
	feedback3 <= currstate2(4) xor currstate1(4) xor currstate2(2) xor currstate1(0);
	nextstate3 <= feedback3 & currstate3(5 downto 1);
	noise <= currstate3;
else
	feedback1 <= currstate1(4) xor currstate1(5) xor currstate1(2) xor currstate1(0);
	nextstate1 <= currstate1;
	feedback2 <= currstate2(5) xor currstate2(3) xor currstate2(1) xor currstate2(0);
	nextstate2 <= currstate2;
	feedback3 <= currstate2(4) xor currstate1(4) xor currstate2(2) xor currstate1(0);
	nextstate3 <= currstate3;
	noise <= currstate3;
end if;
end process;
end noisegen;