----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2020 23:54:34
-- Design Name: 
-- Module Name: RegisterFile_tb - Behavioral
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

entity RegisterFile_tb is
--  Port ( );
end RegisterFile_tb;

architecture Behavioral of RegisterFile_tb is

component RegisterFile is generic (N : INTEGER; M : INTEGER ); --N = 5, M = 8
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
    
    end component;
    
    --signals    
        --in   
    signal clk, rst, en : STD_LOGIC := '0';
    signal reg_write : STD_LOGIC;
    signal  address_register_1,  address_register_2, write_register_1 : STD_LOGIC_VECTOR(4 downto 0) := (others => '0'); --not to U
    signal write_data_1 : STD_LOGIC_VECTOR(7 downto 0):= (others => '0'); --not to U
        --out
    signal read_data_1, read_data_2 : STD_LOGIC_VECTOR(7 downto 0);

begin

 my_Register_File : RegisterFile generic map (N => 5, M => 8 ) --N = 5, M = 8
    	Port map( 
    	   clk_i => clk, rst_i => rst, en_i => en,
           reg_write_i => reg_write,
           --reg
           address_register_1_i =>  address_register_1,
           address_register_2_i =>  address_register_2,
           write_register_1_i => write_register_1,
           --value of reg
           read_data_1_o => read_data_1,
           read_data_2_o => read_data_2,
           write_data_1_i => write_data_1);
           
           
    clk <= not clk after 5 ns;
    en <= '1'; -- para la simul
    
    process
        begin
        
        rst <= '1';
        reg_write <= '0';
        wait for 10 ns;
        
        rst <= '0';
        
        --read
        --reg_write <= '0';
        --read regA from $31
        address_register_1 <= "11111";
        --read regB from $0
        address_register_2 <= "00000";
        
        
        wait for 100 ns;
        
        --write
        reg_write <= '1';
        -- write 0xF0 in $31
        write_data_1 <= "11110000";
        write_register_1 <= "11111";
        wait for 20 ns;
        -- write 0xFF in $1
        write_data_1 <= "11111111";
        write_register_1 <= "00001";

        wait for 100 ns;
        
        --read
        reg_write <= '0';
        --read regA from $31
        address_register_1 <= "11111";
        --read regB from $0
        address_register_2 <= "00001";
        wait for 20 ns;
        address_register_1 <= "00000";
        
        
        wait;
    end process;
        

end Behavioral;
