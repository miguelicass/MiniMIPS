
u
Command: %s
53*	vivadotcl2D
0synth_design -top Manager -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:24 . Memory (MB): peak = 1904.574 ; gain = 202.684 ; free physical = 134 ; free virtual = 1387
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
Manager2default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Manager.vhd2default:default2
402default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter N bound to: 1000000 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DivFreq2default:default2g
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/DivFreq.vhd2default:default2
342default:default2!
Div_Freq_Mips2default:default2
DivFreq2default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Manager.vhd2default:default2
812default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
DivFreq2default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/DivFreq.vhd2default:default2
402default:default8@Z8-638h px� 
\
%s
*synth2D
0	Parameter N bound to: 1000000 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DivFreq2default:default2
12default:default2
12default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/DivFreq.vhd2default:default2
402default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MIPS2default:default2d
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
342default:default2
	Mini_MIPS2default:default2
MIPS2default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Manager.vhd2default:default2
862default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MIPS2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
412default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

ControlFSM2default:default2j
V/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ControlFSM.vhd2default:default2
342default:default2"
my_Control_FSM2default:default2

ControlFSM2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
1602default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

ControlFSM2default:default2l
V/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ControlFSM.vhd2default:default2
522default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
en_i2default:default2l
V/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ControlFSM.vhd2default:default2
892default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

ControlFSM2default:default2
22default:default2
12default:default2l
V/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ControlFSM.vhd2default:default2
522default:default8@Z8-256h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RegParallel2default:default2k
W/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegParallel.vhd2default:default2
342default:default2
my_PC2default:default2
RegParallel2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
1792default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
RegParallel2default:default2m
W/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegParallel.vhd2default:default2
412default:default8@Z8-638h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2 
en_control_i2default:default2m
W/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegParallel.vhd2default:default2
452default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
en_i2default:default2m
W/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegParallel.vhd2default:default2
452default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RegParallel2default:default2
32default:default2
12default:default2m
W/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegParallel.vhd2default:default2
412default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Memory2default:default2�
�/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.runs/synth_1/.Xil/Vivado-29819-miguelan-VirtualBox/realtime/Memory_stub.vhdl2default:default2
52default:default2
	my_Memory2default:default2
Memory2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
1882default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Memory2default:default2�
�/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.runs/synth_1/.Xil/Vivado-29819-miguelan-VirtualBox/realtime/Memory_stub.vhdl2default:default2
222default:default8@Z8-638h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RegParallel2default:default2k
W/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegParallel.vhd2default:default2
342default:default2+
my_Memory_Data_Register2default:default2
RegParallel2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2012default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
InstructionResgister2default:default2s
_/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/InstructionRegister.vhd2default:default2
342default:default2,
my_Instruction_Resgister2default:default2(
InstructionResgister2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2112default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2(
InstructionResgister2default:default2u
_/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/InstructionRegister.vhd2default:default2
422default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
en_i2default:default2u
_/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/InstructionRegister.vhd2default:default2
462default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
InstructionResgister2default:default2
42default:default2
12default:default2u
_/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/InstructionRegister.vhd2default:default2
422default:default8@Z8-256h px� 
V
%s
*synth2>
*	Parameter N bound to: 5 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter M bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
RegisterFile2default:default2l
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
342default:default2$
my_Register_File2default:default2 
RegisterFile2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2202default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
RegisterFile2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
482default:default8@Z8-638h px� 
V
%s
*synth2>
*	Parameter N bound to: 5 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter M bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
732default:default8@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
en_i2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
612default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
RegisterFile2default:default2
52default:default2
12default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
482default:default8@Z8-256h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RegParallel2default:default2k
W/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegParallel.vhd2default:default2
342default:default2
my_A2default:default2
RegParallel2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2332default:default8@Z8-3491h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RegParallel2default:default2k
W/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegParallel.vhd2default:default2
342default:default2
my_B2default:default2
RegParallel2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2432default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

ALUControl2default:default2j
V/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ALUControl.vhd2default:default2
342default:default2"
my_ALU_Control2default:default2

ALUControl2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2662default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

ALUControl2default:default2l
V/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ALUControl.vhd2default:default2
412default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

ALUControl2default:default2
62default:default2
12default:default2l
V/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ALUControl.vhd2default:default2
412default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ALU2default:default2c
O/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ALU.vhd2default:default2
332default:default2
my_ALU2default:default2
ALU2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2722default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ALU2default:default2e
O/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ALU.vhd2default:default2
412default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ALU2default:default2
72default:default2
12default:default2e
O/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ALU.vhd2default:default2
412default:default8@Z8-256h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RegParallel2default:default2k
W/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegParallel.vhd2default:default2
342default:default2
	my_ALUOut2default:default2
RegParallel2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2802default:default8@Z8-3491h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ShiftL22default:default2g
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ShiftL2.vhd2default:default2
342default:default2 
my_Shift_L_22default:default2
ShiftL22default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2882default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ShiftL22default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ShiftL2.vhd2default:default2
392default:default8@Z8-638h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ShiftL22default:default2
82default:default2
12default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ShiftL2.vhd2default:default2
392default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MIPS2default:default2
92default:default2
12default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
412default:default8@Z8-256h px� 
[
%s
*synth2C
/	Parameter N bound to: 100000 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DivFreq2default:default2g
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/DivFreq.vhd2default:default2
342default:default2$
Div_Freq_Display2default:default2
DivFreq2default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Manager.vhd2default:default2
942default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2+
DivFreq__parameterized12default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/DivFreq.vhd2default:default2
402default:default8@Z8-638h px� 
[
%s
*synth2C
/	Parameter N bound to: 100000 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2+
DivFreq__parameterized12default:default2
92default:default2
12default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/DivFreq.vhd2default:default2
402default:default8@Z8-256h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
Display7_Segmentos2default:default2r
^/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Display7_Segmentos.vhd2default:default2
342default:default2
Display2default:default2&
Display7_Segmentos2default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Manager.vhd2default:default2
992default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2&
Display7_Segmentos2default:default2t
^/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Display7_Segmentos.vhd2default:default2
462default:default8@Z8-638h px� 
V
%s
*synth2>
*	Parameter N bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2t
^/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Display7_Segmentos.vhd2default:default2
602default:default8@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

init_token2default:default2t
^/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Display7_Segmentos.vhd2default:default2
812default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
en_i2default:default2t
^/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Display7_Segmentos.vhd2default:default2
812default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
byte_i2default:default2t
^/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Display7_Segmentos.vhd2default:default2
912default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2&
Display7_Segmentos2default:default2
102default:default2
12default:default2t
^/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Display7_Segmentos.vhd2default:default2
462default:default8@Z8-256h px� 
�
default block is never used226*oasys2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Manager.vhd2default:default2
1182default:default8@Z8-226h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

en_display2default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Manager.vhd2default:default2
1112default:default8@Z8-614h px� 
�
default block is never used226*oasys2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Manager.vhd2default:default2
1472default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Manager2default:default2
112default:default2
12default:default2i
S/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Manager.vhd2default:default2
402default:default8@Z8-256h px� 
�
!design %s has unconnected port %s3331*oasys2&
Display7_Segmentos2default:default2
	byte_i[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2&
Display7_Segmentos2default:default2
	byte_i[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2&
Display7_Segmentos2default:default2
	byte_i[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2&
Display7_Segmentos2default:default2
	byte_i[4]2default:defaultZ8-3331h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:29 . Memory (MB): peak = 1969.293 ; gain = 267.402 ; free physical = 169 ; free virtual = 1419
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:30 . Memory (MB): peak = 1969.293 ; gain = 267.402 ; free physical = 157 ; free virtual = 1414
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:30 . Memory (MB): peak = 1969.293 ; gain = 267.402 ; free physical = 157 ; free virtual = 1414
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.042default:default2
1969.2932default:default2
0.0002default:default2
1342default:default2
14062default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
j/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/ip/Memory/Memory/Memory_in_context.xdc2default:default2)
Mini_MIPS/my_Memory	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
j/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/ip/Memory/Memory/Memory_in_context.xdc2default:default2)
Mini_MIPS/my_Memory	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2v
`/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/constrs_1/new/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2v
`/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/constrs_1/new/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2t
`/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/constrs_1/new/Nexys-A7-100T-Master.xdc2default:default2-
.Xil/Manager_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2081.0162default:default2
0.0002default:default2
682default:default2
13212default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.012default:default2
00:00:00.052default:default2
2081.0162default:default2
0.0002default:default2
652default:default2
13212default:defaultZ17-722h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2'
Mini_MIPS/my_Memory2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:22 ; elapsed = 00:00:51 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 110 ; free virtual = 1388
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:22 ; elapsed = 00:00:51 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 110 ; free virtual = 1388
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:51 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 109 ; free virtual = 1388
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2

ControlFSM2default:defaultZ8-802h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

ir_write_o2default:defaultZ8-5546h px� 
|
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2 
mem_to_reg_o2default:defaultZ8-5546h px� 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
mem_data_reg_o2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
mem_write_o2default:defaultZ8-5546h px� 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
i_or_d_o2default:defaultZ8-5546h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2

pc_write_o2default:defaultZ8-5587h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
pc_write_cond_o2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

reg_dest_o2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
reg_write_o2default:defaultZ8-5546h px� 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
alu_op_o2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
alu_src_a_o2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
alu_src_b_o2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
pc_source_o2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
instruction_o2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2e
O/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ALU.vhd2default:default2
512default:default8@Z8-5818h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2
Manager2default:defaultZ8-802h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	data_m_in2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
current_state2default:default2
32default:default2
52default:defaultZ8-5544h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_0 |              0000000000000000001 |                            00000
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_1 |              0000000000000000010 |                            00001
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_2 |              0000000000000000100 |                            00010
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_3 |              0000000000000001000 |                            00011
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_4 |              0000000000000010000 |                            00100
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_5 |              0000000000000100000 |                            00101
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_6 |              0000000000001000000 |                            00110
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_7 |              0000000000010000000 |                            00111
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_8 |              0000000000100000000 |                            01000
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_18 |              0000000001000000000 |                            10010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_16 |              0000000010000000000 |                            10000
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_17 |              0000000100000000000 |                            10001
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_15 |              0000001000000000000 |                            01111
2default:defaulth p
x
� 
�
%s
*synth2s
_                     s_9 |              0000010000000000000 |                            01001
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_14 |              0000100000000000000 |                            01110
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_13 |              0001000000000000000 |                            01101
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_10 |              0010000000000000000 |                            01010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_11 |              0100000000000000000 |                            01011
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_12 |              1000000000000000000 |                            01100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2
one-hot2default:default2

ControlFSM2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2%
alu_control_o_reg2default:default2l
V/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/ALUControl.vhd2default:default2
502default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
multiplex6_reg2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
1832default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2"
multiplex5_reg2default:default2f
P/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/MIPS.vhd2default:default2
2602default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
led_reg2default:default2t
^/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/Display7_Segmentos.vhd2default:default2
992default:default8@Z8-327h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_              number_248 |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_              number_249 |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_              number_250 |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_              number_251 |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_              number_252 |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2s
_              number_253 |                              101 |                              101
2default:defaulth p
x
� 
�
%s
*synth2s
_              number_254 |                              110 |                              110
2default:defaulth p
x
� 
�
%s
*synth2s
_              number_255 |                              111 |                              111
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2

sequential2default:default2
Manager2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:24 ; elapsed = 00:00:54 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 92 ; free virtual = 1378
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 40    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  19 Input     19 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     19 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     19 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  19 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  19 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 32    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
<
%s
*synth2$
Module Manager 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module DivFreq 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module ControlFSM 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  19 Input     19 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     19 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     19 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  19 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  19 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
@
%s
*synth2(
Module RegParallel 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
I
%s
*synth21
Module InstructionResgister 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
A
%s
*synth2)
Module RegisterFile 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 34    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 32    
2default:defaulth p
x
� 
?
%s
*synth2'
Module ALUControl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
Module ALU 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
Module MIPS 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
L
%s
*synth24
 Module DivFreq__parameterized1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
G
%s
*synth2/
Module Display7_Segmentos 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2-
Mini_MIPS/my_Control_FSM/2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2-
Mini_MIPS/my_Control_FSM/2default:defaultZ8-5546h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[7]2default:default2
1st2default:default2>
*Mini_MIPS/my_Register_File/reg_reg[0][7]/Q2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[7]2default:default2
2nd2default:default2
GND2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
data0[7]2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[6]2default:default2
1st2default:default2>
*Mini_MIPS/my_Register_File/reg_reg[0][6]/Q2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[6]2default:default2
2nd2default:default2
GND2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
data0[6]2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[5]2default:default2
1st2default:default2>
*Mini_MIPS/my_Register_File/reg_reg[0][5]/Q2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[5]2default:default2
2nd2default:default2
GND2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
data0[5]2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[4]2default:default2
1st2default:default2>
*Mini_MIPS/my_Register_File/reg_reg[0][4]/Q2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[4]2default:default2
2nd2default:default2
GND2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
data0[4]2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[3]2default:default2
1st2default:default2>
*Mini_MIPS/my_Register_File/reg_reg[0][3]/Q2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[3]2default:default2
2nd2default:default2
GND2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
data0[3]2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[2]2default:default2
1st2default:default2>
*Mini_MIPS/my_Register_File/reg_reg[0][2]/Q2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[2]2default:default2
2nd2default:default2
GND2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
data0[2]2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[1]2default:default2
1st2default:default2>
*Mini_MIPS/my_Register_File/reg_reg[0][1]/Q2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[1]2default:default2
2nd2default:default2
GND2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
data0[1]2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[0]2default:default2
1st2default:default2>
*Mini_MIPS/my_Register_File/reg_reg[0][0]/Q2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data0[0]2default:default2
2nd2default:default2
GND2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2
data0[0]2default:default2n
X/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.srcs/sources_1/new/RegisterFile.vhd2default:default2
582default:default8@Z8-6858h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
Mini_MIPS/multiplex5_reg[7]2default:default2
Manager2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
Mini_MIPS/multiplex5_reg[6]2default:default2
Manager2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
Mini_MIPS/multiplex5_reg[5]2default:default2
Manager2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
Mini_MIPS/multiplex5_reg[4]2default:default2
Manager2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
Mini_MIPS/multiplex5_reg[3]2default:default2
Manager2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
Mini_MIPS/multiplex5_reg[2]2default:default2
Manager2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
Mini_MIPS/multiplex5_reg[1]2default:default2
Manager2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
Mini_MIPS/multiplex5_reg[0]2default:default2
Manager2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:30 ; elapsed = 00:01:01 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 96 ; free virtual = 1363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:41 ; elapsed = 00:01:18 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 73 ; free virtual = 1244
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:44 ; elapsed = 00:01:22 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 84 ; free virtual = 1226
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:45 ; elapsed = 00:01:23 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 79 ; free virtual = 1224
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:52 ; elapsed = 00:01:32 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 76 ; free virtual = 1225
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:52 ; elapsed = 00:01:32 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 76 ; free virtual = 1225
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:52 ; elapsed = 00:01:32 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 75 ; free virtual = 1225
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:52 ; elapsed = 00:01:32 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 75 ; free virtual = 1225
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:52 ; elapsed = 00:01:32 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 75 ; free virtual = 1225
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:52 ; elapsed = 00:01:32 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 75 ; free virtual = 1225
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |Memory        |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
K
%s*synth23
+------+--------------+------+
2default:defaulth px� 
K
%s*synth23
|      |Cell          |Count |
2default:defaulth px� 
K
%s*synth23
+------+--------------+------+
2default:defaulth px� 
K
%s*synth23
|1     |Memory_bbox_0 |     1|
2default:defaulth px� 
K
%s*synth23
|2     |BUFG          |     1|
2default:defaulth px� 
K
%s*synth23
|3     |CARRY4        |    19|
2default:defaulth px� 
K
%s*synth23
|4     |LUT1          |     4|
2default:defaulth px� 
K
%s*synth23
|5     |LUT2          |     6|
2default:defaulth px� 
K
%s*synth23
|6     |LUT3          |    21|
2default:defaulth px� 
K
%s*synth23
|7     |LUT4          |    35|
2default:defaulth px� 
K
%s*synth23
|8     |LUT5          |   147|
2default:defaulth px� 
K
%s*synth23
|9     |LUT6          |   199|
2default:defaulth px� 
K
%s*synth23
|10    |MUXF7         |    16|
2default:defaulth px� 
K
%s*synth23
|11    |FDCE          |   421|
2default:defaulth px� 
K
%s*synth23
|12    |FDPE          |     8|
2default:defaulth px� 
K
%s*synth23
|13    |LD            |    15|
2default:defaulth px� 
K
%s*synth23
|14    |IBUF          |     2|
2default:defaulth px� 
K
%s*synth23
|15    |OBUF          |    16|
2default:defaulth px� 
K
%s*synth23
+------+--------------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
s
%s
*synth2[
G+------+-----------------------------+------------------------+------+
2default:defaulth p
x
� 
s
%s
*synth2[
G|      |Instance                     |Module                  |Cells |
2default:defaulth p
x
� 
s
%s
*synth2[
G+------+-----------------------------+------------------------+------+
2default:defaulth p
x
� 
s
%s
*synth2[
G|1     |top                          |                        |   926|
2default:defaulth p
x
� 
s
%s
*synth2[
G|2     |  Display                    |Display7_Segmentos      |    22|
2default:defaulth p
x
� 
s
%s
*synth2[
G|3     |  Div_Freq_Display           |DivFreq__parameterized1 |    82|
2default:defaulth p
x
� 
s
%s
*synth2[
G|4     |  Div_Freq_Mips              |DivFreq                 |    82|
2default:defaulth p
x
� 
s
%s
*synth2[
G|5     |  Mini_MIPS                  |MIPS                    |   715|
2default:defaulth p
x
� 
s
%s
*synth2[
G|6     |    my_ALU                   |ALU                     |     3|
2default:defaulth p
x
� 
s
%s
*synth2[
G|7     |    my_A                     |RegParallel             |     8|
2default:defaulth p
x
� 
s
%s
*synth2[
G|8     |    my_ALUOut                |RegParallel_0           |     8|
2default:defaulth p
x
� 
s
%s
*synth2[
G|9     |    my_ALU_Control           |ALUControl              |    13|
2default:defaulth p
x
� 
s
%s
*synth2[
G|10    |    my_B                     |RegParallel_1           |     8|
2default:defaulth p
x
� 
s
%s
*synth2[
G|11    |    my_Control_FSM           |ControlFSM              |    97|
2default:defaulth p
x
� 
s
%s
*synth2[
G|12    |    my_Instruction_Resgister |InstructionResgister    |    90|
2default:defaulth p
x
� 
s
%s
*synth2[
G|13    |    my_Memory_Data_Register  |RegParallel_2           |    16|
2default:defaulth p
x
� 
s
%s
*synth2[
G|14    |    my_PC                    |RegParallel_3           |     8|
2default:defaulth p
x
� 
s
%s
*synth2[
G|15    |    my_Register_File         |RegisterFile            |   440|
2default:defaulth p
x
� 
s
%s
*synth2[
G+------+-----------------------------+------------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:52 ; elapsed = 00:01:32 . Memory (MB): peak = 2083.984 ; gain = 382.094 ; free physical = 75 ; free virtual = 1225
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 24 critical warnings and 12 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:49 ; elapsed = 00:01:25 . Memory (MB): peak = 2083.984 ; gain = 267.402 ; free physical = 128 ; free virtual = 1279
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:52 ; elapsed = 00:01:32 . Memory (MB): peak = 2083.992 ; gain = 382.094 ; free physical = 126 ; free virtual = 1280
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.072default:default2
2083.9922default:default2
0.0002default:default2
862default:default2
12742default:defaultZ17-722h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
502default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2086.9532default:default2
0.0002default:default2
632default:default2
12992default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2[
G  A total of 15 instances were transformed.
  LD => LDCE: 15 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
802default:default2
262default:default2
242default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:01:072default:default2
00:01:522default:default2
2086.9532default:default2
626.1372default:default2
2042default:default2
14422default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2086.9532default:default2
0.0002default:default2
2022default:default2
14422default:defaultZ17-722h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
M/home/miguelan/Escritorio/MiniMIPS/miniMIPS/miniMIPS.runs/synth_1/Manager.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2x
dExecuting : report_utilization -file Manager_utilization_synth.rpt -pb Manager_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun May 31 14:38:55 20202default:defaultZ17-206h px� 


End Record