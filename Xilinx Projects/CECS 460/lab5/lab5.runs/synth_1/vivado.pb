
?
Command: %s
53*	vivadotcl2Q
=synth_design -top DeterminantTopModule -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 437.957 ; gain = 98.465
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2(
DeterminantTopModule2default:default2
 2default:default2?
?C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/DeterminantTopModule.v2default:default2
92default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2$
GenerateMatrices2default:default2
 2default:default2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
92default:default8@Z8-6157h px? 
?
n3D RAM %s  for this pattern/configuration is not supported. This will most likely be implemented in registers
4275*oasys2
A_reg2default:defaultZ8-5856h px? 
?
n3D RAM %s  for this pattern/configuration is not supported. This will most likely be implemented in registers
4275*oasys2
B_reg2default:defaultZ8-5856h px? 
?
n3D RAM %s  for this pattern/configuration is not supported. This will most likely be implemented in registers
4275*oasys2
C_reg2default:defaultZ8-5856h px? 
?
n3D RAM %s  for this pattern/configuration is not supported. This will most likely be implemented in registers
4275*oasys2
D_reg2default:defaultZ8-5856h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
GenerateMatrices2default:default2
 2default:default2
12default:default2
12default:default2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
CalcDeterminant2default:default2
 2default:default2?
{C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/CalcDeterminant.v2default:default2
242default:default8@Z8-6157h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
X_reg2default:default2#
CalcDeterminant2default:default2?
{C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/CalcDeterminant.v2default:default2
392default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
Y_reg2default:default2#
CalcDeterminant2default:default2?
{C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/CalcDeterminant.v2default:default2
402default:default8@Z8-5788h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
Z_reg2default:default2#
CalcDeterminant2default:default2?
{C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/CalcDeterminant.v2default:default2
412default:default8@Z8-5788h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
CalcDeterminant2default:default2
 2default:default2
22default:default2
12default:default2?
{C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/CalcDeterminant.v2default:default2
242default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
DeterminantTopModule2default:default2
 2default:default2
32default:default2
12default:default2?
?C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/DeterminantTopModule.v2default:default2
92default:default8@Z8-6155h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 493.672 ; gain = 154.180
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 493.672 ; gain = 154.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 493.672 ; gain = 154.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
LED[0]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
332default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
332default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[1]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
342default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
342default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[2]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
352default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
352default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[3]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[4]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
372default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
372default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[5]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
382default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[6]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
392default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[7]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
402default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
402default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[8]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
412default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
412default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[9]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
422default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
422default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[10]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
432default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
432default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[11]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
442default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
442default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[12]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
452default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
452default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[13]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
462default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
462default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[14]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
472default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
472default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[15]2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
482default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2
482default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/constrs_1/imports/lab-6/Nexys4ddrMaster.xdc2default:default2:
&.Xil/DeterminantTopModule_propImpl.xdc2default:defaultZ1-236h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
837.8912default:default2
0.0002default:defaultZ17-268h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
837.8912default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
837.8912default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
837.8912default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 837.891 ; gain = 498.398
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 837.891 ; gain = 498.398
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 837.891 ; gain = 498.398
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 837.891 ; gain = 498.398
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               45 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 36    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     45 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     45 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
E
%s
*synth2-
Module GenerateMatrices 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               45 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 36    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     45 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     45 Bit        Muxes := 1     
2default:defaulth p
x
? 
D
%s
*synth2,
Module CalcDeterminant 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 4     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP one/Y0, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator one/Y0 is absorbed into DSP one/Y0.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP one/Z0, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator one/Z0 is absorbed into DSP one/Z0.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: Generating DSP one/X0, operation Mode is: A*B.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator one/X0 is absorbed into DSP one/X0.
2default:defaulth p
x
? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][0][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/B_reg[0][0][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[0][0][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[0][0][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][0][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[0][0][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[0][0][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[0][0][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][0][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[0][0][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[0][0][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[0][0][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][0][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[0][0][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[0][0][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[0][0][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][0][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[0][0][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[0][0][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/D_reg[0][0][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[2][1][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[2][1][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[2][1][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[2][1][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[2][1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[2][1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[2][1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[2][1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[2][1][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[2][1][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[2][1][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/D_reg[2][1][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[2][1][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[2][1][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[2][1][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[2][1][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[2][1][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[2][1][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[2][1][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[2][1][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[1][1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[1][1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[1][1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[1][1][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[1][1][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[1][1][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[1][1][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[1][1][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[1][1][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[1][1][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[1][1][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[1][1][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[1][1][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/B_reg[1][1][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[1][1][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[1][1][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[1][1][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[1][1][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[1][1][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[1][1][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][2][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[0][2][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[0][2][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/D_reg[0][2][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][2][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[0][2][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[0][2][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/D_reg[0][2][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][2][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[0][2][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[0][2][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/D_reg[0][2][2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][2][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[0][2][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[0][2][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[0][2][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[0][2][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[0][2][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[0][2][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/D_reg[0][2][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[2][2][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[2][2][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[2][2][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[2][2][3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[2][2][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[2][2][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/C_reg[2][2][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/D_reg[2][2][4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[1][0][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[1][0][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[1][0][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[1][0][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[1][0][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/B_reg[1][0][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[1][0][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[1][0][1] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/A_reg[2][2][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2)
\zero/B_reg[2][2][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/C_reg[2][2][0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2)
\zero/D_reg[2][2][0] 2default:defaultZ8-3333h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[40]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[20]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[44]2default:default2
FDC2default:default2)
zero/OutMatrix_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
zero/OutMatrix_reg[8]2default:default2
FDC2default:default2)
zero/OutMatrix_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
zero/OutMatrix_reg[5]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[30]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
zero/OutMatrix_reg[7]2default:default2
FDC2default:default2)
zero/OutMatrix_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[20]2default:default2
FDC2default:default2)
zero/OutMatrix_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[30]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[31]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[32]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[32]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[34]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[34]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[27]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[27]2default:default2
FDC2default:default2)
zero/OutMatrix_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
zero/OutMatrix_reg[1]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[29]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[29]2default:default2
FDC2default:default2)
zero/OutMatrix_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
zero/OutMatrix_reg[4]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[19]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[19]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[13]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[12]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[17]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[17]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[35]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[35]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[37]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
zero/OutMatrix_reg[37]2default:default2
FDC2default:default2*
zero/OutMatrix_reg[39]2default:defaultZ8-3886h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 837.891 ; gain = 498.398
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name     | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|CalcDeterminant | A*B         | 16     | 5      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|CalcDeterminant | A*B         | 16     | 5      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|CalcDeterminant | A*B         | 16     | 5      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?+----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
772default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
772default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
772default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
772default:default8@Z8-5844h px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 872.012 ; gain = 532.520
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 872.234 ; gain = 532.742
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
772default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
772default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
772default:default8@Z8-5844h px? 
?
{Detected registers with asynchronous reset at DSP/BRAM block boundary. Consider using synchronous reset for optimal packing4266*oasys2?
|C:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.srcs/sources_1/imports/src/GenerateMatrices.v2default:default2
772default:default8@Z8-5844h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 881.898 ; gain = 542.406
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 881.898 ; gain = 542.406
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 881.898 ; gain = 542.406
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 881.898 ; gain = 542.406
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 881.898 ; gain = 542.406
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 881.898 ; gain = 542.406
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 881.898 ; gain = 542.406
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|1     |BUFG    |     1|
2default:defaulth px? 
E
%s*synth2-
|2     |CARRY4  |    16|
2default:defaulth px? 
E
%s*synth2-
|3     |DSP48E1 |     3|
2default:defaulth px? 
E
%s*synth2-
|4     |LUT1    |    10|
2default:defaulth px? 
E
%s*synth2-
|5     |LUT2    |    20|
2default:defaulth px? 
E
%s*synth2-
|6     |LUT3    |    27|
2default:defaulth px? 
E
%s*synth2-
|7     |LUT4    |    14|
2default:defaulth px? 
E
%s*synth2-
|8     |LUT5    |     3|
2default:defaulth px? 
E
%s*synth2-
|9     |LUT6    |     1|
2default:defaulth px? 
E
%s*synth2-
|10    |FDCE    |    19|
2default:defaulth px? 
E
%s*synth2-
|11    |IBUF    |     5|
2default:defaulth px? 
E
%s*synth2-
|12    |OBUF    |    16|
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
X
%s
*synth2@
,+------+---------+-----------------+------+
2default:defaulth p
x
? 
X
%s
*synth2@
,|      |Instance |Module           |Cells |
2default:defaulth p
x
? 
X
%s
*synth2@
,+------+---------+-----------------+------+
2default:defaulth p
x
? 
X
%s
*synth2@
,|1     |top      |                 |   135|
2default:defaulth p
x
? 
X
%s
*synth2@
,|2     |  one    |CalcDeterminant  |    64|
2default:defaulth p
x
? 
X
%s
*synth2@
,|3     |  zero   |GenerateMatrices |    49|
2default:defaulth p
x
? 
X
%s
*synth2@
,+------+---------+-----------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 881.898 ; gain = 542.406
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 881.898 ; gain = 198.188
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 881.898 ; gain = 542.406
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
192default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
881.8982default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1472default:default2
232default:default2
162default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:212default:default2
00:00:222default:default2
881.8982default:default2
555.5392default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
881.8982default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
tC:/Users/KuldeepGohil/Desktop/Spring2021/CECS460/labs/VivadoProjects/lab5/lab5.runs/synth_1/DeterminantTopModule.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
~Executing : report_utilization -file DeterminantTopModule_utilization_synth.rpt -pb DeterminantTopModule_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Apr 23 11:27:46 20212default:defaultZ17-206h px? 


End Record