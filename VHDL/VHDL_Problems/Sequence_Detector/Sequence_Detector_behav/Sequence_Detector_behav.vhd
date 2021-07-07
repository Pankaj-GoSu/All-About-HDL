library ieee;
use ieee.std_logic_1164.all;

entity Sequence_Detector_behav is 

	port ( reset , inp ,clk : in std_logic;
			Y : out std_logic);
			
end entity;


architecture behav of Sequence_Detector_behav is 

type state is (rst,s0,s00,s001,s110,s11,s1);
signal present_state , next_state : state; 

begin 

	synchronous_process : process(clk)
			begin
				if (clk'event and clk = '1') then
					if (reset = '1') then 
						present_state <= rst;
					else
						present_state <= next_state;
					end if;
				end if;
			end process;
	next_state_output_logic : process(present_state ,inp) -- mealy machine depend on present state and inp.
		begin
			Y <= '0';
			case (present_state) is 
				when rst => 
					if (inp ='0') then
						next_state <= s0;
						Y <= '0';
					else
						next_state <= s1;
						Y <= '0';
					end if;
					
				when s0 => 
					if (inp ='0') then
						next_state <= s00;
						Y <= '0';
					else
						next_state <= s1;
						Y <= '0';
					end if;
				when s00 => 
					if (inp ='0') then
						next_state <= s00;
						Y <= '0';
					else
						next_state <= s001;
						Y <= '0';
					end if;
				when s001 => 
					if (inp ='0') then
						next_state <= s0;
						Y <= '0';
					else
						next_state <= s11;
						Y <= '1';
					end if;
				when s110 => 
					if (inp ='0') then
						next_state <= s00;
						Y <= '1';
					else
						next_state <= s1;
						Y <= '0';
					end if;
					
				when s11 => 
					if (inp ='0') then
						next_state <= s110;
						Y <= '0';
					else
						next_state <= s11;
						Y <= '0';
					end if;
				
				when s1 => 
					if (inp ='0') then
						next_state <= s0;
						Y <= '0';
					else
						next_state <= s11;
						Y <= '0';
					end if;
				when others =>
					next_state <= rst;
					Y <= '0';
			end case;
		end process;
end behav;
					