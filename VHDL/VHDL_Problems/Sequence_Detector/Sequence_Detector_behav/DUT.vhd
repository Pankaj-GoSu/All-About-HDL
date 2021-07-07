library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
        output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component Sequence_Detector_behav is
    port(reset, inp, clk : in std_logic;
        Y : out std_logic);
    end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   seq_instance: Sequence_Detector_behav 
            port map (
                    -- order of inputs Cin B A
                    reset => input_vector(2),
                    inp   => input_vector(1),
                    clk   => input_vector(0),
                                        
                    
                    Y => output_vector(0));

end DutWrap;


