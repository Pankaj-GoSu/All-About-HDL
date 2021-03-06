library ieee;
use ieee.std_logic_1164.all;

entity my_tb is 
end entity;

architecture tb of my_tb is

	component Sequence_Detector_behav is 
		port ( reset , inp ,clk : in std_logic;
			Y : out std_logic);
	end component;

signal RESET ,INP , CLK , Y : std_logic;

begin

dut : Sequence_Detector_behav port map (RESET,INP,CLK,Y);

	process
		begin
		RESET <= '0'; INP <= '0'; CLK <= '0'; wait for 10ns;
		RESET <= '0'; INP <= '0'; CLK <= '1'; wait for 10ns;
		RESET <= '0'; INP <= '0'; CLK <= '0'; wait for 10ns;
		RESET <= '0'; INP <= '0'; CLK <= '1'; wait for 10ns;
		RESET <= '0'; INP <= '0'; CLK <= '0'; wait for 10ns;
		RESET <= '0'; INP <= '0'; CLK <= '1'; wait for 10ns;
		RESET <= '0'; INP <= '0'; CLK <= '1'; wait for 10ns;
		RESET <= '0'; INP <= '1'; CLK <= '0'; wait for 10ns;
		RESET <= '0'; INP <= '1'; CLK <= '1'; wait for 10ns;
		RESET <= '0'; INP <= '1'; CLK <= '0'; wait for 10ns;
	
	end process;
end tb;

	