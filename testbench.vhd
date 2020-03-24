entity testbench is
end testbench;


architecture lexus_turnsignal of testbench is

	component turnsignal
	
	port(switch		: in bit_vector (2 downto 0);
			clk		: in bit;
			light		: out bit_vector(5 downto 0)
		 );
	end component;
	
	
	for all: turnsignal use entity work.turnsignal(one);
	
	signal input_R : bit_vector (23 downto 0):="111110101100011010001000";			
	signal input_L : bit_vector (23 downto 0):="101100011010001000111110";			
	signal input_H : bit_vector (23 downto 0):="010001000111110101100011";	
		
	signal clk		: bit :='1';
	signal switch	: bit_vector(2 downto 0);
	signal light	: bit_vector(5 downto 0);

begin

	ts : turnsignal port map(switch, clk, light);
	
	process
		begin
			clk<= not clk;
			wait for 5 ns;
	end process;
	
	process
		begin
			wait for 1 ns;
			for i in 0 to 23 loop
				switch <= input_H(i) & input_L(i) & input_R(i);
				wait for 20 ns;
			end loop;
			wait for 10 ns;
			wait;
	end process;		

end lexus_turnsignal;