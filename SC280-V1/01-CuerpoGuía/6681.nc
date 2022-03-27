%
O6681

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

(Bloque de Inicializacion)
T3 M06 (hacer cambio de herramienta)
S2300 M03 (prender spindle a S rev/min)
G55 (asignar WCS)
M08 (prender coolant)
G00 X108. Y-74.625 (movimiento rapido al X-Y de punto de inicio)
G43 Z97.5 H03 (aplicar desface de longitud herramienta)

(Bloque de trayectoria)
G00 Z87.5
G01 Z85. F600.
G18 G03 X103. Z80. I-5.
G01 X75.5
X-0.5
G17 G02 Y-49.125 J12.75
G01 X75.5
G03 Y-23.625 J12.75
G01 X-0.5
G18 G03 X-5.5 Z85. K5.
G00 Z97.5

(Bloque de recuperacion)
M05 (apagar spindle)
M09 (apagar cooland)
G17 (plano X-Y para circulos)
G91 G28 X0 Y0 Z100. G90 (regresar a casa)
G49 (cancelar desface de herramienta)
G54 (Seleccionar G54 WCS)


(RECTIFICAR BORDES)

(Bloque de Inicializacion)
M01
T8 M06
S2250 M03
G55
M08
G00 X39.1 Y-88.05
G43 Z97.5 H08

(Bloque de Trayectoria)
G00 Z87.5
G01 Z83.5 F500.
Z72.6
G19 G03 Y-86.45 Z71. J1.6 F500.
G01 Y-84.85
G17 G03 X37.5 Y-83.25 I-1.6
G01 X0.
G02 X-8.25 Y-75. J8.25
G01 Y0.
G02 X0. Y8.25 I8.25
G01 X75.
G02 X83.25 Y0. J-8.25
G01 Y-75.
G02 X75. Y-83.25 I-8.25
G01 X37.5
G03 X35.9 Y-84.85 J-1.6
G01 Y-86.45
G19 G02 Y-88.05 Z72.6 K1.6
G00 Z97.5

(Bloque de recuperacion)
G17
M05
M09
G91 G28 X0 Y0 Z100. G90
G49
G54

(INDEXAR CENTROS)

(Bloque de Inializacion)
M01
T4 M06
S2500 M03
G55
M08
G00 X62. Y-51.
G43 Z97.5 H04

(Bloque de Trayectoria)
G00 Z87.5
G98 G81 X62. Y-51. Z77. R85. F437.
Y-19.
G80
Z97.5

(Bloque de Recuperacion)
M05
M09
G17
G91 G28 X0 Y0 Z100. G90
G49
G54


(HUECO 8MM)

(Bloque de Inializacion)
M01
T7 M06
S1800 M03
G55
M08
G00 X62. Y-51.
G43 Z97.5 H07

(Bloque de Trayectoria)
G00 Z87.5
Z85.
Z82.
G01 Z78. F250.
G00 Z78.16
G01 Z76. F250.
G00 Z76.16
G01 Z74. F250.
G00 Z74.16
G01 Z72. F250.
G00 Z72.16
G01 Z70. F250.
G00 Z70.16
G01 Z68. F250.
G00 Z68.16
G01 Z66. F250.
G00 Z66.16
G01 Z64. F250.
G00 Z87.5
Z66.
G01 Z62. F250.
G00 Z62.16
G01 Z60. F250.
G00 Z60.16
G01 Z58. F250.
G00 Z58.16
G01 Z56. F250.
G00 Z56.16
G01 Z54. F250.
G00 Z54.16
G01 Z52. F250.
G00 Z52.16
G01 Z50. F250.
G00 Z50.16
G01 Z48. F250.
G00 Z87.5
Z50.
G01 Z46.597 F250.
G00 Z87.5
Y-19.
Z85.
Z82.
G01 Z78. F250.
G00 Z78.16
G01 Z76. F250.
G00 Z76.16
G01 Z74. F250.
G00 Z74.16
G01 Z72. F250.
G00 Z72.16
G01 Z70. F250.
G00 Z70.16
G01 Z68. F250.
G00 Z68.16
G01 Z66. F250.
G00 Z66.16
G01 Z64. F250.
G00 Z87.5
Z66.
G01 Z62. F250.
G00 Z62.16
G01 Z60. F250.
G00 Z60.16
G01 Z58. F250.
G00 Z58.16
G01 Z56. F250.
G00 Z56.16
G01 Z54. F250.
G00 Z54.16
G01 Z52. F250.
G00 Z52.16
G01 Z50. F250.
G00 Z50.16
G01 Z48. F250.
G00 Z87.5
Z50.
G01 Z46.597 F250.
G00 Z87.5
Z97.5

(Bloque de Recuperacion)
M05
M09
G17
G91 G28 X0 Y0 Z100. G90
G49
G54

(HUECO 12DIA)

(Bloque de Inializacion)
M01
T10 M06
S1800 M03
G55
M08
G00 X62. Y-51.
G43 Z97.5 H10

(Bloque de Trayectoria)
G00 Z87.5
Z85.
Z82.
G01 Z76.825 F254.
G00 Z77.079
G01 Z73.65 F254.
G00 Z73.904
G01 Z70.475 F254.
G00 Z70.729
G01 Z67.3 F254.
G00 Z67.554
G01 Z64.125 F254.
G00 Z64.379
G01 Z60.95 F254.
G00 Z61.204
G01 Z57.775 F254.
G00 Z58.029
G01 Z54.6 F254.
G00 Z54.854
G01 Z51.425 F254.
G00 Z51.679
G01 Z48.25 F254.
G00 Z48.504
G01 Z46.185 F254.
G00 Z87.5
Y-19.
Z85.
Z82.
G01 Z76.825 F254.
G00 Z77.079
G01 Z73.65 F254.
G00 Z73.904
G01 Z70.475 F254.
G00 Z70.729
G01 Z67.3 F254.
G00 Z67.554
G01 Z64.125 F254.
G00 Z64.379
G01 Z60.95 F254.
G00 Z61.204
G01 Z57.775 F254.
G00 Z58.029
G01 Z54.6 F254.
G00 Z54.854
G01 Z51.425 F254.
G00 Z51.679
G01 Z48.25 F254.
G00 Z48.504
G01 Z46.185 F254.
G00 Z87.5
Z97.5

(Bloque de Recuperacion)
M05
M09
G17
G91 G28 X0 Y0 Z100. G90
G49
G54

(RECTIFICAR HUECO)

(Bloque de Inicializacion)
M01
T8 M06
S2000 M03
G55
M08
G00 X61.354 Y-51.35
G43 Z97.5 H08

(Bloque de Trayectoria)
G00 Z80.4
G01 Z80. F500.
X61.799 Y-52.014
G03 X62.814 Y-52.215 I0.608 J0.407
X61.186 Y-49.785 Z79.5 I-0.814 J1.215
X62.814 Y-52.215 Z79. I0.814 J-1.215
X61.186 Y-49.785 Z78.5 I-0.814 J1.215
X62.814 Y-52.215 Z78. I0.814 J-1.215
X61.186 Y-49.785 Z77.5 I-0.814 J1.215
X62.814 Y-52.215 Z77. I0.814 J-1.215
X61.186 Y-49.785 Z76.5 I-0.814 J1.215
X62.814 Y-52.215 Z76. I0.814 J-1.215
X61.186 Y-49.785 Z75.5 I-0.814 J1.215
X62.814 Y-52.215 Z75. I0.814 J-1.215
X61.186 Y-49.785 Z74.5 I-0.814 J1.215
X62.814 Y-52.215 Z74. I0.814 J-1.215
X61.186 Y-49.785 Z73.5 I-0.814 J1.215
X62.814 Y-52.215 Z73. I0.814 J-1.215
X61.186 Y-49.785 Z72.5 I-0.814 J1.215
X62.814 Y-52.215 Z72. I0.814 J-1.215
X61.186 Y-49.785 Z71.5 I-0.814 J1.215
X62.814 Y-52.215 Z71. I0.814 J-1.215
X61.186 Y-49.785 Z70.5 I-0.814 J1.215
X62.814 Y-52.215 Z70. I0.814 J-1.215
X61.186 Y-49.785 Z69.5 I-0.814 J1.215
X62.814 Y-52.215 Z69. I0.814 J-1.215
X61.186 Y-49.785 Z68.5 I-0.814 J1.215
X62.814 Y-52.215 Z68. I0.814 J-1.215
X61.186 Y-49.785 Z67.5 I-0.814 J1.215
X62.814 Y-52.215 Z67. I0.814 J-1.215
X61.186 Y-49.785 Z66.5 I-0.814 J1.215
X62.814 Y-52.215 Z66. I0.814 J-1.215
X61.186 Y-49.785 Z65.5 I-0.814 J1.215
X62.814 Y-52.215 Z65. I0.814 J-1.215
X61.186 Y-49.785 Z64.5 I-0.814 J1.215
X62.814 Y-52.215 Z64. I0.814 J-1.215
X61.186 Y-49.785 Z63.5 I-0.814 J1.215
X62.814 Y-52.215 Z63. I0.814 J-1.215
X61.186 Y-49.785 Z62.5 I-0.814 J1.215
X62.814 Y-52.215 Z62. I0.814 J-1.215
X61.186 Y-49.785 Z61.5 I-0.814 J1.215
X62.814 Y-52.215 Z61. I0.814 J-1.215
X61.186 Y-49.785 Z60.5 I-0.814 J1.215
X62.814 Y-52.215 Z60. I0.814 J-1.215
X61.186 Y-49.785 Z59.5 I-0.814 J1.215
X62.814 Y-52.215 Z59. I0.814 J-1.215
X61.186 Y-49.785 Z58.5 I-0.814 J1.215
X62.814 Y-52.215 Z58. I0.814 J-1.215
X61.186 Y-49.785 Z57.5 I-0.814 J1.215
X62.814 Y-52.215 Z57. I0.814 J-1.215
X61.186 Y-49.785 Z56.5 I-0.814 J1.215
X62.814 Y-52.215 Z56. I0.814 J-1.215
X61.186 Y-49.785 Z55.5 I-0.814 J1.215
X62.814 Y-52.215 Z55. I0.814 J-1.215
X61.186 Y-49.785 Z54.5 I-0.814 J1.215
X62.814 Y-52.215 Z54. I0.814 J-1.215
X61.186 Y-49.785 Z53.5 I-0.814 J1.215
X62.814 Y-52.215 Z53. I0.814 J-1.215
X61.186 Y-49.785 Z52.5 I-0.814 J1.215
X62.814 Y-52.215 Z52. I0.814 J-1.215
X61.186 Y-49.785 Z51.5 I-0.814 J1.215
X62.814 Y-52.215 Z51. I0.814 J-1.215
X61.186 Y-49.785 I-0.814 J1.215
X62.814 Y-52.215 I0.814 J-1.215
X63.014 Y-51.201 I-0.407 J0.608
G01 X62.569 Y-50.536
G00 Z87.5
X62.646 Y-18.65
Z80.4
G01 Z80. F500.
X62.201 Y-17.986
G03 X61.186 Y-17.785 I-0.608 J-0.407
X62.814 Y-20.215 Z79.5 I0.814 J-1.215
X61.186 Y-17.785 Z79. I-0.814 J1.215
X62.814 Y-20.215 Z78.5 I0.814 J-1.215
X61.186 Y-17.785 Z78. I-0.814 J1.215
X62.814 Y-20.215 Z77.5 I0.814 J-1.215
X61.186 Y-17.785 Z77. I-0.814 J1.215
X62.814 Y-20.215 Z76.5 I0.814 J-1.215
X61.186 Y-17.785 Z76. I-0.814 J1.215
X62.814 Y-20.215 Z75.5 I0.814 J-1.215
X61.186 Y-17.785 Z75. I-0.814 J1.215
X62.814 Y-20.215 Z74.5 I0.814 J-1.215
X61.186 Y-17.785 Z74. I-0.814 J1.215
X62.814 Y-20.215 Z73.5 I0.814 J-1.215
X61.186 Y-17.785 Z73. I-0.814 J1.215
X62.814 Y-20.215 Z72.5 I0.814 J-1.215
X61.186 Y-17.785 Z72. I-0.814 J1.215
X62.814 Y-20.215 Z71.5 I0.814 J-1.215
X61.186 Y-17.785 Z71. I-0.814 J1.215
X62.814 Y-20.215 Z70.5 I0.814 J-1.215
X61.186 Y-17.785 Z70. I-0.814 J1.215
X62.814 Y-20.215 Z69.5 I0.814 J-1.215
X61.186 Y-17.785 Z69. I-0.814 J1.215
X62.814 Y-20.215 Z68.5 I0.814 J-1.215
X61.186 Y-17.785 Z68. I-0.814 J1.215
X62.814 Y-20.215 Z67.5 I0.814 J-1.215
X61.186 Y-17.785 Z67. I-0.814 J1.215
X62.814 Y-20.215 Z66.5 I0.814 J-1.215
X61.186 Y-17.785 Z66. I-0.814 J1.215
X62.814 Y-20.215 Z65.5 I0.814 J-1.215
X61.186 Y-17.785 Z65. I-0.814 J1.215
X62.814 Y-20.215 Z64.5 I0.814 J-1.215
X61.186 Y-17.785 Z64. I-0.814 J1.215
X62.814 Y-20.215 Z63.5 I0.814 J-1.215
X61.186 Y-17.785 Z63. I-0.814 J1.215
X62.814 Y-20.215 Z62.5 I0.814 J-1.215
X61.186 Y-17.785 Z62. I-0.814 J1.215
X62.814 Y-20.215 Z61.5 I0.814 J-1.215
X61.186 Y-17.785 Z61. I-0.814 J1.215
X62.814 Y-20.215 Z60.5 I0.814 J-1.215
X61.186 Y-17.785 Z60. I-0.814 J1.215
X62.814 Y-20.215 Z59.5 I0.814 J-1.215
X61.186 Y-17.785 Z59. I-0.814 J1.215
X62.814 Y-20.215 Z58.5 I0.814 J-1.215
X61.186 Y-17.785 Z58. I-0.814 J1.215
X62.814 Y-20.215 Z57.5 I0.814 J-1.215
X61.186 Y-17.785 Z57. I-0.814 J1.215
X62.814 Y-20.215 Z56.5 I0.814 J-1.215
X61.186 Y-17.785 Z56. I-0.814 J1.215
X62.814 Y-20.215 Z55.5 I0.814 J-1.215
X61.186 Y-17.785 Z55. I-0.814 J1.215
X62.814 Y-20.215 Z54.5 I0.814 J-1.215
X61.186 Y-17.785 Z54. I-0.814 J1.215
X62.814 Y-20.215 Z53.5 I0.814 J-1.215
X61.186 Y-17.785 Z53. I-0.814 J1.215
X62.814 Y-20.215 Z52.5 I0.814 J-1.215
X61.186 Y-17.785 Z52. I-0.814 J1.215
X62.814 Y-20.215 Z51.5 I0.814 J-1.215
X61.186 Y-17.785 Z51. I-0.814 J1.215
X62.814 Y-20.215 I0.814 J-1.215
X61.186 Y-17.785 I-0.814 J1.215
X60.986 Y-18.799 I0.407 J-0.608
G01 X61.431 Y-19.464
G00 Z97.5

(RECTIFICAR HUECO FINAL)
G00 X61.34 Y-51.419
Z97.5
Z80.4
G01 Z80. F500.
X61.786 Y-52.084
G03 X62.869 Y-52.298 I0.649 J0.435
X61.131 Y-49.702 Z79.5 I-0.869 J1.298
X62.869 Y-52.298 Z79. I0.869 J-1.298
X61.131 Y-49.702 Z78.5 I-0.869 J1.298
X62.869 Y-52.298 Z78. I0.869 J-1.298
X61.131 Y-49.702 Z77.5 I-0.869 J1.298
X62.869 Y-52.298 Z77. I0.869 J-1.298
X61.131 Y-49.702 Z76.5 I-0.869 J1.298
X62.869 Y-52.298 Z76. I0.869 J-1.298
X61.131 Y-49.702 Z75.5 I-0.869 J1.298
X62.869 Y-52.298 Z75. I0.869 J-1.298
X61.131 Y-49.702 Z74.5 I-0.869 J1.298
X62.869 Y-52.298 Z74. I0.869 J-1.298
X61.131 Y-49.702 Z73.5 I-0.869 J1.298
X62.869 Y-52.298 Z73. I0.869 J-1.298
X61.131 Y-49.702 Z72.5 I-0.869 J1.298
X62.869 Y-52.298 Z72. I0.869 J-1.298
X61.131 Y-49.702 Z71.5 I-0.869 J1.298
X62.869 Y-52.298 Z71. I0.869 J-1.298
X61.131 Y-49.702 Z70.5 I-0.869 J1.298
X62.869 Y-52.298 Z70. I0.869 J-1.298
X61.131 Y-49.702 Z69.5 I-0.869 J1.298
X62.869 Y-52.298 Z69. I0.869 J-1.298
X61.131 Y-49.702 Z68.5 I-0.869 J1.298
X62.869 Y-52.298 Z68. I0.869 J-1.298
X61.131 Y-49.702 Z67.5 I-0.869 J1.298
X62.869 Y-52.298 Z67. I0.869 J-1.298
X61.131 Y-49.702 Z66.5 I-0.869 J1.298
X62.869 Y-52.298 Z66. I0.869 J-1.298
X61.131 Y-49.702 Z65.5 I-0.869 J1.298
X62.869 Y-52.298 Z65. I0.869 J-1.298
X61.131 Y-49.702 Z64.5 I-0.869 J1.298
X62.869 Y-52.298 Z64. I0.869 J-1.298
X61.131 Y-49.702 Z63.5 I-0.869 J1.298
X62.869 Y-52.298 Z63. I0.869 J-1.298
X61.131 Y-49.702 Z62.5 I-0.869 J1.298
X62.869 Y-52.298 Z62. I0.869 J-1.298
X61.131 Y-49.702 Z61.5 I-0.869 J1.298
X62.869 Y-52.298 Z61. I0.869 J-1.298
X61.131 Y-49.702 Z60.5 I-0.869 J1.298
X62.869 Y-52.298 Z60. I0.869 J-1.298
X61.131 Y-49.702 Z59.5 I-0.869 J1.298
X62.869 Y-52.298 Z59. I0.869 J-1.298
X61.131 Y-49.702 Z58.5 I-0.869 J1.298
X62.869 Y-52.298 Z58. I0.869 J-1.298
X61.131 Y-49.702 Z57.5 I-0.869 J1.298
X62.869 Y-52.298 Z57. I0.869 J-1.298
X61.131 Y-49.702 Z56.5 I-0.869 J1.298
X62.869 Y-52.298 Z56. I0.869 J-1.298
X61.131 Y-49.702 Z55.5 I-0.869 J1.298
X62.869 Y-52.298 Z55. I0.869 J-1.298
X61.131 Y-49.702 Z54.5 I-0.869 J1.298
X62.869 Y-52.298 Z54. I0.869 J-1.298
X61.131 Y-49.702 Z53.5 I-0.869 J1.298
X62.869 Y-52.298 Z53. I0.869 J-1.298
X61.131 Y-49.702 Z52.5 I-0.869 J1.298
X62.869 Y-52.298 Z52. I0.869 J-1.298
X61.131 Y-49.702 Z51.5 I-0.869 J1.298
X62.869 Y-52.298 Z51. I0.869 J-1.298
X61.131 Y-49.702 Z50.5 I-0.869 J1.298
X62.869 Y-52.298 Z50. I0.869 J-1.298
X61.131 Y-49.702 I-0.869 J1.298
X62.869 Y-52.298 I0.869 J-1.298
X63.084 Y-51.214 I-0.435 J0.649
G01 X62.639 Y-50.55
G00 Z87.5
X62.66 Y-18.581
Z80.4
G01 Z80. F500.
X62.214 Y-17.916
G03 X61.131 Y-17.702 I-0.649 J-0.435
X62.869 Y-20.298 Z79.5 I0.869 J-1.298
X61.131 Y-17.702 Z79. I-0.869 J1.298
X62.869 Y-20.298 Z78.5 I0.869 J-1.298
X61.131 Y-17.702 Z78. I-0.869 J1.298
X62.869 Y-20.298 Z77.5 I0.869 J-1.298
X61.131 Y-17.702 Z77. I-0.869 J1.298
X62.869 Y-20.298 Z76.5 I0.869 J-1.298
X61.131 Y-17.702 Z76. I-0.869 J1.298
X62.869 Y-20.298 Z75.5 I0.869 J-1.298
X61.131 Y-17.702 Z75. I-0.869 J1.298
X62.869 Y-20.298 Z74.5 I0.869 J-1.298
X61.131 Y-17.702 Z74. I-0.869 J1.298
X62.869 Y-20.298 Z73.5 I0.869 J-1.298
X61.131 Y-17.702 Z73. I-0.869 J1.298
X62.869 Y-20.298 Z72.5 I0.869 J-1.298
X61.131 Y-17.702 Z72. I-0.869 J1.298
X62.869 Y-20.298 Z71.5 I0.869 J-1.298
X61.131 Y-17.702 Z71. I-0.869 J1.298
X62.869 Y-20.298 Z70.5 I0.869 J-1.298
X61.131 Y-17.702 Z70. I-0.869 J1.298
X62.869 Y-20.298 Z69.5 I0.869 J-1.298
X61.131 Y-17.702 Z69. I-0.869 J1.298
X62.869 Y-20.298 Z68.5 I0.869 J-1.298
X61.131 Y-17.702 Z68. I-0.869 J1.298
X62.869 Y-20.298 Z67.5 I0.869 J-1.298
X61.131 Y-17.702 Z67. I-0.869 J1.298
X62.869 Y-20.298 Z66.5 I0.869 J-1.298
X61.131 Y-17.702 Z66. I-0.869 J1.298
X62.869 Y-20.298 Z65.5 I0.869 J-1.298
X61.131 Y-17.702 Z65. I-0.869 J1.298
X62.869 Y-20.298 Z64.5 I0.869 J-1.298
X61.131 Y-17.702 Z64. I-0.869 J1.298
X62.869 Y-20.298 Z63.5 I0.869 J-1.298
X61.131 Y-17.702 Z63. I-0.869 J1.298
X62.869 Y-20.298 Z62.5 I0.869 J-1.298
X61.131 Y-17.702 Z62. I-0.869 J1.298
X62.869 Y-20.298 Z61.5 I0.869 J-1.298
X61.131 Y-17.702 Z61. I-0.869 J1.298
X62.869 Y-20.298 Z60.5 I0.869 J-1.298
X61.131 Y-17.702 Z60. I-0.869 J1.298
X62.869 Y-20.298 Z59.5 I0.869 J-1.298
X61.131 Y-17.702 Z59. I-0.869 J1.298
X62.869 Y-20.298 Z58.5 I0.869 J-1.298
X61.131 Y-17.702 Z58. I-0.869 J1.298
X62.869 Y-20.298 Z57.5 I0.869 J-1.298
X61.131 Y-17.702 Z57. I-0.869 J1.298
X62.869 Y-20.298 Z56.5 I0.869 J-1.298
X61.131 Y-17.702 Z56. I-0.869 J1.298
X62.869 Y-20.298 Z55.5 I0.869 J-1.298
X61.131 Y-17.702 Z55. I-0.869 J1.298
X62.869 Y-20.298 Z54.5 I0.869 J-1.298
X61.131 Y-17.702 Z54. I-0.869 J1.298
X62.869 Y-20.298 Z53.5 I0.869 J-1.298
X61.131 Y-17.702 Z53. I-0.869 J1.298
X62.869 Y-20.298 Z52.5 I0.869 J-1.298
X61.131 Y-17.702 Z52. I-0.869 J1.298
X62.869 Y-20.298 Z51.5 I0.869 J-1.298
X61.131 Y-17.702 Z51. I-0.869 J1.298
X62.869 Y-20.298 Z50.5 I0.869 J-1.298
X61.131 Y-17.702 Z50. I-0.869 J1.298
X62.869 Y-20.298 I0.869 J-1.298
X61.131 Y-17.702 I-0.869 J1.298
X60.916 Y-18.786 I0.435 J-0.649
G01 X61.361 Y-19.45
G00 Z97.5

(Bloque de Recuperacion)
M05
M09
G17
G91 G28 X0 Y0 Z100. G90
G49
G54
M30
%
