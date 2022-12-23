library library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity byte_register is
    port (
        clk, d, enable, shift, clear        : in std_logic;
        q                                   : out std_logic_vector(7 downto 0);
        ready                               : out std_logic;
        );
end entity byte_register;

architecture structural of byte_register is

begin
    -- Initialise Q with ones instead of zeroes
    q <= x"FF";

    -- Insert data when enable is high
    insert : process( clk )
    begin
        if clear = '0' then
            if rising_edge(clk) then
                if enable = '1' then
                    q(0) <= d; -- TODO: Set other indexes
                end if ;
            end if ;
        else
            q <= x"FF";
        end if ;
    end process ; -- insert

    -- Shift register asynchronously everytime enable turns low to make room for next data bit
    shift : process( enable )
    begin
        if enable = '0' then
            shift_right(unsigned(q), 1)
        end if ;
    end process ; -- shift

    -- Turn "ready" signal high when shift register has LSB = 0
    ready : process( q )
    begin
        if q(7) = '0' then
            ready <= '1';
        else
            ready <= '0';
        end if ;
    end process ; -- ready
    
    
end architecture structural;
