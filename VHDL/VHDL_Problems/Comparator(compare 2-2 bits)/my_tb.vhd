library ieee;
use ieee.std_logic_1164.all;

entity my_tb is
end entity;

architecture arch of my_tb is 

	component Comparator_2 is 
		port ( A,B : in std_logic_vector(1 downto 0);
			equal,greater,lesser : out std_logic);
	end component;
	
signal a,b : std_logic_vector(1 downto 0);
signal equal,greater,lesser : std_logic;

begin

dut : Comparator_2 port map(a,b,equal,greater,lesser);

process

begin

	a(1) <= '0'; a(0) <= '0'; b(1) <= '0' ; b(0) <= '0'; wait for 1ns;
	a(1) <= '0'; a(0) <= '1'; b(1) <= '0' ; b(0) <= '0'; wait for 1ns;
	a(1) <= '0'; a(0) <= '1'; b(1) <= '1' ; b(0) <= '1'; wait for 1ns;
	a(1) <= '1'; a(0) <= '1'; b(1) <= '0' ; b(0) <= '0'; wait for 1ns;
	a(1) <= '1'; a(0) <= '1'; b(1) <= '1' ; b(0) <= '1'; wait for 1ns;
	a(1) <= '0'; a(0) <= '0'; b(1) <= '1' ; b(0) <= '0'; wait for 1ns;



end process;

end arch;




