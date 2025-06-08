-- loader.lua
-- Main entry point — loads Orion and all feature modules

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({
    Name = "Grow A Garden 🌱",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "GrowGarden"
})

-- Modules
local Pets      = require(script:WaitForChild("modules"):WaitForChild("pets"))
local Seeds     = require(script.modules:WaitForChild("seeds"))
local DataTable = require(script.modules:WaitForChild("data_table"))
local AboutUs   = require(script.modules:WaitForChild("about_us"))

-- Initialize tabs
Pets(Window)
Seeds(Window)
DataTable(Window)
AboutUs(Window)
