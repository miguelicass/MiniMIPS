----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2020 23:54:34
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

entity ALU_tb is
--  Port ( );
end ALU_tb;

architecture Behavioral of ALU_tb is

component ALU is
    Port ( alu_src_a_i : in STD_LOGIC_VECTOR (7 downto 0);
           alu_src_b_i : in STD_LOGIC_VECTOR (7 downto 0);
           alu_control_i : in STD_LOGIC_VECTOR (2 downto 0);
           zero_o: out STD_LOGIC;
           result_o: out STD_LOGIC_VECTOR (7 downto 0));    
end component;
 
 --Inputs
 signal alu_src_a : STD_LOGIC_VECTOR(7 downto 0) := "00000011"; -- 3
 signal alu_src_b : STD_LOGIC_VECTOR(7 downto 0) := "00000010"; -- 2
 signal alu_control : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
 
 --Outputs
 signal result: STD_LOGIC_VECTOR(7 downto 0);
 signal zero: STD_LOGIC;


begin
  
 my_ALU: ALU PORT MAP (
 alu_src_a_i => alu_src_a,
 alu_src_b_i => alu_src_b,
 alu_control_i => alu_control,
 zero_o => zero,
 result_o => result);
 
 
 process
  begin
  
     alu_control <= "010";
     wait for 50 ns;
     alu_control <= "110";
     wait for 50 ns;
     alu_control <= "000";
     wait for 50 ns;
     alu_control <= "001";
     wait for 50 ns;
     alu_control <= "111";
     wait for 50 ns;
     
     --zero
     alu_src_b <= "00000100"; -- 4
     alu_control <= "111";
     
     wait;
  end process;
end Behavioral;
