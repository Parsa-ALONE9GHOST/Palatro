SMODS.PokerHand {
    key = 'analogy',
    mult = -200,
    chips = -2,
    l_mult = -2,
    l_chips = -15,
        atlas = 'poker_hands',
    pos = { x = 0, y = 0 },
    example = {

        { 'C_pal_M2', true },
        { 'D_2', true },
        { 'H_4', false },
        { 'S_9', false },
        { 'H_Q', false },

    },
    loc_txt = {
        name = 'Analogy',
        description = {
            "Hand contains a -2 and a 2",
        }
    },
    visible = false,
evaluate = function(parts, hand)
    local valid_cards = {}
    local has6 = false
    local has7 = false

    for _, c in ipairs(hand) do
        if c.base.id == 2 then
            has6 = true
            table.insert(valid_cards, c)
        elseif c.base.id == pal_M2 then
            has7 = true
            table.insert(valid_cards, c)
        end
    end

    if has6 and has7 then
        return valid_cards
    end
    return {}
end
}
