----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:55:42 05/30/2020 
-- Design Name: 
-- Module Name:    decoder_c - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder_c is
    Port ( Q : in  STD_LOGIC_VECTOR (2 downto 0);
	        instruct:in STD_LOGIC_VECTOR (23 downto 0);
           D : out  STD_LOGIC_VECTOR (2 downto 0));
end decoder_c;

architecture Behavioral of decoder_c is

begin 
process(Q,instruct)
begin
if(Q="000") then D<=instruct(23 downto 21);
elsif(Q="001") then D<=instruct(20 downto 18);
elsif(Q="010") then D<=instruct(17 downto 15);
elsif(Q="011") then D<=instruct(14 downto 12);
elsif(Q="100") then D<=instruct(11 downto 9);
elsif(Q="101") then D<=instruct(8 downto 6);
elsif(Q="110") then D<=instruct(5 downto 3);
else D<=instruct(2 downto 0);
end if;
end process;
end Behavioral;

