library library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- MIDI Baud rate: 31250bps; 25MHz/31250 = 800
entity counter is
    port (
        clk, reset          : in std_logic;
        count_out           : out std_logic_vector(9 downto 0);
    );
end entity counter;

architecture structural of counter is
    
    signal count, new_count     : unsigned(9 downto 0);

begin

    timebase : process(clk)
        if rising_edge(clk) then
            if reset = '1' then
                count <= (others => '0');
            else
                count <= new_count;
            end if;
        end if;
    end process ; -- timebase

    increment : process( count, new_count )
    begin
        new_count <= count + 1;
    end process ; -- increment
    
    
end architecture structural;
