entity multiplexador is
	port(A,B,C,D,S1,S0: in bit;
			y: out bit);
end multiplexador;

architecture aulaDia31do03 of multiplexador is
begin

	y <= ((A and (not S1) and (not S0))or(B and (not S1) and S0)or(C and S1 and (not S0))or(D and S1 and S0));

end aulaDia31do03;