-----------------------------------
-- ID: 4622
-- Scroll of Poisona
-- Teaches the white magic Poisona
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    return target:canLearnSpell(14)
end

item_object.onItemUse = function(target)
    target:addSpell(14)
end

return item_object
