LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY tb_MIPS_mux IS
END tb_MIPS_mux;
 
ARCHITECTURE behavior OF tb_MIPS_mux IS 
 
	constant N : integer :=  32;
   --Inputs
   signal tb_mux_inp0 : std_logic_vector(N-1 downto 0) := (others => '0');
   signal tb_mux_inp1 : std_logic_vector(N-1 downto 0) := (others => '0');
   signal tb_mux_sel : std_logic := '0';

 	--Outputs
   signal tb_mux_out : std_logic_vector(N-1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   U1_Test: entity work.MIPS_mux(Behavioral)
	generic map ( N=> 32)
	PORT MAP (
          mux_inp0 => tb_mux_inp0,
          mux_inp1 => tb_mux_inp1,
          mux_sel => tb_mux_sel,
          mux_out => tb_mux_out
        );

   -- Stimulus process
   stim_proc: process
   begin		-- 32 bit 2:1 mux for the MIPS
    tb_mux_inp0 <= x"ABAB1010";
    tb_mux_inp1 <= x"1010AAAA";
	 
	 tb_mux_sel <= '0';
	 wait for 100ns;

	 tb_mux_sel <= '1';
	 wait for 100ns;

	 tb_mux_sel <= '0';
	 wait for 100ns;

	 tb_mux_sel <= '1';
	 wait for 100ns; 
			-- 6 bit 2:1 mux 
--    tb_mux_inp0 <= "101010";
--    tb_mux_inp1 <= "111111";
--	 
--	 tb_mux_sel <= '0';
--	 wait for 100ns;
--
--	 tb_mux_sel <= '1';
--	 wait for 100ns;
--
--	 tb_mux_sel <= '0';
--	 wait for 100ns;
--
--	 tb_mux_sel <= '1';
--	 wait for 100ns; 
--	 
	 assert false
			report "End"
			severity failure;
	 
   end process;

END;
