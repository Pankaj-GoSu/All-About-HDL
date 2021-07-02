library ieee;
use ieee.std_logic_1164.all;

entity DUT is 

	port ( input_vector : in std_logic_vector( 3 downto 0);
		  output_vector : out std_logic_vector(2 downto 0));

end entity;

architecture arch of DUT is 

	component Comparator_2 is 
	port ( A,B : in std_logic_vector(1 downto 0);
			greater,equal,lesser : out std_logic);
	end component;
	
begin

instance : Comparator_2 port map( A(1) => input_vector(3),
											 A(0) => input_vector(2),
											 B(1) => input_vector(1),
											 B(0) => input_vector(0),
											 greater => output_vector(2),
											 equal => output_vector(1),
											 lesser => output_vector(0));

end arch;