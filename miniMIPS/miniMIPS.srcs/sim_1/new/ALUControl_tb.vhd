----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2020 23:54:34
-- Design Name: 
-- Module Name: ALUControl_tb - Behavioral
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

entity ALUControl_tb is
--  Port ( );
end ALUControl_tb;

architecture Behavioral of ALUControl_tb is

component ALUControl
Port ( alu_op_i : in STD_LOGIC_VECTOR(1 downto 0);
           funct_i : in STD_LOGIC_VECTOR(5 downto 0);
           alu_control_o : out STD_LOGIC_VECTOR(2 downto 0));
 end component;
  
 
 --Inputs
 signal alu_op : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
 signal funct : STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
 
 --Outputs
 signal alu_control : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
  
begin
  
 -- Instantiate the Unit Under Test (UUT)
 my_ALU_Control: ALUControl PORT MAP (
 alu_op_i => alu_op,
 funct_i => funct,
 alu_control_o => alu_control);
 
 process
 begin
 
 --wait for 10 ns;
 
 alu_op <= "00";
 wait for 100 ns;

 alu_op <= "01";
 wait for 100 ns;
 

 --alu_op with funct
 alu_op <= "10";
 --funct
 funct <= "100000";
 wait for 100 ns;
 funct <= "100010";
 wait for 100 ns;
 funct <= "100100";
 wait for 100 ns;
 funct <= "100101";
 wait for 100 ns;
 funct <= "101010";
 
 wait;
 end process;

end Behavioral;
