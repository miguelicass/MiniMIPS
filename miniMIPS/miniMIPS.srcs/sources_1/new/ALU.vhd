----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2020 20:00:25
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( alu_src_a_i : in STD_LOGIC_VECTOR (7 downto 0);
           alu_src_b_i : in STD_LOGIC_VECTOR (7 downto 0);
           alu_control_i : in STD_LOGIC_VECTOR (2 downto 0);
           zero_o: out STD_LOGIC;
           result_o: out STD_LOGIC_VECTOR (7 downto 0)
    
            );    
end ALU;

architecture Behavioral of ALU is

signal SLT, result : STD_LOGIC_VECTOR (7 downto 0);

begin

SLT <= "00000001" when alu_src_a_i < alu_src_b_i else "00000000";

with alu_control_i select 

        result <=   STD_LOGIC_VECTOR(unsigned(alu_src_a_i) + unsigned(alu_src_b_i)) when "010",
                    STD_LOGIC_VECTOR(unsigned(alu_src_a_i) - unsigned(alu_src_b_i)) when "110",
                    alu_src_a_i and alu_src_b_i when "000",
                    alu_src_a_i or alu_src_b_i when "001",  
                    SLT when "111";

with result select
    zero_o <= '1' when "00000000",
              '0' when others;
 
          
result_o <= result;

end Behavioral;
