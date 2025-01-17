local GameListURL = "https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/TableList.lua"
local GameList = game:HttpGet(GameListURL)

local GameLoad = loadstring(GameList)
if GameLoad then
    GameLoad()
end

local Games = getgenv().GamesTables
if Games then
    local ExecuteURL = Games[game.PlaceId]
    if ExecuteURL then
        local GameScript = game:HttpGet(ExecuteURL)
        local ScriptLoad = loadstring(GameScript)
        if ScriptLoad then
            ScriptLoad()
        end
    end
end
