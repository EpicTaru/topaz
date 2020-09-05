-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target, effect)
    target:addMod(tpz.mod.INT, effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.INT, effect:getPower())
end
