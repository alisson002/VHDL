library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity ProgramCounter is

    Port (clock, reset, pc_load, pc_inc : in std_logic;
		    inPC   : in std_logic_vector (7 downto 0);
    	    pc  : out std_logic_vector (7 downto 0));
		  
end ProgramCounter;

architecture PC of ProgramCounter is
signal pc_out : std_logic_vector (7 downto 0);
begin

	
	process(reset, clock, pc_load, pc_inc)
	begin
	
		if (reset = '1') then
		
			pc_out <= "00000000";
			
		elsif (clock'event and clock = '1') then
		
			if pc_load = '1' then
			
					pc_out <= inPC;
					
			elsif (pc_inc = '1') then
			
					pc_out <= pc_out + 1;
					
			else
			
					pc_out <= pc_out;
					
			end if;
			
		end if;
		
	end process;
	
	pc <= pc_out;

end PC;