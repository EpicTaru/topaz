-----------------------------------
-- Area: Sauromugue Champaign
--  Mob: Yagudo Priest
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 99, 2, tpz.regime.type.FIELDS)
end

return entity
