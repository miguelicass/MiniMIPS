----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2020 20:00:25
-- Design Name: 
-- Module Name: RegisterFile - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is generic (N : INTEGER; M : INTEGER );--:= 5,8);
    Port ( clk_i, rst_i, en_i : in STD_LOGIC;
           reg_write : in STD_LOGIC;
           address_register_1 : in STD_LOGIC_VECTOR(N-1 downto 0);
           address_register_2 : in STD_LOGIC_VECTOR(N-1 downto 0);
           write_register_1 : in STD_LOGIC_VECTOR(N-1 downto 0);
           write_data_1 : in STD_LOGIC_VECTOR(M-1 downto 0);
           read_data_1 : out STD_LOGIC_VECTOR(M-1 downto 0);
           read_data_2 : out STD_LOGIC_VECTOR(M-1 downto 0));

end RegisterFile;

architecture Behavioral of RegisterFile is

--registers' matrix
type matrix is array (0 to (2**N)-1) of STD_LOGIC_VECTOR(M-1 downto 0); 
   signal reg : matrix;


begin

--$0 = "00000000"
reg(0) <= (others => '0');


read_write : process(clk_i, rst_i) begin
    
    if rst_i ='1' then
      --for i in 0 to N-1
      --reg(i) <= (others => '0');
      reg <= (others => (others => '0'));
        
    elsif ( clk_i'event and clk_i ='1' and en_i='1' )then
	    case reg_write is
	   
	    	when '0' =>
			    read_data_1 <= reg(to_integer(unsigned(address_register_1)));
			    read_data_2 <= reg(to_integer(unsigned(address_register_2)));
	       
	    	when '1' =>
	    		reg(to_integer(unsigned(write_register_1))) <= write_data_1;
           
    	end case;
    end if;

end process;

end Behavioral;
