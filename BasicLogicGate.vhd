-- An entity is a basic building block, a "black box" with inputs and outputs specified. Analogous to C/C++ classes 
entity BasicLogicGate is -- Used for defining inputs and outputs
	port( -- Specifies the i/o ports to the logic gate 
		-- Inputs
		X: in bit; -- bit is an in-built data type
		Y: in bit;
		
		-- Outputs: Instead of having 3 separate projects for each gate, we define all in a single project
		notX : out bit; 
		XorY : out bit;
		XandY: out bit 
	);
end entity BasicLogicGate;


-- Defines the structure/implementation/functionality of the above entity
architecture Struct of BasicLogicGate is -- "Struct" is the name of the architecture
begin 
	-- All these happen concurrently, these are signals and not variables

	-- NOT Gate
	notX <= (not X); -- "<=" is the signal assignment operator
	
	-- OR Gate
	XorY <= (X or Y);
	
	-- AND Gate
	XandY <= (X and Y);	
	
end Struct;
