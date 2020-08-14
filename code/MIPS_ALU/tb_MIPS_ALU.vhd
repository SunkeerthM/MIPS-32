LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_MIPS_ALU IS
END tb_MIPS_ALU;
 
ARCHITECTURE behavior OF tb_MIPS_ALU IS 
 
   --Inputs
   signal tb_A : std_logic_vector(31 downto 0) := (others => '0');
   signal tb_B : std_logic_vector(31 downto 0) := (others => '0');
   signal tb_ALU_control : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal tb_result : std_logic_vector(31 downto 0);
   signal tb_zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   U1_Test: entity work.MIPS_ALU(Behavioral) 
	PORT MAP (
          A => tb_A,
          B => tb_B,
          ALU_control => tb_ALU_control,
          result => tb_result,
          zero => tb_zero
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 
	-- Stimulus process
   stim_proc: process
   begin		
	--bitwise and operation check
	tb_A <= x"12345678";
   tb_B <= x"87654321";
   tb_ALU_control <= "0000";
	wait for 50ns;

	tb_A <= x"81234567";
   tb_B <= x"A2345678";
   tb_ALU_control <= "0000";
	wait for 50ns;

	tb_A <= x"FFFFFFFF";
   tb_B <= x"10102938";
   tb_ALU_control <= "0000";
	wait for 50ns;

	--bitwise or operation check
	tb_A <= x"12345678";
   tb_B <= x"87654321";
   tb_ALU_control <= "0001";
	wait for 50ns;

	tb_A <= x"81234567";
   tb_B <= x"A2345678";
   tb_ALU_control <= "0001";
	wait for 50ns;

	tb_A <= x"FFFFFFFF";
   tb_B <= x"10102938";
   tb_ALU_control <= "0001";
	wait for 50ns;

	--Add operation check
	tb_A <= x"12345678";
   tb_B <= x"87654321";
   tb_ALU_control <= "0010";
	wait for 50ns;

	tb_A <= x"81234567";
   tb_B <= x"A2345678";
   tb_ALU_control <= "0010";
	wait for 50ns;

	tb_A <= x"FFFFFFFF";
   tb_B <= x"10102938";
   tb_ALU_control <= "0010";
	wait for 50ns;

	--Subtract operation check
	tb_A <= x"12345678";
   tb_B <= x"87654321";
   tb_ALU_control <= "0110";
	wait for 50ns;

	tb_A <= x"81234567";
   tb_B <= x"A2345678";
   tb_ALU_control <= "0110";
	wait for 50ns;

	tb_A <= x"FFFFFFFF";
   tb_B <= x"10102938";
   tb_ALU_control <= "0110";
	wait for 50ns;
	
	--set less than operation check
	tb_A <= x"12345678";
   tb_B <= x"87654321";
   tb_ALU_control <= "0111";
	wait for 50ns;

	tb_A <= x"81234567";
   tb_B <= x"A2345678";
   tb_ALU_control <= "0111";
	wait for 50ns;

	tb_A <= x"FFFFFFFF";
   tb_B <= x"10102938";
   tb_ALU_control <= "0111";
	wait for 50ns;
	
	-- bitwise nor operation check
	tb_A <= x"12345678";
   tb_B <= x"87654321";
   tb_ALU_control <= "1100";
	wait for 50ns;

	tb_A <= x"81234567";
   tb_B <= x"A2345678";
   tb_ALU_control <= "1100";
	wait for 50ns;

	tb_A <= x"FFFFFFFF";
   tb_B <= x"10102938";
   tb_ALU_control <= "1100";
	wait for 50ns;


	assert false;
		report "End"
		severity failure;
		
   end process;

END;
