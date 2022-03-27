%
O6684

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
G00 X107.5 Y-77.708 (movimiento rapido al X-Y de punto de inicio)
G43 Z90.5 H03 (aplicar desface de longitud herramienta)

(Bloque de trayectoria)
G00 Z80.5
G01 Z80. F600.
G18 G03 X102.5 Z75. I-5.
G01 X75.
X0.
G17 G02 Y-50.792 J13.458
G01 X75.
G03 Y-23.875 J13.458
G01 X0.
G18 G03 X-5. Z80. K5.
G00 Z90.5

(Bloque de recuperacion)
M05 (apagar spindle)
M09 (apagar cooland)
G17 (establecer plano X-Y para circulos)
G91 G28 X0 Y0 Z100. G90 (regresar a casa)
G49 (cancelar desface de herramienta)
G54 (Seleccionar G54 WCS)
M30 (final del programa)
%
