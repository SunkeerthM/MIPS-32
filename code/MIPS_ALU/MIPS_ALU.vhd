library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MIPS_ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_control : in  STD_LOGIC_VECTOR (3 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0);
           zero : out  STD_LOGIC
			  );
end MIPS_ALU;

architecture Behavioral of MIPS_ALU is

signal result_S : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');

begin
	process(A, B, ALU_control)
	begin
		case ALU_control is
			when "0000" => --bitwise and
				result_S <= A and B;
				
			when "0001" => --bitwise or
				result_S <= A or B;
				
			when "0010" =>  --Add operation
				result_S <= std_logic_vector( unsigned(A) + unsigned(B) );		

			when "0110" => --subtract operation
				result_S <= std_logic_vector( unsigned(A) - unsigned(B) );
				
			when "0111" => -- set when less than
			if(signed(A) < signed(B)) then
				result_S <= x"00000001";
			else
				result_S <= x"00000000";
			end if; 
				
			when "1100" => -- bitwise nor
				result_S <= A nor B;
				
			when others =>
				result_S <= x"00000000";
				
			end case;
				
	end process;
	
	result <= result_S;
	zero <= '1' when result_S = x"00000000" else
			  '0';
				
		

end Behavioral;

