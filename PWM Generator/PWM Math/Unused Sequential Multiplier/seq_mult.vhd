library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_unsigned.ALL;

entity seq_mult is
   port(amp      : in  std_logic_vector(5 downto 0);
        vel_in   : in  std_logic;
        clk      : in  std_logic;
        reset    : in  std_logic;
	comp	 : in  std_logic;
        mult_Out : out std_logic_vector(12 downto 0));
end seq_mult;

