----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2020 20:00:25
-- Design Name: 
-- Module Name: ShiftL2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftL2 is generic (N : INTEGER );--:= 8);
    Port ( reg_i : in STD_LOGIC_VECTOR(N-3 downto 0);
           reg_o : out STD_LOGIC_VECTOR(N-1 downto 0));
end ShiftL2;

architecture Behavioral of ShiftL2 is

begin

shfit : process(reg_i)
    
    begin 
    
            reg_o <= reg_i&"00";
            
    end process;

end Behavioral;
