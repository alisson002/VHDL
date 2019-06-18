entity somador is
	port(a,b: in bit_vector(3 downto 0);
			C_in: in bit;
			s: out bit_vector(3 downto 0);
			c_out: out bit);
end somador;

architecture aulaDia24do03 of somador is
signal sig: bit_vector(2 downto 0) ;
begin

	s(0)<= (a(0) xor b(0) xor c_in);
	sig(0) <= (a(0) and b(0))or(a(0) and c_in)or(b(0) and c_in);
	
	s(1) <= (a(1) xor b(1) xor sig(0));
	sig(1) <= (a(1) and b(1))or(a(1) and sig(0))or(b(1) and sig(0));
	
	s(2) <= (a(2) xor b(2) xor sig(1));
	sig(2) <= (a(2) and b(2))or(a(2) and sig(1))or(b(2) and sig(1));
	
	s(3) <= (a(3) xor b(3) xor sig(2));
	c_out <= (a(3) and b(3))or(a(3) and sig(2))or(b(3) and sig(2));
	
end aulaDia24do03;