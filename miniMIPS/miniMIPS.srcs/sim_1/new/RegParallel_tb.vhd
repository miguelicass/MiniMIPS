----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2020 23:54:34
-- Design Name: 
-- Module Name: RegParallel_tb - Behavioral
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

entity RegParallel_tb is
--  Port ( );
end RegParallel_tb;

architecture Behavioral of RegParallel_tb is

component RegParallel  is generic (N : INTEGER );
      Port ( clk_i, rst_i , en_i : in STD_LOGIC;
           en_control_i : in STD_LOGIC;
           byte_i : in STD_LOGIC_VECTOR(N-1 downto 0);
           byte_o : out STD_LOGIC_VECTOR(N-1 downto 0));
end component;
    

--inputs
signal clk, rst, en  : std_logic := '0';   
signal en_control  : std_logic := '0';   
signal byte_in : std_logic_vector(7 downto 0) := (others => '0');
   

--outputs
signal byte_out : std_logic_vector(7 downto 0) := (others => '0');
constant clk_period : time := 1 ns;


BEGIN

   uut: RegParallel generic map (N => 8 )
    PORT MAP (
        clk_i => clk,
        en_i => en ,
        byte_i => byte_in,
        byte_o => byte_out,
        rst_i => rst,
        en_control_i => en_control
    );
    
    
   clk <= not clk after 5 ns;
   en <= not en after 10 ns;
   en_control <= '1';
   --en_control <= not en_control after 20 ns;
   
   stim_proc: process
   begin 
   
   rst <= '1';
        
   wait for 10 ns;
        
   rst <= '0';
                  
   byte_in <= "11111000";
   wait for 10 ns;
   byte_in <= "11111001";
   wait for 10 ns;
   byte_in <= "11111010";
   wait for 10 ns;
   byte_in <= "11111011";
   wait for 10 ns;
   byte_in <= "11111100";
   wait for 10 ns;
   byte_in <= "11111101";
   wait for 10 ns;
   byte_in <= "11111110";
   wait for 10 ns;
   byte_in <= "11111111";
   
   wait;
   end process;

end Behavioral;