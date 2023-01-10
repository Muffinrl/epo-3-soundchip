library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity opteller is
port(golf,blok : in std_logic_vector(5 downto 0); uit : out std_logic_vector(5 downto 0));
end entity;

architecture optellen of opteller is
begin
process(golf,blok)
begin
uit <= std_logic_vector(unsigned(golf)+unsigned(blok));
end process;
end architecture;