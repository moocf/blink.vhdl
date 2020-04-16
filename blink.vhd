library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity blink is
port(
	clk: in std_logic;
	led: out std_logic_vector(3 downto 0)
);
end blink;


architecture bh of blink is
begin
	p1: process(clk)
	variable cnt: integer range 0 to 48000000;
	variable ledstatus: std_logic;
	begin
		if clk'event and clk = '1' then
			if cnt < (4800000-1) then
				cnt := cnt + 1;
			else
				cnt := 0;
				ledstatus := not ledstatus;
			end if;
		end if;
		led <= (others => ledstatus);
	end process;
end bh;
