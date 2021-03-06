library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Dflipflop.all;

entity Sequence_detector_struc is

	port (reset,inp,clk : in std_logic;
			Y : out std_logic);
			
end entity;

architecture arch of Sequence_detector_struc is 

signal q2,q1,q0,d2,d1,d0,q2_bar,q1_bar,q0_bar ,inp_bar : std_logic;

begin

q2_bar <= not q2;
q1_bar <= not q1;
q0_bar <= not q0;
inp_bar <= not inp;

d2 <= (q0 and inp) or (q2 and inp) or (q2 and q0) or (q1_bar and inp);

ff1 : D_FF port map (reset , d2 , clk , q2);

d1 <= (q2 and q1_bar and q0_bar) or (q2_bar and q1 and q0_bar) or (q2_bar and q1_bar and inp) or (q2_bar and q1_bar and q0);

ff2 : D_FF port map (reset ,d1 , clk, q1);

d0 <= (q2_bar and q1_bar and q0_bar and inp_bar) or (q1 and inp) or (q1 and q0) or (q2 and q1) or (q2 and q0 and inp);

ff3 : D_FF port map(reset ,d0 ,clk, q0);

Y <= ((q2_bar and q1 and q0 and inp) or (q2 and q1_bar and q0_bar and inp_bar));


end arch;


