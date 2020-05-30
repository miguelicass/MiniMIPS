----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2020 23:54:34
-- Design Name: 
-- Module Name: ShiftL2_tb - Behavioral
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

entity ShiftL2_tb is
--  Port ( );
end ShiftL2_tb;

architecture Behavioral of ShiftL2_tb is

component ShiftL2 is generic (N : INTEGER );--:= 8);
    Port ( reg_i : in STD_LOGIC_VECTOR(N-3 downto 0);
           reg_o : out STD_LOGIC_VECTOR(N-1 downto 0));
end component;

signal reg_desp_in : STD_LOGIC_VECTOR (5 downto 0);
signal reg_desp_out : STD_LOGIC_VECTOR (7 downto 0);

begin

 my_Shift_L_2 : ShiftL2 generic map (N => 8 )--:= 8);
 	    Port map( 
 		   reg_i => reg_desp_in,
           reg_o => reg_desp_out);
 
 
 
    process
        begin
        
        
        reg_desp_in <= "000001";
        
        wait for 100 ns;
        
        reg_desp_in <= "111111";
        
        wait;
    end process;
 

end Behavioral;
