library ieee;
use ieee.std_logic_1164.all;

entity DUT is 

	port (input_vector : in  std_logic_vector(7 downto 0);
			output_vector : out std_logic_vector(5 downto 0));
			
end entity;

architecture DutWrap of DUT is 

	component ALU_beh is 
		
		port (A,B : in std_logic_vector(3 downto 0);
			Y : out std_logic_vector(5 downto 0));
	end component;
	
begin

instance : ALU_beh port map(input_vector(7 downto 4) , input_vector(3 downto 0),output_vector);

end DutWrap;
