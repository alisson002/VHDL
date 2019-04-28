ENTITY and_gate IS
	PORT (a,b : IN BIT;
				y : OUT BIT);
END and_gate;

ARCHITECTURE ckt OF and_gate IS
BEGIN
	y <= a AND b;
END ckt;
