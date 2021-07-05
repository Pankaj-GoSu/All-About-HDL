library ieee;
use ieee.std_logic_1164.all;

entity DUT is 

	port (input_vector : in std_logic_vector(4 downto 0);
			output_vector : out std_logic_vector(1 downto 0);

end entity;

architecture DutWrap of DUT is

	component Parity_check is
	port (A : in std_logic_vector(4 downto 0) ;
			 even , odd : out std_logic);
	end component;
	
begin

instance1 : Parity_check port map(input_vector(4 downto 0),output_vector(1),output_vector(0));

end DutWrap;
