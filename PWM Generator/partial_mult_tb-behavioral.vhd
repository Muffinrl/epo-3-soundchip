library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behavioral of partial_mult_tb is
   component partial_mult
      port(clk   : in  std_logic;
           reset : in  std_logic;
           amp   : in  std_logic_vector(5 downto 0);
           vel   : in  std_logic_vector(6 downto 0);
           M_out  : out std_logic_vector(12 downto 0));
   end component;
   signal clk   : std_logic;
   signal reset : std_logic;
   signal amp   : std_logic_vector(5 downto 0);
   signal vel   : std_logic_vector(6 downto 0);
   signal M_out  : std_logic_vector(12 downto 0);
begin
   test: partial_mult port map (clk, reset, amp, vel, M_out);
   clk <= '0' after 0 ns,
          '1' after 20 ns when clk /= '1' else '0' after 20 ns;
   reset <= '1' after 0 ns,
            '0' after 80 ns;
	amp(0) <= '1' after 0 ns;
   	amp(1) <= '1' after 0 ns;
   	amp(2) <= '0' after 0 ns;
   	amp(3) <= '1' after 0 ns;
   	amp(4) <= '1' after 0 ns;
   	amp(5) <= '0' after 0 ns;

	vel <= 	"0000000" after 0 ns,
		"1100000" after 240 ns,
		"1000000" after 400 ns,
		"0110000" after 560 ns,
		"0100000" after 720 ns,
		"0011000" after 880 ns,
		"0010000" after 1040 ns;		

end behavioral;
