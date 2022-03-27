%
O1111
(MACHINE)
(  VENDOR AUTODESK)
(  MODEL GENERIC 3-AXIS)
(  DESCRIPTION THIS MACHINE HAS XY AXIS ON THE TABLE AND Z AXIS ON THE HEAD)
(T8 D=16. CR=0. - ZMIN=73.5 - FLAT END MILL)
G90 G94 G17 G49 G40 G80
G21
G28 G91 Z0.
G90

(RECTIFICAR BORDES)
T8 M06
S2250 M03
G55
M08
G00 X-13.35 Y-39.6
G43 Z100. H08
G00 Z90.
G01 Z86. F1066.
Z75.1
G18 G02 X-11.75 Z73.5 I1.6 F500.
G17
G01 G41 X-10.15 Y-40.4 D08
G03 X-7.75 Y-38. J2.4
G01 Y-0.5
G02 X0.5 Y7.75 I8.25
G01 X75.5
G02 X83.75 Y-0.5 J-8.25
G01 Y-75.5
G02 X75.5 Y-83.75 I-8.25
G01 X0.5
G02 X-7.75 Y-75.5 J8.25
G01 Y-38.
G03 X-10.15 Y-35.6 I-2.4
G01 G40 X-11.75 Y-36.4
G18 G03 X-13.35 Z75.1 K1.6
G00 Z100.
G17

M09
G28 G91 Z0.
G90
G49
G28 G91 X0. Y0.
G90
M30
%
