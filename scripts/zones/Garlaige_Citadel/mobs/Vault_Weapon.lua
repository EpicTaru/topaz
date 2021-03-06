-----------------------------------
-- Area: Garlaige Citadel
--  Mob: Vault Weapon
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 705, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 708, 2, tpz.regime.type.GROUNDS)
end

return entity
