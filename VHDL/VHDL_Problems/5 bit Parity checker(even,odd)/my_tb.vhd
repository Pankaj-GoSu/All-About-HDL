library ieee;
use ieee.std_logic_1164.all;

entity my_tb is 
end entity;

architecture arch of my_tb is

	component Parity_check is
	port (A : in std_logic_vector(4 downto 0) ;
			even ,odd: out std_logic);
	end component ;
	
signal a : std_logic_vector(4 downto 0);
signal even,odd : std_logic;
	
begin 

dut : Parity_check port map(a,even,odd);

process

begin

	a(4)<='0'; a(3)<='0'; a(2)<='0'; a(1)<='0'; a(0)<='0'; wait for 10ns;
	a(4)<='1'; a(3)<='1'; a(2)<='0'; a(1)<='0'; a(0)<='0'; wait for 10ns;
	a(4)<='0'; a(3)<='0'; a(2)<='1'; a(1)<='0'; a(0)<='0'; wait for 10ns;
	a(4)<='0'; a(3)<='1'; a(2)<='1'; a(1)<='1'; a(0)<='0'; wait for 10ns;
	a(4)<='1'; a(3)<='1'; a(2)<='1'; a(1)<='1'; a(0)<='0'; wait for 10ns;
	a(4)<='0'; a(3)<='0'; a(2)<='1'; a(1)<='1'; a(0)<='0'; wait for 10ns;
	a(4)<='1'; a(3)<='1'; a(2)<='1'; a(1)<='0'; a(0)<='1'; wait for 10ns;
	a(4)<='1'; a(3)<='1'; a(2)<='1'; a(1)<='1'; a(0)<='1'; wait for 10ns;
 
 end process;
 
 end arch;