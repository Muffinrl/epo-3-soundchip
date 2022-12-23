library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behavioral of adder_7x7 is
begin

	Out1 <= std_logic_vector(resize(unsigned(In1), 8) + resize(unsigned(In2), 8));


end behavioral;

