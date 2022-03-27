%
O6600

(BLOQUE DE SEGURIDAD)
N10 G0 G17 G21 G40 G49 G54 G80 G90 G94 G53 Z0

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

N20 G15 G52 X0 Y0

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




(Bloque de Inicializacion)
N25 T10 M06 (hacer cambio de herramienta)
N35 S2000 M03 (prender spindle a S rev/min)
N40 G55 (asignar WCS)
N45 M08 (prender coolant)
N50 G00 X0 Y0 (movimiento rapido al X-Y de punto de inicio)
N55 G43 Z17.5 H10 (aplicar desface de longitud herramienta)

(Bloque de recuperacion)
N120 M05 (apagar spindle)
N121 M09 (apagar cooland)
N122 G17 (plano X-Y para circulos)
N125 G91 G28 X0 Y0 Z100. G90 (regresar a casa)
N130 G49 (cancelar desface de herramienta)
N295 G54 (Seleccionar G54 WCS)

%
