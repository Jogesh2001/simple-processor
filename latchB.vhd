----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:01:29 06/03/2020 
-- Design Name: 
-- Module Name:    latchB - Behavioral 
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

entity latchB is
    Port ( Bin : in  STD_LOGIC_VECTOR (7 downto 0);
           EN : in  STD_LOGIC;
           Bout : out  STD_LOGIC_VECTOR (7 downto 0));
end latchB;

architecture Behavioral of latchB is
component latch is  
  port(EN, D : in  std_logic;  
        Q   : out std_logic);  
end component; 
begin
latchA:FOR j IN 7 downto 0 GENERATE
UUUT1: latch port map(D=>Bin(j),EN=>EN,Q=>Bout(j));
end GENERATE;
end Behavioral;

