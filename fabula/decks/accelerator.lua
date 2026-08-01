SMODS.Back {
    key = "accelerator",
    atlas = 'deck_atlas',
    pos = { x = 2, y = 1 },
    config = { extra = { state = false, win_ante = 9 } },
    
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.extra.win_ante,
                          self.config.extra.state,
               } }
    end,
    
    apply = function(self, back)
        G.GAME.win_ante = self.config.extra.win_ante
    end,    
    
    calculate = function(self, back, context)
        if context.skip_blind then
            if self.config.extra.state then
                local editionless_jokers = SMODS.Edition:get_edition_cards(G.jokers, true)
                if next(editionless_jokers) then
                    G.E_MANAGER:add_event(Event({
                        trigger = 'before',
                        func = function()
                            local eligible_card = pseudorandom_element(editionless_jokers, 'acc_fbl')
                            eligible_card:set_edition("e_negative")
                            return true
                        end
                    }))
                    self.config.extra.state = false 
                end       
            end
            if not self.config.extra.state then
                self.config.extra.state = true
            end
        end
        if context.setting_blind then
            self.config.extra.state = false
        end    
    end,    
}   
