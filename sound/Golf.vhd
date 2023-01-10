library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity golf is
port(clk,reset,soort : in std_logic; c : in std_logic_vector(13 downto 0); golf_uit : out std_logic_vector(5 downto 0));
end entity;

architecture golven of golf is
component teller is
port(clk,reset : in std_logic; tel : out std_logic_vector(13 downto 0));
end component;

component golf_tabel is
port(index : in std_logic_vector(5 downto 0) ; waarde : out std_logic_vector(5 downto 0));
end component;

component golf_controller is
port(clk,reset,soort : in std_logic; c : in std_logic_vector(13 downto 0); tel : in std_logic_vector(13 downto 0);
waarde_in : in std_logic_vector(5 downto 0); index : out std_logic_vector(5 downto 0); tel_reset : out std_logic; 
golf_uit : out std_logic_vector(5 downto 0));
end component;

signal tel_tussen : std_logic_vector(13 downto 0);
signal index_tussen : std_logic_vector(5 downto 0);
signal waarde_tussen : std_logic_vector(5 downto 0);
signal reset_tussen : std_logic;
begin

L1: golf_controller port map(clk,reset,soort,c,tel_tussen,waarde_tussen,index_tussen,reset_tussen,golf_uit);
L2: golf_tabel port map(index_tussen,waarde_tussen);
L3: teller port map(clk,reset_tussen,tel_tussen);
end architecture;