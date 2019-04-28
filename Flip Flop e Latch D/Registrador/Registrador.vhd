library ieee;

use ieee.std_logic_1164.all;

entity Registrador is

	generic (n : integer := 10);
	
	port( D : in std_logic_vector(n-1 downto 0);
			Q : out std_logic_vector(n-1 downto 0));
	
end Registrador;



