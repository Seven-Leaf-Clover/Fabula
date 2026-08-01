SMODS.Back {
    key = "devil",
    atlas = 'deck_atlas',
    pos = { x = 1, y = 1 },
    config = { extra = { credit = 20, target_antes = 2, current_antes = 0 } },
    
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.extra.credit,
                          self.config.extra.target_antes,
                          self.config.extra.current_antes
               } }
    end,
    
    apply = function(self, back)
        G.GAME.bankrupt_at = G.GAME.bankrupt_at - self.config.extra.credit  
    -- Banned Tarots
        G.GAME.banned_keys['c_hermit'] = true
        G.GAME.banned_keys['c_temperance'] = true
    -- Banned Spectrals
        G.GAME.banned_keys['c_immolate'] = true
    -- Banned Jokers    
    -- Vanilla
        G.GAME.banned_keys['j_mail'] = true
        G.GAME.banned_keys['j_golden'] = true
        G.GAME.banned_keys['j_riff_raff'] = true
        G.GAME.banned_keys['j_egg'] = true
        G.GAME.banned_keys['j_gift'] = true
        G.GAME.banned_keys['j_to_the_moon'] = true
    -- Opandora's
        G.GAME.banned_keys['j_opan_tab'] = true
    -- Plantain
        G.GAME.banned_keys['j_pl_apple_pie'] = true
    -- CMYKL
        G.GAME.banned_keys['j_cmykl_halftonejoker'] = true
    end,    
    
    calculate = function(self, back, context)
	if context.ante_change then
	    self.config.extra.current_antes = (self.config.extra.current_antes or 0) + 1
            if (self.config.extra.current_antes % self.config.extra.target_antes) == 0 then
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        SMODS.add_card({
                            set = 'Spectral',
                            key = 'c_wraith',
                            edition = 'e_negative',
                            area = G.consumables,
                            key_append = 'fbl_devil',
                    })
                    return true
                end
                }))
                self.config.extra.current_antes = 0
            end
        end  
    end,                  
}   
