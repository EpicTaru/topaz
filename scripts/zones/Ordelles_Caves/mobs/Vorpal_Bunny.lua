-----------------------------------
-- Area: Ordelle's Caves
--  Mob: Vorpal Bunny
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 658, 2, tpz.regime.type.GROUNDS)
end

return entity
