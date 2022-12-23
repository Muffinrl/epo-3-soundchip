library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behavioral of seq_mult_tb is
   component seq_mult
      port(amp      : in  std_logic_vector(5 downto 0);
           vel_in   : in  std_logic;
           clk      : in  std_logic;
           reset    : in  std_logic;
   	comp	 : in  std_logic;
           mult_Out : out std_logic_vector(12 downto 0));
   end component;
   signal amp      : std_logic_vector(5 downto 0);
   signal vel_in   : std_logic;
   signal clk      : std_logic;
   signal reset    : std_logic;
   signal comp	 : std_logic;
   signal mult_Out : std_logic_vector(12 downto 0);
begin
   test: seq_mult port map (amp, vel_in, clk, reset, comp, mult_Out);
   amp(0) <= '1' after 0 ns;
   amp(1) <= '1' after 0 ns;
   amp(2) <= '0' after 0 ns;
   amp(3) <= '1' after 0 ns;
   amp(4) <= '0' after 0 ns;
   amp(5) <= '1' after 0 ns;
   vel_in <= 		'1' after 0 ns,
		'0' after 140 ns,
		'1' after 180 ns,
		'1' after 220 ns,
		'0' after 260 ns,
		'0' after 300 ns,
		'1' after 340 ns;
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
   comp <= 		'0' after 0 ns,
		'1' after 380 ns;
end behavioral;

