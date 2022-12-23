library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_unsigned.ALL;

entity pwm_math is
   port(CH1_Amp  : in  std_logic_vector(5 downto 0);
        CH2_Amp  : in  std_logic_vector(5 downto 0);
        CH3_Amp  : in  std_logic_vector(5 downto 0);
        CH4_Amp  : in  std_logic_vector(5 downto 0);
        CH1_Vel  : in  std_logic_vector(6 downto 0);
        CH2_Vel  : in  std_logic_vector(6 downto 0);
        CH3_Vel  : in  std_logic_vector(6 downto 0);
        CH4_Vel  : in  std_logic_vector(6 downto 0);
        Math_Out : out std_logic_vector(7 downto 0));
end pwm_math;

