return {
    descriptions = {
     -- Fabula's Decks   
        Back={
            b_fbl_gambler = {
                name = "Baraja Ludópata",
                text = {
                    '{C:red}-1{} Ranura de Consumible',
                    'Al {C:attention}Seleccionar{} u {C:attention}Omitir{}',
                    'una {C:attention}Ciega{} creas una',
                    '{C:tarot,T:c_wheel_of_fortune}Rueda de la Fortuna',
                    '{C:inactive,s:0.8}(Debe haber espacio)'
                },
            },
            b_fbl_collector = {
                name = "Baraja del Coleccionista",
                text = {
                    'Comienzas con {C:attention,T:v_hone}Perfección{}',
                    '{C:attention}+1{} Ranura de Tienda adicional.',
                    'Los Paquetes {C:planet}Celestiales{} y',
                    '{C:tarot}Arcanos{} ya no aparecen'
                },
            },
            b_fbl_embarrassed = {
                name = "Baraja Deudora",
                text = {
                    'Comienzas con {C:attention,T:v_seed_money}Siembra dinero{},',
                    'y una {C:attention,T:tag_coupon}Etiqueta de Cupón{}',
                    'tienes {C:red}-$5{} de {C:attention}deuda{}'
                },
            },
            b_fbl_glitched = {
                name = "Baraja Glitch",
                text = {
                    '{C:attention}+#1#{} Ranura de Comodín',
                    'Tras derrotar cada {C:attention}Ciega Jefe{}',
                    'altera la {C:attention}categoría{} y el {C:attention}palo{} de',
                    '{C:attention}todas las cartas de juego{}',
                    "en tu baraja",
                },
            },
            b_fbl_star = {
                name = "Baraja de la Carretera Estelar",
                text = {
                    '{C:red}-1{} Ranura de Consumible y',
                    '{C:red}-1{} Paquete Potenciador en la tienda',
                    'Al {C:attention}Omitir{} una {C:attention}Ciega{}',
                    '{C:planet}subes de nivel{} {C:attention}5{}',
                    "manos de póker al azar"
                },
            },
            b_fbl_roller = {
                name = "Baraja Giratoria",
                text = {
                    'Comienzas con',
                    '{C:attention,T:v_reroll_surplus}Excedente de renovaciones{}.',
                    '{C:red}-1{} Paquete Potenciador en la tienda'
                },
            },
            b_fbl_seance = {
                name = "Baraja Espiritista",
                text = {
                    '{C:attention}+2{} Ranuras de Tienda y',
                    '{C:red}-2{} Paquetes Potenciadores en la tienda',
                    'Las cartas {C:spectral}Espectrales{} pueden',
                    'aparecer en la tienda',
                },
            },
            b_fbl_terror = {
                name = "Baraja del Terror",
                text = {
                    'Después de cada {C:attention}Ciega Jefe{}',
                    '{C:attention}llena{} las ranuras de',
                    'consumibles con {C:tarot,T:c_hanged_man}El Colgado{}.',
                    'Las cartas con {C:dark_edition}Ediciones{} y',
                    'las Cartas del {C:tarot}Tarots{} ya no aparecen',
                },
            },
        },
   },
   misc = {
       dictionary = {
           fbl_highway = "5 Manos",
       },
   },    
}    
