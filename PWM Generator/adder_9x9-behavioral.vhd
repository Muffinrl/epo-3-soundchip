library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behavioral of adder_9x9 is
begin

	Out1 <= std_logic_vector(resize(unsigned(In1), 10) + resize(unsigned(In2), 10));

end behavioral;
