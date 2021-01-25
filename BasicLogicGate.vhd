-- An entity is a basic building block, a "black box" with inputs and outputs specified 
entity BasicLogicGate is
	port(
		-- Inputs
		X: in bit;
		Y: in bit;
		
		-- Outputs: Instead of having 3 separate projects for each gate, we define all in a single project
		notX : out bit; 
		XorY : out bit;
		XandY: out bit
	);
end entity BasicLogicGate;


-- Defines the structure of the above entity
architecture Struct of BasicLogicGate is
begin

	-- NOT Gate
	notX <= (not X);
	
	-- OR Gate
	XorY <= (X or Y);
	
	-- AND Gate
	XandY <= (X and Y);	
	
end Struct;