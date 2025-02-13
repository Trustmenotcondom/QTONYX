local Toggles = {
    {category = Stats, name = "Melee", var = "Melee"},
    {category = Stats, name = "Defense", var = "Defense"},
    {category = Stats, name = "Sword", var = "Sword"},
    {category = Stats, name = "Gun", var = "Gun"},
    {category = Stats, name = "Devil Fruit", var = "DemonFruit"},
    {category = Stats, name = "Start Adding Stats", var = "AutoStats", callback = AutoStats},

    {category = TimelyRaidFarm, name = "Auto Elite Hunter", var = "AutoEliteHunter", callback = AutoTaskEliteHunter},
    {category = TimelyRaidFarm, name = "Auto Factory Raid", var = "AutoFactory", callback = AutoFactory},
    {category = TimelyRaidFarm, name = "Auto Pirate Raid", var = "AutoPirateRaid", callback = AutoPirateRaid},
    {category = TimelyRaidFarm, name = "Auto Hallow Scythe", var = "AutoFarmBossHallow", callback = AutoSoulReaper},
    {category = TimelyRaidFarm, name = "Auto Dark Coat", var = "AutoDarkCoat", callback = AutoDarkbeard},
    {category = TimelyRaidFarm, name = "Auto Cursed Captain", var = "AutoCursedCaptain", callback = AutoCursedCaptain}
}

local function CreateToggle(category, name, var, callback)
    category:addToggle(name, false, function(Value)
        getgenv()[var] = Value
        if callback then callback() end
        if not Value then StopTween() end
    end)
end
for _, toggle in ipairs(Toggles) do
    CreateToggle(toggle.category, toggle.name, toggle.var, toggle.callback)
end
