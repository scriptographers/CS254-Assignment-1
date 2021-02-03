entity Testbench is
end Testbench;

architecture tb of Testbench is

	signal a, b : bit;  -- inputs 
	signal negation, disjunction, conjunction : bit;  -- outputs
	
	component BasicLogicGate is -- Different from an entity, an entity can have various architectures, while the compenent is a complete unit
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
	dut_instance: BasicLogicGate -- dut stands for "Device Under Test"
	port map( -- assigns actual signals to the component, i.e actual parameters to formal parameters
		X => a, 
		Y => b, 
		
		notX => negation, 
		XorY => disjunction, 
		XandY => conjunction
	);

	-- Specify all possible inputs:
	process
	begin 
		a <= '0'; -- These happen simultanously 
		b <= '0';
		wait for 10000 ns; -- wait as signal values are updated only when the process is paused

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
