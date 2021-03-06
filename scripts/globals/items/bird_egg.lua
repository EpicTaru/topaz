-----------------------------------
-- ID: 4570
-- Item: Bird Egg
-- Food Effect: 5Min, All Races
-----------------------------------
-- Health 6
-- Magic 6
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 300, 4570)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(tpz.mod.HP, 6)
    target:addMod(tpz.mod.MP, 6)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(tpz.mod.HP, 6)
    target:delMod(tpz.mod.MP, 6)
end

return item_object
