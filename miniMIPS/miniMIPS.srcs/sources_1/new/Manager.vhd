----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2020 13:37:44
-- Design Name: 
-- Module Name: Manager - Behavioral
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

entity Manager is
  Port (  clk_mng_i, rst_mng_i : in STD_LOGIC;
           en_display_mng_o : out STD_LOGIC_VECTOR(7 downto 0);
           display_mng_o : out STD_LOGIC_VECTOR(7 downto 0));
end Manager;

architecture Behavioral of Manager is

--signals
	--div_freq
signal en_mips, en_display : STD_LOGIC;
	--mips
signal data_m : STD_LOGIC_VECTOR(7 downto 0);
signal change : STD_LOGIC_VECTOR(7 downto 0);


component MIPS is
  Port ( clk_m_i, rst_m_i , en_m_i : in STD_LOGIC;
--           s_aux_o : in STD_LOGIC_VECTOR(7 downto 0);
           data_m_i : in STD_LOGIC_VECTOR(7 downto 0);
           data_m_o : out STD_LOGIC_VECTOR(7 downto 0));
end component;

component Display7_Segmentos is generic (N : INTEGER ); -- N = 8
    Port ( clk_i : in STD_LOGIC;
            rst_i : in STD_LOGIC;
            en_i : in STD_LOGIC;
            --byte de menor peso
            byte_i : in  STD_LOGIC_VECTOR (7 downto 0);
            --display que se enciende  
            en_display_o : out STD_LOGIC_VECTOR(7 downto 0);
            --valor a mostrar  
            segments_o : out  STD_LOGIC_VECTOR (7 downto 0));  
end component;

component DivFreq is generic (N : INTEGER );--:= 4);
    port ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           freq_div_o : out STD_LOGIC);
end component;

begin

                                                -- clk => 10 ns
 Div_Freq_Mips : DivFreq generic map (N => 16 ) -- 10000000 ns = 100 Hz, N => 1000000 // simul N => 16 
    port map ( clk_i => clk_mng_i,
               rst_i => rst_mng_i,
               freq_div_o => en_mips);

 Mini_MIPS : MIPS Port map ( 
               clk_m_i => clk_mng_i, 
               rst_m_i => rst_mng_i, 
               en_m_i => en_mips,
               data_m_i => change,
               data_m_o => data_m);

                                                        -- clk => 10 ns
 Div_Freq_Display : DivFreq generic map (N => 2 ) -- 1000000 ns = 1000 Hz, N => 100000 // simul N => 2
    port map ( clk_i => clk_mng_i,
               rst_i => rst_mng_i,
               freq_div_o => en_display);

 Display : Display7_Segmentos generic map (N => 8 ) -- N = 8
    Port map ( clk_i => clk_mng_i,
               rst_i => rst_mng_i,
               en_i => en_display,
               --byte de menor peso
               byte_i => data_m,
               --display que se enciende  
               en_display_o => en_display_mng_o,
               --valor a mostrar  
               segments_o => display_mng_o);

end Behavioral;
