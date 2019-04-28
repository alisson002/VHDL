
entity somadoCompleto is
	port(a,b,Cin: in bit;
			s,c: out bit);
end somadoCompleto;

architecture aulaDia17do03 of somadoCompleto is
signal sigXor,sigAnd,sigAnd2ToOR: bit;
begin
	sigXor <= (a xor b);
	sigAnd <= (a and b);
	s <= (Cin xor sigXor);
	sigAnd2ToOR <= (Cin and sigXor);
	c <= (sigAnd2ToOR or sigAnd);
end aulaDia17do03;

