local Toggles = {
    {tab = Stats, name = "Melee", var = "Melee"},
    {tab = Stats, name = "Defense", var = "Defense"},
    {tab = Stats, name = "Sword", var = "Sword"},
    {tab = Stats, name = "Gun", var = "Gun"},
    {tab = Stats, name = "Devil Fruit", var = "DemonFruit"},
    {tab = Stats, name = "Start Adding Stats", var = "AutoStats", callback = AutoStats},

    {tab = TimelyRaidFarm, name = "Auto Elite Hunter", var = "AutoEliteHunter", callback = AutoTaskEliteHunter},
    {tab = TimelyRaidFarm, name = "Auto Factory Raid", var = "AutoFactory", callback = AutoFactory},
    {tab = TimelyRaidFarm, name = "Auto Pirate Raid", var = "AutoPirateRaid", callback = AutoPirateRaid},
    {tab = TimelyRaidFarm, name = "Auto Hallow Scythe", var = "AutoFarmBossHallow", callback = AutoSoulReaper},
    {tab = TimelyRaidFarm, name = "Auto Dark Coat", var = "AutoDarkCoat", callback = AutoDarkbeard},
    {tab = TimelyRaidFarm, name = "Auto Cursed Captain", var = "AutoCursedCaptain", callback = AutoCursedCaptain}
}

local function CreateToggle(tab, name, var, callback)
    tab:addToggle(name, false, function(Value)
        getgenv()[var] = Value
        if callback then callback() end
        if not Value then StopTween() end
    end)
end
for _, toggle in ipairs(Toggles) do
    CreateToggle(toggle.tab, toggle.name, toggle.var, toggle.callback)
end
return Module
