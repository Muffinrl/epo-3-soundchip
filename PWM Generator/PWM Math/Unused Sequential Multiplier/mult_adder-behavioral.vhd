library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behavioral of mult_adder is
	signal accumulator : std_logic_vector(12 downto 0);
	signal shift_amp   : std_logic_vector(11 downto 0);
	signal adder_out		 : std_logic_vector(12 downto 0);
	signal enable_1		  : std_logic;
	signal enable_2	   : std_logic;
begin

adder_out <= std_logic_vector(unsigned("0" & shift_amp) + unsigned(accumulator));
mult_out <= accumulator;

process (clk, amp, load, add, shift) is
begin
	if (load = '1') then
		accumulator <= "0000000000000";
		shift_amp <= std_logic_vector(resize(unsigned(amp), 12));
	end if;

	if(rising_edge(clk)) then
		if (add = '1') then
			accumulator <= adder_out;
		--elsif (shift = '1') then
			--shift_amp <= std_logic_vector(resize(shift_left(unsigned(shift_amp),1), 12));
		end if;
	end if;	

end process;

end behavioral;

