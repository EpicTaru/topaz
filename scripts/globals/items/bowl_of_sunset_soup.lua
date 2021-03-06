-----------------------------------
-- ID: 4341
-- Item: bowl_of_sunset_soup
-- Food Effect: 4Hrs, All Races
-----------------------------------
-- Agility 3
-- Vitality -1
-- HP Recovered While Healing 5
-- Ranged Accuracy % 9 (cap 20)
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
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 14400, 4341)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(tpz.mod.AGI, 3)
    target:addMod(tpz.mod.VIT, -1)
    target:addMod(tpz.mod.HPHEAL, 5)
    target:addMod(tpz.mod.FOOD_RACCP, 9)
    target:addMod(tpz.mod.FOOD_RACC_CAP, 20)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(tpz.mod.AGI, 3)
    target:delMod(tpz.mod.VIT, -1)
    target:delMod(tpz.mod.HPHEAL, 5)
    target:delMod(tpz.mod.FOOD_RACCP, 9)
    target:delMod(tpz.mod.FOOD_RACC_CAP, 20)
end

return item_object
