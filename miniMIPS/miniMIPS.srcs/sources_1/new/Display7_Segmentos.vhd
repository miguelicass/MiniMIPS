----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2020 20:10:31
-- Design Name: 
-- Module Name: Display7_Segmentos - Behavioral
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

entity Display7_Segmentos is generic (N : INTEGER ); -- N = 8
    Port ( clk_i : in STD_LOGIC;
            rst_i : in STD_LOGIC;
            en_i : in STD_LOGIC;
            --byte de menor peso (num del 0 al 7, ordenacion)
            byte_i : in  STD_LOGIC_VECTOR (7 downto 0);
            --display que se enciende  
            en_display_o : out STD_LOGIC_VECTOR(7 downto 0);
            --valor a mostrar  
            segments_o : out  STD_LOGIC_VECTOR (7 downto 0));  
end Display7_Segmentos;

architecture Behavioral of Display7_Segmentos is
        
    signal led: STD_LOGIC_VECTOR (3 downto 0);
    signal anodo:STD_LOGIC_VECTOR ( N-1 downto 0);
    signal token :  STD_LOGIC_VECTOR (N-1 downto 0) := (0 => '0', others=> '1');
    signal init_token :  STD_LOGIC_VECTOR (N-1 downto 0) := (0 => '0', others=> '1');

begin
  
 --en_display_o <= "11"&anodo;
 en_display_o <= anodo;

led_number:process(led)
    begin
        case led is
        when "0000" => segments_o <= "11111100"; --0
        when "0001" => segments_o <= "01100000"; --1
        when "0010" => segments_o <= "11011010"; --2
        when "0011" => segments_o <= "11110010"; --3                  
        when "0100" => segments_o <= "01100110"; --4
        when "0101" => segments_o <= "10110110"; --5
        when "0110" => segments_o <= "10111110"; --6
        when "0111" => segments_o <= "11100000"; --7
        when "1000" => segments_o <= "11111110"; --8
        when "1001" => segments_o <= "11110110"; --9
        when "1010" => segments_o <= "11111010"; --A
        when "1011" => segments_o <= "00111110"; --B
        when "1100" => segments_o <= "10011100"; --C
        when "1101" => segments_o <= "01111010"; --D
        when "1110" => segments_o <= "10011110"; --E
        when "1111" => segments_o <= "10001110"; --F
        when others => segments_o <= "00000000"; --Blank
        end case;
    end process;

      token_control : process(rst_i, clk_i)
            begin
                  if rst_i = '1' then
                     token <= init_token;
                     
                  elsif clk_i'event and clk_i = '1' and en_i = '1' then
                     token <= token(0)&token(N-1 downto 1);
                  end if;
            end process;

      show_display_led : process(token)
      
           begin
            anodo <= token;
             --el orden real es hacia arriba
             case token is
               
                   when "11111110" =>
                    led <= byte_i(3 downto 0);
       
                   when "11111101" =>
                    led <= byte_i(3 downto 0);
       
                   when "11111011" =>
                    led <= byte_i(3 downto 0);

                   when "11110111" =>
                    led <= byte_i(3 downto 0);

                   when "11101111" =>
                    led <= byte_i(3 downto 0);

                   when "11011111" =>
                    led <= byte_i(3 downto 0);

                   when "10111111" =>
                    led <= byte_i(3 downto 0);

                   when "01111111" =>
                    led <= byte_i(3 downto 0);
       
                   when others => null;
                   
               end case;
       
           end process; 

end Behavioral;
