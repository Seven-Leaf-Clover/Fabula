return {
    descriptions = {
     -- Fabula's Decks   
         Back={
             b_fbl_glitched = {
                 name = "Glitched Deck",
                 text = {
                     '{C:attention}+#1#{} Joker slot',
                     'After defeating each {C:attention}Boss Blind{}',
                     'randomize {C:attention}rank{} and {C:attention}suit{} of',
                     '{C:attention}all playing cards{} in the deck'
                 },
             },
             b_fbl_embarrassed = {
                 name = "Temporarily Embarrassed Deck",
                 text = {
                     'Start run with',
                     '{C:attention,T:v_seed_money}Seed Money{},',
                     'a {C:attention,T:tag_coupon}Coupon Tag{}',
                     'and {C:red}-$5{} into {C:attention}debt{}'
                 },
             },
             b_fbl_seance = {
                 name = "Séance Deck",
                 text = {
                     '{C:attention}+2{} Shop slots and',
                     '{C:red}-2{} Booster Packs in shop',
                     '{C:spectral}Spectral{} cards may',
                     'appear in the shop'   
                 },
             },
             b_fbl_terror = {
                 name = "Terror Deck",
                 text = {
                     'After each {C:attention}Boss Blind{}',
                     '{C:attention}fill{} consumable slots',
                     'with {C:tarot,T:c_hanged_man}The Hanged Man{}.',
                     '{C:dark_edition}Editioned{} cards and',
                     '{C:tarot}Tarots{} no longer appear'
                 },
             },
             b_fbl_collector = {
                 name = "Collector's Deck",
                 text = {
                     'Start run with {C:attention,T:v_hone}Hone{}',
                     'and {C:attention}+1{} Shop slot.',
                     '{C:planet}Celestial{} and {C:tarot}Arcana{}',
                     'Packs no longer appear'
                 },
             },
             b_fbl_roller = {
                 name = "Roller Deck",
                 text = {
                     'Start run with',
                     '{C:attention,T:v_reroll_surplus}Reroll Surplus{}.',
                     '{C:red}-1{} Booster Pack in shop'
                 },
             },
             b_fbl_star = {
                 name = "Highway Star Deck",
                 text = {
                     '{C:red}-1{} Consumable slot and',
                     '{C:red}-1{} Booster Pack in shop',
                     'When {C:attention}Skipping{} a {C:attention}Blind{}',
                     'level up {C:attention}5{} random poker hands'
                 },
             },
             b_fbl_gambler = {
                 name = "Gambler's Deck",
                 text = {
                     '{C:red}-1{} Consumable slot',
                     'When {C:attention}Selecting{} or {C:attention}Skipping{}',
                     'a {C:attention}Blind{} create a',
                     '{C:tarot,T:c_wheel_of_fortune}The Wheel of Fortune',
                     '{C:inactive,s:0.8}(Must have room)'
                 },
             },
             b_fbl_devil = {
                 name = "Devil's Deal Deck",
                 text = {
                     'Go up to {C:red}-#1#{} in debt.',
                     'Get a {C:dark_edition}Negative{} {C:spectral,T:c_wraith}Wraith{}',
                     'every {C:attention}#2#{} ante changes.',
                     'Money is {C:red}harder{} to find',
                 },
             },
             b_fbl_accelerator = {
                 name = "Accelerator Deck",
                 text = {
                     'Whenever you {C:attention}Skip{} a',
                     '{C:attention}Blind{} twice in a row add',
                     '{C:dark_edition}Negative{} to a random {C:attention}Joker{}',
                     'Win on ante {C:attention}#1#{}',
                 },
             },
         },
    },
    misc = {
        dictionary = {
            fbl_highway = "5 Hands",
        },
    },    
}    
