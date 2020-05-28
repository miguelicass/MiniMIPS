----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.05.2020 20:14:35
-- Design Name: 
-- Module Name: MIPS_tb - Behavioral
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

entity MIPS_tb is
--  Port ( );
end MIPS_tb;

architecture Behavioral of MIPS_tb is

component MIPS is
  Port ( clk_m_i, rst_m_i , en_m_i : in STD_LOGIC;
           data_m_i : in STD_LOGIC_VECTOR(7 downto 0);
           data_m_o : out STD_LOGIC_VECTOR(7 downto 0));
end component;

signal clk_m, rst_m, en_m : STD_LOGIC := '0';
signal data_m_in : STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');
signal data_m_out : STD_LOGIC_VECTOR(7 downto 0);

begin

    mini_mips : MIPS port map (
                    clk_m_i => clk_m,
                    rst_m_i => rst_m,
                    en_m_i => en_m,
                    data_m_i => data_m_in,
                    data_m_o => data_m_out);
              
    clk_m <= not clk_m after 10 ns;
    en_m <= '1'; -- para la simul
    
end Behavioral;
