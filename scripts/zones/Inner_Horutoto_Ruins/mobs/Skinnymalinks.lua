-----------------------------------
-- Area: Inner Horutoto Ruins
--  Mob: Skinnymalinks
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 653, 2, tpz.regime.type.GROUNDS)
end

return entity
