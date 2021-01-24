entity Testbench is
end Testbench;

architecture tb of Testbench is
	signal a, b : bit;  -- inputs 
	signal negation, disjunction, conjunction : bit;  -- outputs
	
	component BasicLogicGate is
		port(X, Y: in bit; notX, XorY, XandY: out bit);
	end component;
	
begin
    -- Connecting test bench signals with BasicLogicGate.vhd
	dut_instance: BasicLogicGate
	port map (X => a, Y => b, notX => negation, XorY => disjunction, XandY => conjunction);

	process-- inputs
	begin 
		a <= '0';
		b <= '0';
		wait for 5 ns;

		a <= '0';
		b <= '1';
		wait for 5 ns;

		a <= '1';
		b <= '0';
		wait for 5 ns;

		a <= '1';
		b <= '1';
		wait for 5 ns;
	end process;
end tb ;