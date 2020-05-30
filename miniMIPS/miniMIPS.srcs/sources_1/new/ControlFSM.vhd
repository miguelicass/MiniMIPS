----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2020 12:33:25
-- Design Name: 
-- Module Name: ControlFSM - Behavioral
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

entity ControlFSM is
  Port ( clk_i, rst_i, en_i : in STD_LOGIC;
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
end ControlFSM;

architecture Behavioral of ControlFSM is

--var Op type
constant J : STD_LOGIC_VECTOR(5 downto 0) := "000010";
constant R : STD_LOGIC_VECTOR(5 downto 0) := "000000";
--I
constant BEQ : STD_LOGIC_VECTOR(5 downto 0) := "000100";
constant LB : STD_LOGIC_VECTOR(5 downto 0) := "100000";
constant SB : STD_LOGIC_VECTOR(5 downto 0) := "101000";
constant ADDI : STD_LOGIC_VECTOR(5 downto 0) := "001000";

--states
type state is (s_0,
               s_1,
               s_2,
               s_3,
               s_4,
               s_5,
               s_6,
               s_7,
               s_8,
               s_9,
               s_10,
               s_11,
               s_12,
               s_13,
               s_14,
               s_15,
               s_16,
               s_17,
               s_18);

    signal current_state : state := s_0;


begin

   next_state : process(clk_i, rst_i)
   begin
   
       if (rst_i ='1') then current_state <= s_0;
        
       elsif ( clk_i'event and clk_i ='1' and en_i ='1' ) then
            
            case current_state is
               
                when s_0 => current_state <= s_1;
    
                when s_1 => current_state <= s_2;
               
                when s_2 => current_state <= s_3;
               
                when s_3 => current_state <= s_4;
               
                when s_4 => current_state <= s_5;
               
                when s_5 => current_state <= s_6;
               
                when s_6 => current_state <= s_7;
                
                when s_7 => current_state <= s_8;
               
                when s_8 => 
    
                   if (op_i = J) then current_state <= s_18;       
                   elsif (op_i = R) then current_state <= s_16;       
                   elsif (op_i = BEQ) then current_state <= s_15;          
                   elsif (op_i = LB or op_i = SB or op_i = ADDI) then current_state <= s_9; 
                   --else current_state <= current_state;
                   end if;
                
                when s_9 => 
    
                   if (op_i = ADDI) then current_state <= s_14;       
                   elsif (op_i = SB) then current_state <= s_13;     
                   elsif (op_i = LB) then current_state <= s_10;    
                   --else current_state <= current_state;
                   end if;
              
                when s_10 => current_state <= s_11;
             
                when s_11 => current_state <= s_12;
              
                when s_12 => current_state <= s_0;
             
                when s_13 => current_state <= s_0;
    
                when s_14 => current_state <= s_0;
    
                when s_15 => current_state <= s_0;
    
                when s_16 => current_state <= s_17;
    
                when s_17 => current_state <= s_0;
    
                when s_18 => current_state <= s_0;
                
                when others => current_state <= s_0;
           
            end case;
         end if;
 end process;


 outputs_state : process (current_state)
   begin

      case current_state is

                    when s_0 =>

            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";


         when s_1 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "01";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '1';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "1000";
      

         when s_2 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";


          when s_3 =>

            pc_source_o <= "00";
            alu_src_b_o <= "01";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '1';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0100";


         when s_4 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";
      

         when s_5 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "01";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '1';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0010";


          when s_6 =>

            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";


         when s_7 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "01";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '1';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0001";
      

         when s_8 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "11";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";


          when s_9 =>

            pc_source_o <= "00";
            alu_src_b_o <= "10";
            alu_src_a_o <= '1';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";


         when s_10 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '1';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";
      

         when s_11 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '1';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";



          when s_12 =>

            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '1';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '1';
            ir_write_o <= "0000";


         when s_13 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '1';
            mem_write_o <= '1';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";
      

         when s_14 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '1';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";



          when s_15 =>

            pc_source_o <= "01";
            alu_src_b_o <= "00";
            alu_src_a_o <= '1';
            alu_op_o <= "01";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '1';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";


         when s_16 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '1';
            alu_op_o <= "10";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";
      

         when s_17 =>
          
            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '1';
            reg_dest_o <= '1';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";


          when s_18 =>

            pc_source_o <= "10";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '1';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";
   

          when others =>  

            pc_source_o <= "00";
            alu_src_b_o <= "00";
            alu_src_a_o <= '0';
            alu_op_o <= "00";
            reg_write_o <= '0';
            reg_dest_o <= '0';
            pc_write_cond_o <= '0';
            pc_write_o <= '0';
            i_or_d_o <= '0';
            mem_write_o <= '0';
            mem_data_reg_o <= '0';
            mem_to_reg_o <= '0';
            ir_write_o <= "0000";


      end case;
   end process;

end Behavioral;
