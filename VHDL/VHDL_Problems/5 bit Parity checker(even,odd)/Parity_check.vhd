library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Parity_check is 

	port (A : in std_logic_vector(4 downto 0) ;
			 even , odd : out std_logic);
			
end entity;


architecture arch of Parity_check is

signal a1,a2: std_logic;

begin 

x1 : XOR_3 port map(A(4),A(3),A(2),a1);
x2 : XOR_3 port map(a1,A(1),A(0),odd);
x3 : XOR_3 port map(a1,A(1),A(0),a2);
i1 : INVERTER port map(a2,even); -- here in place od a2 we can not give odd because it is out so it is not act as in.

end arch;