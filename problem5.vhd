library ieee;
use ieee.std_logic_1164.all;

entity problem5 is
    port (
        vt : in  std_logic_vector(12 downto 0);
        en : in  std_logic;
        a, b, c, d, e, f, g, dp : out std_logic
    );
end problem5;

architecture bhv of problem5 is
begin
    process(vt, en)
        variable count : integer range 0 to 15;
    begin
        if en = '0' then
            a <= '0'; b <= '0'; c <= '0'; d <= '0';
            e <= '0'; f <= '0'; g <= '0'; dp <= '0';
        else
            count := 0;

            for i in vt'range loop
                if vt(i) = '1' then
                    count := count + 1;
                end if;
            end loop;

            dp <= '0';

            case count is
                when 0  => a <= '1'; b <= '1'; c <= '1'; d <= '1'; e <= '1'; f <= '1'; g <= '0';
                when 1  => a <= '0'; b <= '1'; c <= '1'; d <= '0'; e <= '0'; f <= '0'; g <= '0';
                when 2  => a <= '1'; b <= '1'; c <= '0'; d <= '1'; e <= '1'; f <= '0'; g <= '1';
                when 3  => a <= '1'; b <= '1'; c <= '1'; d <= '1'; e <= '0'; f <= '0'; g <= '1';
                when 4  => a <= '0'; b <= '1'; c <= '1'; d <= '0'; e <= '0'; f <= '1'; g <= '1';
                when 5  => a <= '1'; b <= '0'; c <= '1'; d <= '1'; e <= '0'; f <= '1'; g <= '1';
                when 6  => a <= '1'; b <= '0'; c <= '1'; d <= '1'; e <= '1'; f <= '1'; g <= '1';
                when 7  => a <= '1'; b <= '1'; c <= '1'; d <= '0'; e <= '0'; f <= '0'; g <= '0';
                when 8  => a <= '1'; b <= '1'; c <= '1'; d <= '1'; e <= '1'; f <= '1'; g <= '1';
                when 9  => a <= '1'; b <= '1'; c <= '1'; d <= '1'; e <= '0'; f <= '1'; g <= '1';
                when 10 => a <= '1'; b <= '1'; c <= '1'; d <= '0'; e <= '1'; f <= '1'; g <= '1'; -- A
                when 11 => a <= '0'; b <= '0'; c <= '1'; d <= '1'; e <= '1'; f <= '1'; g <= '1'; -- b
                when 12 => a <= '1'; b <= '0'; c <= '0'; d <= '1'; e <= '1'; f <= '1'; g <= '0'; -- C
                when 13 => a <= '0'; b <= '1'; c <= '1'; d <= '1'; e <= '1'; f <= '0'; g <= '1'; -- d
                when 14 => a <= '1'; b <= '0'; c <= '0'; d <= '1'; e <= '1'; f <= '1'; g <= '1'; -- E
                when 15 => a <= '1'; b <= '0'; c <= '0'; d <= '0'; e <= '1'; f <= '1'; g <= '1'; -- F
                when others =>
                    a <= '0'; b <= '0'; c <= '0'; d <= '0';
                    e <= '0'; f <= '0'; g <= '0';
            end case;
        end if;
    end process;
end bhv;