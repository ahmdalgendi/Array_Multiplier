library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

	-- Add your library and packages declaration here ...

entity mul_tb is
end mul_tb;

architecture TB_ARCHITECTURE of mul_tb is
	-- Component declaration of the tested unit
	component mul
	port(
		A : in SIGNED(7 downto 0);
		b : in SIGNED(7 downto 0);
		c : out SIGNED(15 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal A : SIGNED(7 downto 0);
	signal b : SIGNED(7 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal c : SIGNED(15 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : mul
		port map (
			A => A,
			b => b,
			c => c
		);

	-- Add your stimulus here ...
	process
	begin 			 
		a <= "00001001" ;
		b <= "00001011" ;
		wait  for 10 ns ;
		a <= "00000010" ;
		b <= "00000011" ;
		
		wait  for 10 ns ;
		a <= "00000010" ;
		b <= "00000011" ;
		
		end process ;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_mul of mul_tb is
	for TB_ARCHITECTURE
		for UUT : mul
			use entity work.mul(mul);
		end for;
	end for;
end TESTBENCH_FOR_mul;

