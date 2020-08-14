library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MIPS_sign_extender is
port(
	SE_input: in STD_LOGIC_VECTOR(15 downto 0);
	SE_output: out STD_LOGIC_VECTOR(31 downto 0)
	);
end MIPS_sign_extender;

--converts 2's complement 16 bit input to 32 bit output
architecture Behavioral of MIPS_sign_extender is
begin 
SE_output (15 downto 0) <= SE_input (15 downto 0);
SE_output (31 downto 16) <= x"FFFF" when SE_input(15) = '1' else
									 x"0000";
									 
--single line implementation
--SE_output <= x"FFFF" & SE_input(15 downto 0) when SE_input(15) = '1' else
--				 x"0000" & SE_input(15 downto 0);




end Behavioral;

