library ieee;
use ieee.std_logic_1164.all;

package Dflipflop is

	component D_FF is
		port (reset,inp,clk : in std_logic;
			Y: out std_logic);
	end component;
	
end package Dflipflop;



library ieee;
use ieee.std_logic_1164.all;

entity D_FF is 

	port (reset,inp,clk : in std_logic;
			Y: out std_logic);

end entity;

architecture arch of D_FF is 

begin 

process (clk)

	begin
	
	if (clk'event and clk = '1')
	then
		if (reset = '1')
		then 
			Y <= '0';
		else
			Y <= inp;
		end if ;
	end if ;
end process;

end arch;
