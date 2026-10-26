library ieee;
use ieee.std_logic_1164.all;

entity problem2 is
    port (
        a, b, c, d, e, f, g, h : in  std_logic;
        ch0, ch1, ch2          : in  std_logic;
        data                   : out std_logic
    );
end problem2;

architecture bhv of problem2 is
begin
    process(a, b, c, d, e, f, g, h, ch0, ch1, ch2)
    begin
        if ch0 = '0' then
            if ch1 = '0' then
                if ch2 = '0' then
                    data <= a;
                else
                    data <= b;
                end if;
            else
                if ch2 = '0' then
                    data <= c;
                else
                    data <= d;
                end if;
            end if;
        else
            if ch1 = '0' then
                if ch2 = '0' then
                    data <= e;
                else
                    data <= f;
                end if;
            else
                if ch2 = '0' then
                    data <= g;
                else
                    data <= h;
                end if;
            end if;
        end if;
    end process;
end bhv;