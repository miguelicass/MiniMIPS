----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2020 19:44:58
-- Design Name: 
-- Module Name: RegParallel - Behavioral
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

entity RegParallel is generic (N : INTEGER );--:= 8);
    Port ( clk_i, rst_i , en_i : in STD_LOGIC;
           byte_i : in STD_LOGIC_VECTOR(N-1 downto 0);
           byte_o : out STD_LOGIC_VECTOR(N-1 downto 0));
end RegParallel;

architecture Behavioral of RegParallel is

--signal byte : STD_LOGIC_VECTOR (7 downto 0) := (others=> '0');


begin

send_register : process(clk_i,rst_i)
begin
         if rst_i = '1' then
             --byte <= "00000000";
             byte_o <= (others => '0');
         
         elsif clk_i'event and clk_i = '1' and en_i = '1' then
            --byte <= byte_i;
            byte_o <= byte_i;            
         end if;
         
    end process;
    
    --byte_o <= byte;

end Behavioral;
