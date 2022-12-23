library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behavioral of channel_adder is

	signal stage1 : std_logic_vector(9 downto 0);

begin

	stage1 <= std_logic_vector(resize(unsigned(In1), 10) + resize(unsigned(In2), 10) +resize(unsigned(In3), 10) + resize(unsigned(In4), 10)); --Adds all inputs together

	out1 <= std_logic_vector(stage1(9 downto 2) + (stage1(1)& ""));	--divide by 4, round to nearest integer

end behavioral;

