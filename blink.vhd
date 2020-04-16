library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity blink is
port(
	led: out std_logic_vector(3 downto 0)
);
end blink;


architecture bh of blink is
begin
	led <= (others => '0`');
end bh;
