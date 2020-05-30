----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2020 23:54:34
-- Design Name: 
-- Module Name: InstructionRegister_tb - Behavioral
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

entity InstructionRegister_tb is
--  Port ( );
end InstructionRegister_tb;

architecture Behavioral of InstructionRegister_tb is

component InstructionResgister is
    Port ( clk_i, rst_i, en_i : in STD_LOGIC;
           byte_i : in STD_LOGIC_VECTOR(7 downto 0);
           ir_write_i : in STD_LOGIC_VECTOR(3 downto 0);
           instruction_o : out STD_LOGIC_VECTOR (31 downto 0));
 end component;
  
 
 --Inputs
 signal clk, rst, en : STD_LOGIC := '0';
 signal byte : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
 signal ir_write : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');

 --Outputs
 signal instruction : STD_LOGIC_VECTOR (31 downto 0);

begin
  
 -- Instantiate the Unit Under Test (UUT)
 my_Instruction_Register: InstructionResgister PORT MAP (
     clk_i => clk,
     rst_i => rst,
     en_i => en,
     byte_i => byte,
     ir_write_i => ir_write,
     instruction_o => instruction);
     
     clk <= not clk after 5 ns;
     en <= '1' after 10 ns; -- simul
 
 process
   begin
   
    rst <= '1';
    wait for 10 ns;
    
    rst <= '0';
    
    --instruction
    --001000 00-000 00001 -00000000-00000111
     byte <= "00000111";
     ir_write <= "0001";
     wait for 200 ns;
     
     byte <= "00000000";
     ir_write <= "0010";
     wait for 200 ns;
     
     byte <= "00000001";
     ir_write <= "0100";
     wait for 200 ns;
     
     byte <= "00100000";
     ir_write <= "1000";
     wait for 200 ns;

     wait;
   end process;
 

end Behavioral;
