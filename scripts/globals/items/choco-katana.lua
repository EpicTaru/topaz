-----------------------------------
-- ID: 5918
-- Item: Choco-katana
-- Food Effect: 3 Min, All Races
-----------------------------------
-- Agility 1
-- Speed 12.5%
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
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 180, 5918)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(tpz.mod.AGI, 1)
    target:addMod(tpz.mod.MOVE, 13)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(tpz.mod.AGI, 1)
    target:delMod(tpz.mod.MOVE, 13)
end

return item_object
