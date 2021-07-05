library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_beh is 

	port (A,B : in std_logic_vector(3 downto 0);
			Y : out std_logic_vector(5 downto 0));
			
end entity;


architecture arch of ALU_beh is 

	function div(A: std_logic_vector)
	 return std_logic_vector is
	 variable is_div : std_logic_vector(3 downto 0) := (others => '0');
	  begin
		if ((A(3) xnor A(2) xnor A(1) xnor A(0)) = '1') then
				return A;
		
		end if;
		return is_div;
	end div;
	
	
begin


 
	process (A,B)
	
	begin
		if ((B(3) = '0') and (B(2) = '0')) then
			Y <= ("00" & A+A+A); -- yaha ("00" & A+A+A) ye 6 bit result dega means agr A+A+A agr 4 bit se jyda bhi hoga to wo bits "00" k place m aa jaenge aur result correct 6 bits hi dega.
		elsif ((B(3) = '0') and (B(2) = '1')) then
			Y <= "00" & div(A);
		elsif ((B(3) = '1') and (B(2) = '0')) then
			Y <= "00" & (A xor B);
		elsif ((B(3) = '1') and (B(2) = '1')) then
			Y <= "00" & (A  + "0001"); -- yaha (A+"0001") --> 4 bit result hi dega and extra 2 bit "00" ye wali uske aage lagegi so jab A= 1111 hoga to result 4 bit 0000 dega and extra 2 bit "00" yea dd ho jayegi .
		else
			Y <= (others => '0');
	end if;
	end process;
	
end arch;
			
		