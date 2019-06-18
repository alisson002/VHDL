library ieee;

use ieee.std_logic_1164.all;

entity FlipFlop is

	port(D, Clk: in std_logic;
			Q: out std_logic);
	
end FlipFlop;

architecture FFD of FlipFlop is
	begin
	process (Clk)
		begin
			if Clk'event and Clk = '1' then
					
				Q <= D;
					
			end if;
	end process;
	
end FFD;