library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behavioral of pwm_math_tb is
   component pwm_math
      port(CH1_Amp  : in  std_logic_vector(5 downto 0);
           CH2_Amp  : in  std_logic_vector(5 downto 0);
           CH3_Amp  : in  std_logic_vector(5 downto 0);
           CH4_Amp  : in  std_logic_vector(5 downto 0);
           CH1_Vel  : in  std_logic_vector(6 downto 0);
           CH2_Vel  : in  std_logic_vector(6 downto 0);
           CH3_Vel  : in  std_logic_vector(6 downto 0);
           CH4_Vel  : in  std_logic_vector(6 downto 0);
           Math_Out : out std_logic_vector(7 downto 0));
   end component;
   signal CH1_Amp  : std_logic_vector(5 downto 0);
   signal CH2_Amp  : std_logic_vector(5 downto 0);
   signal CH3_Amp  : std_logic_vector(5 downto 0);
   signal CH4_Amp  : std_logic_vector(5 downto 0);
   signal CH1_Vel  : std_logic_vector(6 downto 0);
   signal CH2_Vel  : std_logic_vector(6 downto 0);
   signal CH3_Vel  : std_logic_vector(6 downto 0);
   signal CH4_Vel  : std_logic_vector(6 downto 0);
   signal Math_Out : std_logic_vector(7 downto 0);
begin
   test: pwm_math port map (CH1_Amp, CH2_Amp, CH3_Amp, CH4_Amp, CH1_Vel, CH2_Vel, CH3_Vel, CH4_Vel, Math_Out);
   
   CH1_Amp(0) <= '1' after 0 ns;
   CH1_Amp(1) <= '1' after 0 ns;
   CH1_Amp(2) <= '0' after 0 ns,
		 '1' after 2720 ns;
   CH1_Amp(3) <= '1' after 0 ns;
   CH1_Amp(4) <= '0' after 0 ns,
		 '1' after 2720 ns;
   CH1_Amp(5) <= '1' after 0 ns;
   
   CH2_Amp(0) <= '0' after 0 ns,
		 '1' after 2720 ns;
   CH2_Amp(1) <= '1' after 0 ns;
   CH2_Amp(2) <= '0' after 0 ns,
		 '1' after 2720 ns;
   CH2_Amp(3) <= '0' after 0 ns,
		 '1' after 2720 ns;
   CH2_Amp(4) <= '1' after 0 ns;
   CH2_Amp(5) <= '0' after 0 ns,
		 '1' after 2720 ns;
   
   CH3_Amp(0) <= '1' after 0 ns;
   CH3_Amp(1) <= '0' after 0 ns,
		 '1' after 2720 ns;
   CH3_Amp(2) <= '0' after 0 ns,
		 '1' after 2720 ns;
   CH3_Amp(3) <= '1' after 0 ns;
   CH3_Amp(4) <= '0' after 0 ns,
		 '1' after 2720 ns;
   CH3_Amp(5) <= '1' after 0 ns;
   
   CH4_Amp(0) <= '1' after 0 ns;
   CH4_Amp(1) <= '1' after 0 ns;
   CH4_Amp(2) <= '1' after 0 ns;
   CH4_Amp(3) <= '1' after 0 ns;
   CH4_Amp(4) <= '1' after 0 ns;
   CH4_Amp(5) <= '1' after 0 ns;
   
   CH1_Vel(0) <= '0' after 0 ns,
		 '1' after 1600 ns,
		 '0' after 1760 ns,
		 '1' after 1920 ns,
		 '0' after 2080 ns,
		 '1' after 2720 ns;
   CH1_Vel(1) <= '0' after 0 ns,
		 '1' after 1280 ns,
		 '0' after 1440 ns,
		 '1' after 1600 ns,
		 '0' after 1920 ns,
		 '1' after 2720 ns;
   CH1_Vel(2) <= '0' after 0 ns,
		 '1' after 960 ns,
		 '0' after 1120 ns,
		 '1' after 1280 ns,
		 '0' after 1600 ns,
		 '1' after 2720 ns;
   CH1_Vel(3) <= '0' after 0 ns,
		 '1' after 640 ns,
		 '0' after 800 ns,
		 '1' after 960 ns,
		 '0' after 1280 ns,
		 '1' after 2720 ns;
   CH1_Vel(4) <= '0' after 0 ns,
		 '1' after 320 ns,
		 '0' after 480 ns,
		 '1' after 640 ns,
		 '0' after 960 ns,
		 '1' after 2720 ns;
   CH1_Vel(5) <= '1' after 0 ns,
		 '0' after 160 ns,
		 '1' after 320 ns,
		 '0' after 640 ns,
		 '1' after 2720 ns;
   CH1_Vel(6) <= '1' after 0 ns,
		 '0' after 320 ns,
		 '1' after 2720 ns;
   
   CH2_Vel(0) <= '0' after 0 ns,
		 '1' after 1760 ns,
		 '0' after 1920 ns,
		 '1' after 2080 ns,
		 '0' after 2240 ns,
		 '1' after 2720 ns;
   CH2_Vel(1) <= '0' after 0 ns,
		 '1' after 1440 ns,
		 '0' after 1600 ns,
		 '1' after 1760 ns,
		 '0' after 2080 ns,
		 '1' after 2720 ns;
   CH2_Vel(2) <= '0' after 0 ns,
		 '1' after 1120 ns,
		 '0' after 1280 ns,
		 '1' after 1440 ns,
		 '0' after 1760 ns,
		 '1' after 2720 ns;
   CH2_Vel(3) <= '0' after 0 ns,
		 '1' after 800 ns,
		 '0' after 960 ns,
		 '1' after 1120 ns,
		 '0' after 1440 ns,
		 '1' after 2720 ns;
   CH2_Vel(4) <= '0' after 0 ns,
		 '1' after 480 ns,
		 '0' after 640 ns,
		 '1' after 800 ns,
		 '0' after 1120 ns,
		 '1' after 2720 ns;
   CH2_Vel(5) <= '0' after 0 ns,
		 '1' after 160 ns,
		 '0' after 320 ns,
		 '1' after 480 ns,
		 '0' after 800 ns,
		 '1' after 2720 ns;
   CH2_Vel(6) <= '0' after 0 ns,
		 '1' after 160 ns,
		 '0' after 480 ns,
		 '1' after 2720 ns;
   
   CH3_Vel(0) <= '0' after 0 ns,
		 '1' after 1920 ns,
		 '0' after 2080 ns,
		 '1' after 2240 ns,
		 '0' after 2400 ns,
		 '1' after 2720 ns;
   CH3_Vel(1) <= '0' after 0 ns,
		 '1' after 1600 ns,
		 '0' after 1760 ns,
		 '1' after 1920 ns,
		 '0' after 2240 ns,
		 '1' after 2720 ns;
   CH3_Vel(2) <= '0' after 0 ns,
		 '1' after 1280 ns,
		 '0' after 1440 ns,
		 '1' after 1600 ns,
		 '0' after 1920 ns,
		 '1' after 2720 ns;
   CH3_Vel(3) <= '0' after 0 ns,
		 '1' after 960 ns,
		 '0' after 1120 ns,
		 '1' after 1280 ns,
		 '0' after 1600 ns,
		 '1' after 2720 ns;
   CH3_Vel(4) <= '0' after 0 ns,
		 '1' after 800 ns,
		 '0' after 960 ns,
		 '1' after 1120 ns,
		 '0' after 1440 ns,
		 '1' after 2720 ns;
   CH3_Vel(5) <= '0' after 0 ns,
		 '1' after 320 ns,
		 '0' after 480 ns,
		 '1' after 640 ns,
		 '0' after 960 ns,
		 '1' after 2720 ns;
   CH3_Vel(6) <= '0' after 0 ns,
		 '1' after 320 ns,
		 '0' after 640 ns,
		 '1' after 2720 ns;
   
   CH4_Vel(0) <= '0' after 0 ns,
		 '1' after 2080 ns,
		 '0' after 2240 ns,
		 '1' after 2400 ns,
		 '0' after 2560 ns,
		 '1' after 2720 ns;
   CH4_Vel(1) <= '0' after 0 ns,
		 '1' after 1760 ns,
		 '0' after 1920 ns,
		 '1' after 2080 ns,
		 '0' after 2400 ns,
		 '1' after 2720 ns;
   CH4_Vel(2) <= '0' after 0 ns,
		 '1' after 1440 ns,
		 '0' after 1600 ns,
		 '1' after 1760 ns,
		 '0' after 2080 ns,
		 '1' after 2720 ns;
   CH4_Vel(3) <= '0' after 0 ns,
		 '1' after 1120 ns,
		 '0' after 1280 ns,
		 '1' after 1440 ns,
		 '0' after 1760 ns,
		 '1' after 2720 ns;
   CH4_Vel(4) <= '0' after 0 ns,
		 '1' after 960 ns,
		 '0' after 1120 ns,
		 '1' after 1440 ns,
		 '0' after 1600 ns,
		 '1' after 2720 ns;
   CH4_Vel(5) <= '0' after 0 ns,
		 '1' after 480 ns,
		 '0' after 680 ns,
		 '1' after 800 ns,
		 '0' after 1120 ns,
		 '1' after 2720 ns;
   CH4_Vel(6) <= '0' after 0 ns,
		 '1' after 480 ns,
		 '0' after 800 ns,
		 '1' after 2720 ns;

end behavioral;

