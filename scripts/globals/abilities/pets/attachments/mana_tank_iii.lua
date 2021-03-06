-----------------------------------
-- Attachment: Mana Tank III
-----------------------------------
require("scripts/globals/automaton")
require("scripts/globals/status")
-----------------------------------
local attachment_object = {}

attachment_object.onEquip = function(pet)
    -- We do not have support to do a fraction of a percent so we rounded
    local frame = pet:getAutomatonFrame()
    if frame == tpz.frames.HARLEQUIN then
        pet:addMod(tpz.mod.MPP, 15)
    elseif frame == tpz.frames.STORMWAKER then
        pet:addMod(tpz.mod.MPP, 13)
    end
end

attachment_object.onUnequip = function(pet)
    local frame = pet:getAutomatonFrame()
    if frame == tpz.frames.HARLEQUIN then
        pet:delMod(tpz.mod.MPP, 15)
    elseif frame == tpz.frames.STORMWAKER then
        pet:delMod(tpz.mod.MPP, 13)
    end
end

attachment_object.onManeuverGain = function(pet, maneuvers)
    attachment_object.onUpdate(pet, maneuvers)
end

attachment_object.onManeuverLose = function(pet, maneuvers)
    attachment_object.onUpdate(pet, maneuvers - 1)
end

attachment_object.onUpdate = function(pet, maneuvers)
    local power = 0
    if maneuvers > 0 then
        power = math.floor(2 + maneuvers + (pet:getMaxMP() * (0.4 + 0.2 * maneuvers) / 100))
    end
    updateModPerformance(pet, tpz.mod.REFRESH, 'mana_tank_iii_mod', power)
end

return attachment_object
