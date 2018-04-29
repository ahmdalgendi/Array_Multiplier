-------------------------------------------------------------------------------
--
-- Title       : MUL
-- Design      : array_MUL
-- Author      : ahmed2008_2020@yahoo.com
-- Company     : addda
--
-------------------------------------------------------------------------------
--
-- File        : MUL.vhd
-- Generated   : Sun Apr 29 23:16:23 2018
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description :
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {MUL} architecture {MUL}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity MUL is
	 port(
		 A : in signed(7 downto 0);
		 b : in signed(7 downto 0);
		 c : out signed(15 downto 0)
	     );
end MUL;

--}} End of automatically maintained section

architecture MUL of MUL is
begin

	 -- enter your statements here --
	 process(A,B)
	 		variable tmp_A : signed (15 downto 0) ;
			variable tmp_B : signed (15 downto 0) ;
			variable tmp_out : signed (15 downto 0);
			variable fixed_A : signed (15 downto 0) ;
			variable I :  integer ;
	 begin
		 tmp_A := "0000000000000000" ;
		 tmp_B := "0000000000000000";
		 fixed_A := "0000000000000000";
		 tmp_out := "0000000000000000";
		 fixed_A (7 downto 0 ) := A ;
		 tmp_B(7 downto 0) := B ;
	for I in 0 to 7 loop
		tmp_A := fixed_A ;
		tmp_A := shift_left(tmp_A , I) ;
		if (tmp_B(i) = '1') then
			tmp_out := tmp_out + tmp_A ;
		end if ;
	end loop;
	c <= tmp_out ;
	 end process ;

end MUL;
