local function CreateInstance(class, properties, parent)
    local instance = Instance.new(class)
    for key, value in pairs(properties) do
        instance[key] = value
    end
    instance.Parent = parent
    return instance
end

local GUI = CreateInstance("ScreenGui", {
    Name = "STX_Nofitication",
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
},game.CoreGui)

if not GUI then
    local STX_Nofitication = CreateInstance("ScreenGui", {
        Name = "STX_Nofitication",
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        ResetOnSpawn = false
    }, game.CoreGui)

    local STX_NofiticationUIListLayout = CreateInstance("UIListLayout", {
        Name = "STX_NofiticationUIListLayout",
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        SortOrder = Enum.SortOrder.LayoutOrder,
        VerticalAlignment = Enum.VerticalAlignment.Bottom
    }, STX_Nofitication)
end
