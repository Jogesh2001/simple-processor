----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:54 05/24/2020 
-- Design Name: 
-- Module Name:    alu_top - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_top is
    Port ( P : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : in  STD_LOGIC_VECTOR (7 downto 0);
           R : out  STD_LOGIC_VECTOR (7 downto 0);
			  EN:in  STD_LOGIC;
			  ALU_sel:in STD_LOGIC_VECTOR(2 downto 0));
end alu_top;

architecture Behavioral of alu_top is
signal ALU_Result : std_logic_vector (7 downto 0);
begin
process(P,Q,ALU_Sel,EN)
 begin
 if(EN='1') then
  case(ALU_Sel) is
  when "000" => ALU_Result <= P + Q ; 
  when "001" => ALU_Result <= p - Q ;
  when "010" => ALU_Result <= P and Q;
  when "011" => ALU_Result <= P or Q;
  when "100" => ALU_Result <= P xor Q;
   when "101" => ALU_Result <= not Q;
  when "110" => ALU_Result <= not P;
  when "111" =>  ALU_Result <= P nand Q;
  when others => ALU_Result<="XXXXXXXX";
  end case;
  else ALU_Result<="00000000";
  end if;
end process;
R <= ALU_Result;
end Behavioral;

