-----------------------------------
--  ID: 17588
--  Treat staff II
--  Transports the user to their Home Point
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    return 0
end

item_object.onItemUse = function(target)
    target:warp()
end

return item_object
