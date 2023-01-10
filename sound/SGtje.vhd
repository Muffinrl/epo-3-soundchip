library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sgtje is
port(clk,reset : in std_logic; noot_1, noot_2, noot_3 : in std_logic_vector(6 downto 0); golf_1,golf_2,golf_3: in std_logic_vector(1 downto 0);
aan_1,aan_2,aan_3,aan_4 : in std_logic; output_1,output_2,output_3,output_4 : out std_logic_vector(5 downto 0));
end entity;

architecture generen of sgtje is

component golf is
port(clk,reset,soort : in std_logic; c : in std_logic_vector(13 downto 0); golf_uit : out std_logic_vector(5 downto 0));
end component;

component noot_tabel is
port(index : in std_logic_vector(6 downto 0) ; waarde : out std_logic_vector(13 downto 0));
end component;

component blok is
port(clk,reset : in std_logic; c : in std_logic_vector(13 downto 0); blokgolf : out std_logic_vector(5 downto 0));
end component;

component reset_tussen is
port(reset_in,aan : in std_logic; soort : in std_logic; golf_reset, blok_reset : out std_logic);
end component;

component opteller is
port(golf,blok : in std_logic_vector(5 downto 0); uit : out std_logic_vector(5 downto 0));
end component;

component noise is
port(clk,reset: in std_logic; noise: out std_logic_vector(5 downto 0));
end component;

signal c_1,c_2,c_3 : std_logic_vector(13 downto 0);
signal golf_uit_1,golf_uit_2,golf_uit_3,blok_uit_1,blok_uit_2,blok_uit_3 : std_logic_vector(5 downto 0);
signal golf_reset_1,golf_reset_2,golf_reset_3,blok_reset_1,blok_reset_2,blok_reset_3,noise_reset : std_logic;
begin
L1: noot_tabel port map(noot_1,c_1);
L2: noot_tabel port map(noot_2,c_2);
L3: noot_tabel port map(noot_3,c_3);
L4: reset_tussen port map(reset,aan_1,golf_1(1),golf_reset_1,blok_reset_1);
L5: reset_tussen port map(reset,aan_2,golf_2(1),golf_reset_2,blok_reset_2);
L6: reset_tussen port map(reset,aan_3,golf_3(1),golf_reset_3,blok_reset_3);
L7: golf port map(clk,golf_reset_1,golf_1(0),c_1,golf_uit_1);
L8: golf port map(clk,golf_reset_2,golf_2(0),c_2,golf_uit_2);
L9: golf port map(clk,golf_reset_3,golf_3(0),c_3,golf_uit_3);
L10: blok port map(clk,blok_reset_1,c_1,blok_uit_1);
L11: blok port map(clk,blok_reset_2,c_2,blok_uit_2);
L12: blok port map(clk,blok_reset_3,c_3,blok_uit_3);
L13: opteller port map(golf_uit_1,blok_uit_1,output_1);
L14: opteller port map(golf_uit_2,blok_uit_2,output_2);
L15: opteller port map(golf_uit_3,blok_uit_3,output_3);
L16: noise_reset <= not(aan_4);
L17: noise port map(clk,noise_reset,output_4);
end architecture;