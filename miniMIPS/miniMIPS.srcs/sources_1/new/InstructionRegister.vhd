----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2020 20:00:25
-- Design Name: 
-- Module Name: InstructionResgister - Behavioral
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

entity InstructionResgister is
    Port ( clk_i, rst_i, en_i : in STD_LOGIC;
           byte_i : in STD_LOGIC_VECTOR(3 downto 0);
           ir_write_i : in STD_LOGIC_VECTOR(3 downto 0);
           instruction_o : out STD_LOGIC_VECTOR (31 downto 0));
           
end InstructionResgister;

architecture Behavioral of InstructionResgister is

--signal instruction : STD_LOGIC_VECTOR (31 downto 0);

begin

process(clk_i, rst_i)

  begin

    if rst_i = '1' then 
        instruction_o <= (others =>'0');
        
    elsif clk_i'event and clk_i = '1' and en_i = '1' then
       case ir_write_i is
       
           when "0001" => instruction_o(7 downto 0)   <= byte_i;
           when "0010" => instruction_o(15 downto 8)  <= byte_i; 
           when "0100" => instruction_o(23 downto 16) <= byte_i;
           when "1000" => instruction_o(31 downto 24) <= byte_i;
           
       end case;
    end if;
    
    
end process;

--instruction_o <= instruction;

end Behavioral;