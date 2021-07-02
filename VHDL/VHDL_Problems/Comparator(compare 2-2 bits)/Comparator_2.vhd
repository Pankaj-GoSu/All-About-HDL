library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Comparator_2 is 

	port ( A,B : in std_logic_vector(1 downto 0);
			greater,equal,lesser : out std_logic);
			
end entity;

architecture arch of Comparator_2 is 

signal a1,a2,b1,b2,b3,b4,x1,x2,x3,x4 : std_logic;

begin

xn1 : XNOR_2 port map(A(0),B(0),a1);
xn2 : XNOR_2 port map(A(1),B(1),a2);

and1 : AND_2 port map(a1,a2,equal);

i1 : INVERTER port map(A(1),b1);
i2 : INVERTER port map(B(1),b2);
i3 : INVERTER port map(A(0),b3);
i4 : INVERTER port map(B(0),b4);

and2 : AND_2 port map(A(1),b2,x1);
and3 : AND_3 port map(a2,A(0),b4,x2);

or1 : OR_2 port map(x1,x2,greater);

and4 : AND_2 port map(b1,B(1),x3);
and5 : AND_3 port map(a2,b3,B(0),x4);

or2 : OR_2 port map(x3,x4,lesser);

end arch;
