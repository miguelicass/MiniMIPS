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
  Port ( clk_i : in STD_LOGIC;
         rst_i : in STD_LOGIC;
         en_i : in STD_LOGIC;
         op_i : in STD_LOGIC_VECTOR(5 downto 0);
         pcSrc_o : out STD_LOGIC;
         aluSrcB_o : out STD_LOGIC_VECTOR(1 downto 0);
         aluSrcA_o : out STD_LOGIC;
         aluOp_o : out STD_LOGIC_VECTOR(1 downto 0);
         regWrite_o : out STD_LOGIC;
         regDest_o : out STD_LOGIC;
         pcWriteCond_o : out STD_LOGIC;
         pcWrite_o : out STD_LOGIC;
         iorD_o : out STD_LOGIC;
         memWrite_o : out STD_LOGIC;
         memDataReg_o : out STD_LOGIC;
         memToReg_o : out STD_LOGIC;
         irWrite_o : STD_LOGIC_VECTOR(3 downto 0));
end ControlFSM;

architecture Behavioral of ControlFSM is

begin


end Behavioral;
