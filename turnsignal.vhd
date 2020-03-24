library IEEE;
use IEEE.std_logic_1164.all;

entity turnsignal is

	port( switch	: in bit_vector (2 downto 0);
			clk		: in bit;
			light		: out bit_vector(5 downto 0)
		 );

end turnsignal;

architecture one of turnsignal is

	type state_type is
		(idle,l1,l2,l3,r1,r2,r3, lr3);
	signal state, next_state : state_type;
	
	--turnsignal direction resembled with signals
	constant R 		: integer := 0;
	constant L 		: integer := 1;
	constant H		: integer := 2;

begin
	--Flipflop description
	process
	begin 
		wait until clk='1' and clk'event;
		state <= next_state;
	end process;
	
	--next state logic
	process(state, switch)
	begin
		case state is
			when idle =>
				if(switch(H)='1' or (switch(R)='1' and switch(L)='1')) then next_state <= lr3;
				elsif(switch = "001") then next_state <= r1;
				elsif(switch = "010")then next_state <= l1;
				else next_state <= idle;
				end if;
					
			when l1 =>
				if(switch(H)='1') then next_state <=lr3;
					else next_state <= l2;
				end if;
			
			when l2 => 
				if(switch(H)='1') then next_state <= lr3;
					else next_state <= l3;
				end if;
			
			when l3 => next_state <= idle;
			
			when r1 =>
				if(switch(H)='1') then next_state <=lr3;
					else next_state <= r2;
				end if;
			
			when r2 => 
				if(switch(H)='1') then next_state <= lr3;
					else next_state <= r3;
				end if;
			
			when r3 => next_state <= idle;
			
			when lr3 => next_state <= idle;
			
		end case;
				
	end process;
	
	--state machine outputs
	process(state)

	begin
		case state is
	--lights in order of [lc][lb][la][ra][rb][rc]
			when idle => light <="000000";
			when l1	 => light <="001000";
			when l2	 => light <="011000";
			when l3	 => light <="111000";
			when r1	 => light <="000100";
			when r2	 => light <="000110";
			when r3	 => light <="000111";
			when lr3  => light <="111111";
		end case;
	
	
	end process;
	
end one;