library ieee;
use ieee.std_logic_1164.all;

entity DIVISORDEFREQUENCIA is
port(clock_in: in std_logic;
		clock_out: out std_logic);
end DIVISORDEFREQUENCIA;

architecture divisora of DIVISORDEFREQUENCIA IS
signal contagem : integer range 1 to 50000000;
signal	estado: std_logic;
begin
	process(clock_in)
	begin
		if (clock_in'event and clock_in = '1') then
			if (contagem = 50000000) then
				estado<='1';
				contagem<=1;
			else
				estado<='0';
				contagem<=contagem+1;
			end if;
		end if;
	end process;
	clock_out <= estado;
end divisora;