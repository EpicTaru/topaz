-----------------------------------
-- Area: East Ronfaure
--  Mob: Mud Pugil
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 64, 1, tpz.regime.type.FIELDS)
end

return entity
