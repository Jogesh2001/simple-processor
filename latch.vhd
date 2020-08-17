----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:52:15 06/03/2020 
-- Design Name: 
-- Module Name:    latch - Behavioral 
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

 
entity latch is  
  port(EN, D : in  std_logic;  
        Q   : out std_logic);  
end latch;  
architecture Behavioral of latch is  
  begin  
    process (EN, D)  
      begin  
        if (EN='1') then  
          Q <= D; 
      else Q<='0';			 
        end if;  
    end process;  
end Behavioral; 

