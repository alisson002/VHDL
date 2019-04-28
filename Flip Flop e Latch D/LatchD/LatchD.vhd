library ieee;

use ieee.std_logic_1164.all;

entity LatchD is

	port(D, Clk: in std_logic;
			Q: out std_logic);
	
end latchD;

architecture latch of LatchD is
	begin
	process (D,Clk)
		begin
			if Clk = '1' then
					
				Q <= D;
					
			end if;
	end process;
	
end latch;
				
			
				
				