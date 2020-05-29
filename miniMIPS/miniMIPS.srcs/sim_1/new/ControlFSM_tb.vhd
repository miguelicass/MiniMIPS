----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2020 23:54:34
-- Design Name: 
-- Module Name: ControlFSM_tb - Behavioral
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

entity ControlFSM_tb is
--  Port ( );
end ControlFSM_tb;

architecture Behavioral of ControlFSM_tb is

--signals
signal clk, rst, en : STD_LOGIC := '0';

--control signals
signal op : STD_LOGIC_VECTOR(5 downto 0);
signal ir_write :STD_LOGIC_VECTOR(3 downto 0);
signal pc_source, alu_src_b, alu_op : STD_LOGIC_VECTOR(1 downto 0);
signal alu_src_a, reg_write, reg_dest, pc_write_cond, pc_write, i_or_d, mem_write, mem_data_reg, mem_to_reg : STD_LOGIC;


--var Op type
constant J : STD_LOGIC_VECTOR(5 downto 0) := "000010";
constant R : STD_LOGIC_VECTOR(5 downto 0) := "000000";
--I
constant BEQ : STD_LOGIC_VECTOR(5 downto 0) := "000100";
constant LB : STD_LOGIC_VECTOR(5 downto 0) := "100000";
constant SB : STD_LOGIC_VECTOR(5 downto 0) := "101000";
constant ADDI : STD_LOGIC_VECTOR(5 downto 0) := "001000";


component ControlFSM is
  Port (clk_i, rst_i, en_i : in STD_LOGIC;
        op_i : in STD_LOGIC_VECTOR(5 downto 0);
        pc_source_o : out STD_LOGIC_VECTOR(1 downto 0);
        alu_src_b_o : out STD_LOGIC_VECTOR(1 downto 0);
        alu_src_a_o : out STD_LOGIC;
        alu_op_o : out STD_LOGIC_VECTOR(1 downto 0);
        reg_write_o : out STD_LOGIC;
        reg_dest_o : out STD_LOGIC;
        pc_write_cond_o : out STD_LOGIC;
        pc_write_o : out STD_LOGIC;
        i_or_d_o : out STD_LOGIC;
        mem_write_o : out STD_LOGIC;
        mem_data_reg_o : out STD_LOGIC;
        mem_to_reg_o : out STD_LOGIC;
        ir_write_o : out STD_LOGIC_VECTOR(3 downto 0));
end component;

begin


my_Control_FSM : ControlFSM Port map ( 
			clk_i => clk, rst_i => rst, en_i => en,
        	op_i => op,
        	pc_source_o => pc_source,
        	alu_src_b_o => alu_src_b,
        	alu_src_a_o => alu_src_a,
        	alu_op_o => alu_op,
        	reg_write_o => reg_write,
        	reg_dest_o => reg_dest,
        	pc_write_cond_o => pc_write_cond,
        	pc_write_o => pc_write,
        	i_or_d_o => i_or_d,
        	mem_write_o => mem_write,
        	mem_data_reg_o => mem_data_reg,
        	mem_to_reg_o => mem_to_reg,
        	ir_write_o => ir_write);
        	
  clk <= not clk after 5 ns;
    
  en <= '1'; -- para la simul
    
  process
    begin
    
    op <= "000000";
    rst <= '1';
    wait for 10 ns;
        
    rst <= '0';
    
    op <= J;
    wait for 100 ns;
    
    op <= R;
    wait for 100 ns;
    
    op <= BEQ;
    wait for 100 ns;
    
    op <= LB;
    wait for 100 ns;
    
    op <= SB;
    wait for 100 ns;
    
    op <= ADDI;
    wait for 100 ns;
    
    wait;
  end process;

end Behavioral;
