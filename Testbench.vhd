entity Testbench is
end Testbench;

architecture tb of Testbench is

	signal a, b : bit;  -- inputs 
	signal negation, disjunction, conjunction : bit;  -- outputs
	
	component BasicLogicGate is
		port(
			-- Inputs
			X: in bit;
			Y: in bit;
			
			-- Outputs: Instead of having 3 separate projects for each gate, we define all in a single project
			notX : out bit; 
			XorY : out bit;
			XandY: out bit
		);
	end component;
	
	
begin

    -- Connecting test bench signals with BasicLogicGate.vhd
	dut_instance: BasicLogicGate
	port map(
		X => a, 
		Y => b, 
		
		notX => negation, 
		XorY => disjunction, 
		XandY => conjunction
	);

	-- Specify all possible inputs:
	process
	begin 
		a <= '0';
		b <= '0';
		wait for 10000 ns;

		a <= '0';
		b <= '1';
		wait for 10000 ns;

		a <= '1';
		b <= '0';
		wait for 10000 ns;

		a <= '1';
		b <= '1';
		wait for 10000 ns;
	end process;
	
end tb ;