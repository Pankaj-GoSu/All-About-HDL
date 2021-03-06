library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Full_substractor is 

	port(input_vector: in std_logic_vector(2 downto 0);    
       	output_vector: out std_logic_vector(1 downto 0));
			-- output_vector(1) --> Difference 
			-- output_vector(0) --> Borrow

end entity;

architecture arch of Full_substractor is

signal a,b1,b2,b3 : std_logic;

begin 

i1 : INVERTER port map(input_vector(2) , a);

x1 : XOR_3 port map(input_vector(2),input_vector(1),input_vector(0),output_vector(1));

a1 : AND_2 port map( a , input_vector(1) , b1);
a2 : AND_2 port map (a, input_vector(0),b2);
a3 : AND_2 port map(input_vector(1),input_vector(0),b3);

o1 : OR_3 port map (b1,b2,b3,output_vector(0));

end arch;
