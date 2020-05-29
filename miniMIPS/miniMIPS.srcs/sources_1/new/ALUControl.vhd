----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2020 20:00:25
-- Design Name: 
-- Module Name: ALUControl - Behavioral
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

entity ALUControl is
    Port ( alu_op_i : in STD_LOGIC_VECTOR(1 downto 0);
           funct_i : in STD_LOGIC_VECTOR(5 downto 0);
           alu_control_o : out STD_LOGIC_VECTOR(2 downto 0));
           
end ALUControl;

architecture Behavioral of ALUControl is

begin
process(alu_op_i,funct_i)

 begin 
    case alu_op_i is
    
        when "00" => 
            alu_control_o <= "010";
            
        when "01" => 
            alu_control_o <= "110";
            
        when "10" => 
            
            case funct_i is 
    
                when "100000" => 
                    alu_control_o <= "010";
                    
                when "100010" => 
                    alu_control_o <= "110";
                    
                when "100100" => 
                    alu_control_o <= "000";
                    
                when "100101" => 
                    alu_control_o <= "001";
                
                when "101010" => 
                    alu_control_o <= "111";
                    
                when others => null;
                
            end case;
         
        when others => null;
        
    end case;
    
end process;

end Behavioral;