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

entity RegisterFile is generic (N : INTEGER; M : INTEGER ); --N = 5, M = 8
    Port ( clk_i, rst_i, en_i : in STD_LOGIC;
           reg_write_i : in STD_LOGIC;
           --reg
           address_register_1_i : in STD_LOGIC_VECTOR(N-1 downto 0);
           address_register_2_i : in STD_LOGIC_VECTOR(N-1 downto 0);
           write_register_1_i : in STD_LOGIC_VECTOR(N-1 downto 0);
           --value of reg
           read_data_1_o : out STD_LOGIC_VECTOR(M-1 downto 0);
           read_data_2_o : out STD_LOGIC_VECTOR(M-1 downto 0);
           write_data_1_i : in STD_LOGIC_VECTOR(M-1 downto 0));

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
	    case reg_write_i is
	      
        --R two reg | I one reg
	    	when '0' =>
			    read_data_1_o <= reg(to_integer(unsigned(address_register_1_i)));
			    read_data_2_o <= reg(to_integer(unsigned(address_register_2_i)));
	      
        --from alu_out to write the result reg in the matrix | R => 15:11 | I => 20:16
	    	when '1' =>
	    		reg(to_integer(unsigned(write_register_1_i))) <= write_data_1_i;
	    		
	    	when others => null;
           
    	end case;
    end if;

end process;

end Behavioral;
