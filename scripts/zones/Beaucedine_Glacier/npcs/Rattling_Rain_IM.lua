-----------------------------------
-- Area: Beaucedine Glacier
--  NPC: Rattling Rain, I.M.
-- Type: Border Conquest Guards
-- !pos -227.956 -81.475 260.442 111
-----------------------------------
require("scripts/globals/conquest")
-----------------------------------
local entity = {}

local guardNation = tpz.nation.BASTOK
local guardType   = tpz.conq.guard.BORDER
local guardRegion = tpz.region.FAUREGANDI
local guardEvent  = 32760

entity.onTrade = function(player, npc, trade)
    tpz.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

entity.onTrigger = function(player, npc)
    tpz.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent, guardRegion)
end

entity.onEventUpdate = function(player, csid, option)
    tpz.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

entity.onEventFinish = function(player, csid, option)
    tpz.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType, guardRegion)
end

return entity
