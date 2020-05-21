----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.05.2020 16:54:38
-- Design Name: 
-- Module Name: MIPS - Behavioral
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

entity MIPS is
  Port ( clk_m_i, rst_m_i , en_m_i : in STD_LOGIC;
--           s_aux_o : in STD_LOGIC_VECTOR(7 downto 0);
           data_m_i : in STD_LOGIC_VECTOR(7 downto 0);
           data_m_o : out STD_LOGIC_VECTOR(7 downto 0));
end MIPS;

architecture Behavioral of MIPS is



--control signals
signal op : STD_LOGIC_VECTOR(5 downto 0);
signal ir_write :STD_LOGIC_VECTOR(3 downto 0);
signal pc_source, alu_src_b, alu_op : STD_LOGIC_VECTOR(1 downto 0);
signal alu_src_a, reg_write, reg_dest, pc_write_cond, pc_write, i_or_d, mem_write, mem_data_reg, mem_to_reg : STD_LOGIC;
	--pc_en
signal pc_en : STD_LOGIC;

--signals out
	--paralle register
signal pc_byte, alu_out_byte, b_byte, memory_data_register_byte, a_byte : STD_LOGIC_VECTOR(7 downto 0);
	--memory
signal mem_data_a : STD_LOGIC_VECTOR(7 downto 0);
	--intruction_file
signal instruction : STD_LOGIC_VECTOR(31 downto 0);
  --register_file
signal read_data_1, read_data_2 : STD_LOGIC_VECTOR(7 downto 0);
	--alu_control
signal alu_control : STD_LOGIC_VECTOR(2 downto 0);
	--alu
signal zero : STD_LOGIC;
signal result : STD_LOGIC_VECTOR (7 downto 0);
	--reg_desp
signal reg_desp : STD_LOGIC_VECTOR (7 downto 0);

--multiplex
signal multiplex1, multiplex2, multiplex4, multiplex5, multiplex6 : STD_LOGIC_VECTOR(7 downto 0);
signal multiplex3 : STD_LOGIC_VECTOR(4 downto 0);

--test
signal change : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

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

component RegParallel is generic (N : INTEGER );--:= 8);
    Port ( clk_i, rst_i , en_i : in STD_LOGIC;
           en_control_i : in STD_LOGIC;
           byte_i : in STD_LOGIC_VECTOR(N-1 downto 0);
           byte_o : out STD_LOGIC_VECTOR(N-1 downto 0));
end component;

COMPONENT Memory
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

component InstructionResgister is
    Port ( clk_i, rst_i, en_i : in STD_LOGIC;
           byte_i : in STD_LOGIC_VECTOR(3 downto 0);
           ir_write_i : in STD_LOGIC_VECTOR(3 downto 0);
           instruction_o : out STD_LOGIC_VECTOR (31 downto 0));
end component;

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

component ALUControl is
    Port ( alu_op_i : in STD_LOGIC_VECTOR(1 downto 0);
           funct_i : in STD_LOGIC_VECTOR(5 downto 0);
           alu_control_o : out STD_LOGIC_VECTOR(2 downto 0));
           
end component;

component ALU is
    Port ( alu_src_a_i : in STD_LOGIC_VECTOR (7 downto 0);
           alu_src_b_i : in STD_LOGIC_VECTOR (7 downto 0);
           alu_control_i : in STD_LOGIC_VECTOR (2 downto 0);
           zero_o: out STD_LOGIC;
           result_o: out STD_LOGIC_VECTOR (7 downto 0));    
end component;


component ShiftL2 is generic (N : INTEGER );--:= 8);
    Port ( reg_i : in STD_LOGIC_VECTOR(N-3 downto 0);
           reg_o : out STD_LOGIC_VECTOR(N-1 downto 0));
end component;

begin

my_Control_FSM : ControlFSM Port map ( 
			clk_i => clk_m_i, rst_i => rst_m_i, en_i => en_m_i,
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

pc_en <= pc_write or (pc_write_cond and zero);

 my_PC : RegParallel generic map (N => 8 )--:= 8);
    	Port map( 
    	   clk_i => clk_m_i, rst_i => rst_m_i, en_i => en_m_i,
    	   en_control_i => pc_en,
           byte_i => multiplex6,
           byte_o => pc_byte);

multiplex1 <= pc_byte when i_or_d = '0' else alu_out_byte;

 my_Memory: Memory PORT map(
		    clka => clk_m_i,
		    ena => en_m_i,
		    wea(0) => mem_write,
		    addra => multiplex1,
		    dina => b_byte,
		    douta => mem_data_a,
		    clkb => clk_m_i,
		    web(0) => mem_write,
		    addrb => data_m_i,
		    dinb => change,
		    doutb => data_m_o);

 my_Memory_Data_Register : RegParallel generic map (N => 8 )--:= 8);
    	Port map( 
    	   clk_i => clk_m_i, rst_i => rst_m_i, en_i => en_m_i,
    	   en_control_i => mem_data_reg,
           byte_i => mem_data_a,
           byte_o => memory_data_register_byte);

--second low
multiplex2 <= alu_out_byte when mem_to_reg = '0' else memory_data_register_byte;

 my_Instruction_Resgister: InstructionResgister Port map( 
    	   clk_i => clk_m_i, rst_i => rst_m_i, en_i => en_m_i,
           byte_i => mem_data_a,
           ir_write_i => ir_write,
           instruction_o => instruction);

--second up
multiplex3 <= instruction(20 downto 16) when reg_dest = '0' else instruction(15 downto 11);

 my_Register_File : RegisterFile generic map (N => 5, M => 8 ) --N = 5, M = 8
    	Port map( 
    	   clk_i => clk_m_i, rst_i => rst_m_i, en_i => en_m_i,
           reg_write_i => reg_write,
           --reg
           address_register_1_i => instruction(25 downto 21),
           address_register_2_i => instruction(20 downto 16),
           write_register_1_i => multiplex3,
           --value of reg
           read_data_1_o => read_data_1,
           read_data_2_o => read_data_2,
           write_data_1_i => multiplex2);

my_A : RegParallel generic map (N => 8 )--:= 8);
    	Port map( 
    	   clk_i => clk_m_i, rst_i => rst_m_i, en_i => en_m_i,
    	   en_control_i => '1',
           byte_i => read_data_1,
           byte_o => a_byte);

--third up
multiplex4 <= pc_byte when alu_src_a = '0' else a_byte;

 my_B : RegParallel generic map (N => 8 )--:= 8);
    	Port map( 
    	   clk_i => clk_m_i, rst_i => rst_m_i, en_i => en_m_i,
    	   en_control_i => '1',
           byte_i => read_data_2,
           byte_o => b_byte);

--third low
with pc_source select
	multiplex5 <= b_byte when "00",
		          --"00000001"
	              (0 => '0', others=> '1') when "01",
	              instruction(7 downto 0) when "10",
	              instruction(7 downto 0) when "11";

 my_ALU_Control : ALUControl Port map( 
 		   alu_op_i => alu_op,
           funct_i => instruction(5 downto 0),
           alu_control_o => alu_control);


 my_ALU : ALU Port map( 
 		   alu_src_a_i => multiplex3,
           alu_src_b_i => multiplex4,
           alu_control_i => alu_control,
           zero_o=> zero,
           result_o=> result);    


 my_ALUOut : RegParallel generic map (N => 8 )--:= 8);
    	Port map( 
    	   clk_i => clk_m_i, rst_i => rst_m_i, en_i => en_m_i,
    	   en_control_i => '1',
           byte_i => result,
           byte_o => alu_out_byte);


 my_Shift_L_2 : ShiftL2 generic map (N => 8 )--:= 8);
 	    Port map( 
 		   reg_i => instruction(5 downto 0),
           reg_o => reg_desp);

--multiplex6
with pc_source select
	multiplex6 <= result when "00",
	              alu_out_byte when "01",
	              reg_desp when "10";



end Behavioral;
