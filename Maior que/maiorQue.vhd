entity maiorQue is
	port(a,b: in bit_vector(4 downto 0);
			cin: in bit;
			s: out bit);
end maiorQue;

architecture aulaDia05do04 of maiorQue is
signal sig: bit_vector(3 downto 0);
begin
		--http://www.coep.ufrj.br/~jacoud/cefet/EletronicaDigital02a.pdf
		sig(0)<=((a(0) xnor b(0)) and cin);
		sig(1)<=((a(1) xnor b(1)) and sig(0));
		sig(2)<=((a(2) xnor b(2)) and sig(1));
		s <= ((a(3) xnor b(3)) and sig(2));
		
end aulaDia05do04;