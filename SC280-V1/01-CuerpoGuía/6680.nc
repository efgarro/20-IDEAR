%
O6680

(BLOQUE DE SEGURIDAD)
G0 G17 G21 G40 G49 G54 G80 G90 G94 G53 Z0

( G0  = usar movimiento rápido )
( G17 = establecer plano X-Y para circulos )
( G21 = establecer las unidades en milimetros )
( G40 = cancelar desface por radio de herramienta )
( G49 = cancelar desface por longitud de herramienta )
( G54 = seleccionar el G54 como cero de pieza )
( G80 = cancelar cualquier ciclo enlatado )
( G90 = usar coordenadas absolutas )
( G94 = usar avance linear por minuto en commandos F )
( G53 Z0 = mover spindle al cero de maquina )

G15 G52 X0 Y0

( G15 cancelar coordenadas polares )
( G52 X0 Y0 - cancelar desface de cero de pieza )

( M01 = parada opcional )
( M03 = prender spindle, con las manillas del reloj )
( M04 = prender spindle, contra las manillas del reloj )
( M05 = apagar splinde )
( M06 = cambio de herramienta )
( M08 = prender coolant )
( M09 = apagar coolant )
( M30 = terminar programa y volver al inicio )

(RECTIFICAR CARA)

(Bloque de Inicializacion )
T3 M06 (hacer cambio de herramienta)
S2300 M03 (prender spindle a S rev/min)
G55 (asignar WCS)
M08 (prender coolant)
G00 X108.5 Y-75.125 (movimiento rapido al X-Y de punto de inicio)
G43 Z100. H03 (aplicar desface de longitud herramienta)

(Bloque de trayectoria)
G00 Z90.
G01 Z87.75 F600.
G18 G03 X103.5 Z82.75 I-5.
G01 X76.
X0.
G17 G02 Y-49.625 J12.75
G01 X76.
G03 Y-24.125 J12.75
G01 X0.
G18 G03 X-5. Z87.75 K5.
G00 Z100.

(Bloque de recuperacion)
M05 (apagar spindle)
M09 (apagar cooland)
G17 (establecer plano X-Y para circulos)
G91 G28 X0 Y0 Z100. G90 (regresar a casa)
G49 (cancelar desface de herramienta)
G54 (Seleccionar G54 WCS)


(RECTIFICAR BORDES)

(Bloque de Inicializacion)
M01 (parada opcional)
T8 M06 (cambio de herramienta)
S2500 M03 (prender spindle)
G55 (asignar WCS)
M08 (prender cooland)
G00 X-12.55 Y-39.6 (movimiento rapido al X-Y de punto de inicio)
G43 Z100. H08 (aplicar desface de longitud herramienta)

(Bloque de Trayectoria)
G00 Z90.
G01 Z86. F500.
Z75.1
G18 G02 X-10.95 Z73.5 I1.6 F500.
G01 X-9.35
G17 G03 X-7.75 Y-38. J1.6
G01 Y-0.5
G02 X0.5 Y7.75 I8.25
G01 X75.5
G02 X83.75 Y-0.5 J-8.25
G01 Y-75.5
G02 X75.5 Y-83.75 I-8.25
G01 X0.5
G02 X-7.75 Y-75.5 J8.25
G01 Y-38.
G03 X-9.35 Y-36.4 I-1.6
G01 X-10.95
G18 G03 X-12.55 Z75.1 K1.6
G00 Z100.

(Bloque de recuperacion)
M05 (apagar spindle)
M09 (apagar cooland)
G17 (asignar plano X-Y para circulos)
G91 G28 X0 Y0 Z100. G90 (regrasar a casa)
G49 (cancelar desface de herramienta )
G54 (Seleccionar G54 WCS)
M30 (final del programa)
%
