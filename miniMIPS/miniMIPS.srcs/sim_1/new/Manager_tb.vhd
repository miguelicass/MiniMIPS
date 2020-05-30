----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.05.2020 22:49:07
-- Design Name: 
-- Module Name: Manager_tb - Behavioral
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

entity Manager_tb is
--  Port ( );
end Manager_tb;

architecture Behavioral of Manager_tb is

component Manager is

  Port (  clk_mng_i, rst_mng_i : in STD_LOGIC;
           en_display_mng_o : out STD_LOGIC_VECTOR(7 downto 0);
           display_mng_o : out STD_LOGIC_VECTOR(7 downto 0));
 end component;

signal clk, rst: STD_LOGIC := '0';
signal en_display_mng : STD_LOGIC_VECTOR(7 downto 0):= (others=>'0');
signal display_mng : STD_LOGIC_VECTOR(7 downto 0):= (others=>'0');


begin

    clk <= not clk after 5 ns;
    
    final_component : Manager port map (
                        clk_mng_i => clk,
                        rst_mng_i => rst,
                        en_display_mng_o => en_display_mng,
                        display_mng_o => display_mng);

    process
        begin
        
        rst <= '1';
        
        wait for 10 ns;
        
        rst <= '0';
      
      wait;  
    end process;
    
end Behavioral;
