library ieee;
use ieee.std_logic_1164.all;

entity my_tb is 
end entity;

architecture arch of my_tb is 

	component Full_substractor is 
		port(input_vector: in std_logic_vector(2 downto 0);    
       	output_vector: out std_logic_vector(1 downto 0));
	end component;

signal A : std_logic_vector(2 downto 0);
signal B : std_logic_vector(1 downto 0);

begin


dut : Full_substractor port map(A,B) ;

process

begin

 A(2) <= '0'; A(1) <= '0' ; A(0) <= '0'; wait for 1ns;
 A(2) <= '0'; A(1) <= '0' ; A(0) <= '1'; wait for 1ns;
 A(2) <= '1'; A(1) <= '0' ; A(0) <= '1'; wait for 1ns;
 A(2) <= '1'; A(1) <= '1' ; A(0) <= '1'; wait for 1ns;
 
end process ;
 
 end arch;
 