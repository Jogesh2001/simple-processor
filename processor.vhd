----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:35:21 06/03/2020 
-- Design Name: 
-- Module Name:    processor - Behavioral 
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

entity processor is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           R : out  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
			  instruction:in STD_LOGIC_VECTOR (23 downto 0);
			  EN: in  STD_LOGIC;
           RST : in  STD_LOGIC);
end processor;

architecture Behavioral of processor is
component alu_top is
    Port ( P : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : in  STD_LOGIC_VECTOR (7 downto 0);
           R : out  STD_LOGIC_VECTOR (7 downto 0);
			  EN: in  STD_LOGIC;
			  ALU_sel:in STD_LOGIC_VECTOR(2 downto 0));
end component;
component control_u is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			   INS:in STD_LOGIC_VECTOR (23 downto 0);
           S : out  STD_LOGIC_VECTOR (2 downto 0));
end component;
component latchA is
    Port ( EN : in  STD_LOGIC;
           Ain : in  STD_LOGIC_VECTOR (7 downto 0);
           Aout : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
component latchB is
    Port ( Bin : in  STD_LOGIC_VECTOR (7 downto 0);
           EN : in  STD_LOGIC;
           Bout : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
signal m:STD_LOGIC_VECTOR (2 downto 0);
signal n:STD_LOGIC_VECTOR (7 downto 0);
signal c:STD_LOGIC_VECTOR (7 downto 0);
begin
UUT1:control_u port map(CLK=>CLK,RST=>RST,INS=>instruction,S=>m);
UUT2:latchA port map(EN=>EN,Ain=>A,Aout=>n);
UUT3:latchB port map(EN=>EN,Bin=>B,Bout=>c);
UUT4:alu_top port map(P=>n,Q=>c,R=>R,EN=>EN,ALU_sel=>m);
end Behavioral;

