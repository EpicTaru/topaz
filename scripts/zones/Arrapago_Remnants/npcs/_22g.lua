
local ID = require("scripts/zones/Arrapago_Remnants/IDs")
-----------------------------------
local entity = {}

entity.onTrigger = function(entity, npc)
    if (npc:getInstance():getStage() == 7) then
        entity:startEvent(300)
    else
        entity:messageSpecial(ID.text.DOOR_IS_SEALED)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(entity, eventid, result, door)
    if (eventid == 300 and result == 1) then
        local instance = door:getInstance()
        instance:setStage(8)
        instance:setProgress(0)
        door:setAnimation(8)
        door:untargetable(true)
    end
end

return entity
