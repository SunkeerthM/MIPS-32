LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_MIPS_sign_extender IS
END tb_MIPS_sign_extender;
 
ARCHITECTURE behavior OF tb_MIPS_sign_extender IS 
   --Inputs
   signal tb_SE_input : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal tb_SE_output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   U1_Test: entity work.MIPS_sign_extender(Behavioral) 
	PORT MAP (
          SE_input => tb_SE_input,
          SE_output => tb_SE_output
        );

    -- Stimulus process
   stim_proc: process
   begin		

	tb_SE_input <= x"8901";
	wait for 100ns;

	tb_SE_input <= x"7031";
	wait for 100ns;
	
	tb_SE_input <= x"A051";
	wait for 100ns;
	
	tb_SE_input <= x"2201";
	wait for 100ns;
	
	assert false
			report "End"
			severity failure;
	 
   end process;

END;
