----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:18:24 05/24/2020 
-- Design Name: 
-- Module Name:    upcounter - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity upcounter is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end upcounter;

architecture Behavioral of upcounter is
signal up:STD_LOGIC_VECTOR (2 downto 0):="000";
begin
process (CLK,RST)
begin
if(rising_edge(CLK)) then
    if(RST='1') then
         up <= "000";
    else
        up <= up + "001";
    end if;
 end if;
end process;
 Q <= up;

end Behavioral;
