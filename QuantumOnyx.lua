getgenv().GamesTables = (function()
    local GameList = {
        [2753915549] = "https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/BloxFruit.lua",
        [4442272183] = "https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/BloxFruit.lua",
        [7449423635] = "https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/BloxFruit.lua",
        [16732694052] = "https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/Fisch.lua",
    }
    local function Table(tbl)
        local proxy = {}
        for key, value in pairs(tbl) do
            proxy[key * 3 - 1] = value:reverse()
        end
        return proxy
    end
    return Table(GameList)
end)()

local Games = (function(tbl)
    local Lookup = {}
    for key, value in pairs(tbl) do
        Lookup[(key + 1) / 3] = value:reverse()
    end
    return Lookup
end)(getgenv().GamesTables)

local function LoadGameScript(placeId)
    local URL = Games[placeId]
    if not URL then return end
    local function FetchScript(url)
        local Success, Result = pcall(game.HttpGet, game, url)
        return Success and Result or nil
    end
    local Script = FetchScript(URL)
    if Script then
        local Execute = loadstring(Script)
        if Execute then
            Execute()
        end
    end
end

pcall(LoadGameScript, game.PlaceId)
