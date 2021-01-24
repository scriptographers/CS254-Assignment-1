entity BasicLogicGate is
	port (X, Y: in bit; notX, XorY, XandY: out bit);
end entity BasicLogicGate;

architecture Struct of BasicLogicGate is
begin
	-- NOT.
	notX <= (not X);
	-- OR.
	XorY <= (X or Y);
	-- AND.
	XandY <= (X and Y);
end Struct;