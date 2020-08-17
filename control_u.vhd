----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:11 05/30/2020 
-- Design Name: 
-- Module Name:    control_u - Behavioral 
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

entity control_u is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  INS:in STD_LOGIC_VECTOR (23 downto 0);
           S : out  STD_LOGIC_VECTOR (2 downto 0));
end control_u;

architecture Behavioral of control_u is
component upcounter is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end component;
component decoder_c is
    Port ( Q : in  STD_LOGIC_VECTOR (2 downto 0);
	        instruct:in STD_LOGIC_VECTOR (23 downto 0);
           D : out  STD_LOGIC_VECTOR (2 downto 0));
end component;
signal a:STD_LOGIC_VECTOR (2 downto 0);
begin
UUUT1:upcounter port map(CLK=>CLK,RST=>RST,Q=>a);
UUUT2:decoder_c port map(Q=>a,instruct=>INS,D=>S);

end Behavioral;

