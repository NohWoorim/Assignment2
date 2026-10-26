library ieee;
use ieee.std_logic_1164.all;

entity problem3 is
    port (
        en      : in  std_logic;
        dat     : in  std_logic_vector(3 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end problem3;

architecture bhv of problem3 is
begin
    process(en, dat)
    begin
        if en = '0' then
            display <= "ZZZZZZZZ";
        else
            case dat is
                when "0000" => display <= "11101110"; -- a
                when "0001" => display <= "00111110"; -- b
                when "0010" => display <= "00011010"; -- c
                when "0011" => display <= "01111010"; -- d
                when "0100" => display <= "10001110"; -- f
                when "0101" => display <= "11110110"; -- g
                when others => display <= "00000000";
            end case;
        end if;
    end process;
end bhv;