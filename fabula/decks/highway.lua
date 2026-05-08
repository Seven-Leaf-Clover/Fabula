SMODS.Back {
    key = "star",
    atlas = 'deck_atlas',
    pos = { x = 6, y = 0 },
    config = { consumable_slot = -1 },
    
    apply = function(self, back)
        SMODS.change_booster_limit(-1)
    end,
    
    calculate = function(self, back, context)
        if context.skip_blind then
            local _poker_hands = {}
            local random_hands = {}
            for _, k in ipairs(G.handlist) do
                local v = G.GAME.hands[k]
                if v.visible then
                    _poker_hands[#_poker_hands + 1] = k
                end
            end
            for i = 1, 5 do
                local random_hand = pseudorandom_element(_poker_hands, pseudoseed('fbl_star')) or "High Card"
                table.insert(random_hands, random_hand)
                for i = #_poker_hands, 1, -1 do
                    if _poker_hands[i] == random_hand then
                        table.remove(_poker_hands, i)
                    end
                end
            end
            
        local levels = 1
        update_hand_text({sound = 'button',volume = 0.7,pitch = 0.8,delay = 0.3}, {
            handname = localize('fbl_highway'),
            chips = "...",
            mult = "...",
            level = "..."
        })
        for i = 1, #random_hands do
            level_up_hand(nil, random_hands[i], true, levels)
        end
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    play_sound('tarot1')
                    G.TAROT_INTERRUPT_PULSE = true
                    return true
                end
            }))
            update_hand_text({delay = 0}, {mult = "+",StatusText = true})
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    return true
                end
            }))
            update_hand_text({delay = 0}, {chips = "+",StatusText = true})
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    G.TAROT_INTERRUPT_PULSE = nil
                    return true
                end
            }))
            update_hand_text({sound = 'button',volume = 0.7,pitch = 0.9,delay = 0}, {level = "+" .. levels})
            delay(1.3)
            update_hand_text({sound = 'button',volume = 0.7,pitch = 1.1,delay = 0}, {mult = 0,chips = 0,handname = '',level = ''})
            return true
        end
    end,    
}   
