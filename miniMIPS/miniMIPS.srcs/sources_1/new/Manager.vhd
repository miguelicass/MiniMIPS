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

type state is (number_248, number_249, number_250, number_251, number_252, number_253, number_254, number_255);
    signal current_state : state := number_248;

--signals
	--div_freq
signal en_mips, en_display : STD_LOGIC;
	--mips
signal data_m_in : STD_LOGIC_VECTOR(7 downto 0);
signal data_m_out : STD_LOGIC_VECTOR(7 downto 0);


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
               data_m_i => data_m_in,
               data_m_o => data_m_out);

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
               byte_i => data_m_out,
               --display que se enciende  
               en_display_o => en_display_mng_o,
               --valor a mostrar  
               segments_o => display_mng_o);
               
   
    transitions : process(clk_mng_i, rst_mng_i)
    begin
        if rst_mng_i = '1' then
            current_state <= number_248;

        elsif clk_mng_i'event and clk_mng_i = '1'  then --en_display = '1'

            case current_state is

                when number_248 => current_state <= number_249;

                when number_249 => current_state <= number_250;
                    
                when number_250 => current_state <= number_251;

                when number_251 => current_state <= number_252;
                    
                when number_252 => current_state <= number_253;

                when number_253 => current_state <= number_254;

                when number_254 => current_state <= number_255;

                when number_255 => current_state <= number_249;
                
                when others => current_state <= number_249;

            end case;

        end if;

    end process;
    
    data_inputs : process(current_state)
    begin
    
        case current_state is
           when number_248 =>
                    data_m_in <= "11111000";

                when number_249 =>
                    data_m_in <= "11111001";
                    
                when number_250 =>
                    data_m_in <= "11111010";

                when number_251 =>
                    data_m_in <= "11111011";
                    
               when number_252 =>
                    data_m_in <= "11111100";

                when number_253 =>
                    data_m_in <= "11111101";

                when number_254 =>
                    data_m_in <= "11111110";

                when number_255 =>
                    data_m_in <= "11111111";
                    
                when others => null;
                
        end case;

    end process;
   

end Behavioral;
