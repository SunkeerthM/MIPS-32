-- Engineer: Sunkeerth M
-- Create Date:    10:43:17 08/12/2020 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MIPS_mux is --2:1 mux
generic( N : integer := 32
);
port( mux_inp0 : in STD_LOGIC_VECTOR(N-1 downto 0);
		mux_inp1 : in STD_LOGIC_VECTOR(N-1 downto 0);
		mux_sel	: in  STD_LOGIC;
		mux_out	: out STD_LOGIC_VECTOR(N-1 downto 0)
);
end MIPS_mux;

architecture Behavioral of MIPS_mux is
begin
mux_out<= mux_inp1 when mux_sel = '1' else
			 mux_inp0;


end Behavioral;

