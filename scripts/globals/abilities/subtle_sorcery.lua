-----------------------------------
-- Ability: Subtle Sorcery
-- Description: Reduces the amount of enmity generated from magic spells and increases magic accuracy.
-- Obtained: BLM Level 96
-- Recast Time: 01:00:00
-- Duration: 00:01:00
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onUseAbility = function(player, target, ability)
    player:addStatusEffect(tpz.effect.SUBTLE_SORCERY, 4, 0, 60)
end

return ability_object
