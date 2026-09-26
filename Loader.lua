-- local script_mode = "PVP" -- PVP, FARM
local scripts = {
    [6765805766] = { -- Block Spin
        PVP  = "https://api.luarmor.net/files/v4/loaders/c641e2ddb9a2de245508e6cf2c88d80b.lua",
        FARM = "https://api.luarmor.net/files/v4/loaders/fae2cf1284f4bf76cca7ced0a249d93c.lua",
    },
    [994732206] = { -- Blox Fruits
        PVP = "https://api.luarmor.net/files/v4/loaders/82f29f826fd6fc73ec8b18eba8821a8b.lua",
    }
}

local cfg = scripts[game.GameId]
if not cfg then
    game:GetService("Players").LocalPlayer:Kick("Game not supported")
    return
end

loadstring(game:HttpGet(cfg[(script_mode or "PVP"):upper()] or cfg.PVP))()
