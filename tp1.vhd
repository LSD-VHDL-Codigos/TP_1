library iEEE;
use ieee.std_logic_1164.all;

entity tp1 is
    port (
		switch : in std_logic_vector(3 downto 0);
        leds : out std_logic_vector(6 downto 0));
end entity;

architecture hardware of tp1 is
begin
    process (switch)
    begin
        if(switch = "0000") then leds <= "1111110";
        elsif (switch = "0001") then leds <= "0110000";
        elsif (switch = "0010") then leds <= "1101101";
        elsif (switch = "0011") then leds <= "1111001";
        elsif (switch = "0100") then leds <= "0110011";
        elsif (switch = "0101") then leds <= "1011011";
        elsif (switch = "0110") then leds <= "1011111";
        elsif (switch = "0111") then leds <= "1110000";
        elsif (switch = "1000") then leds <= "1111111";
        elsif (switch = "1001") then leds <= "1111011";
        else leds <= "0000000";
        end if;
    end process;
end hardware;