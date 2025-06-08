-- modules/data_table.lua
return function(Window)
    local Tab = Window:MakeTab({
        Name = "Data Table 📊",
        Icon = "rbxassetid://123458",
        PremiumOnly = false
    })

    Tab:AddParagraph("Overview", [[
• Pets spawn as colorful cubes with weight names.
• Seeds spawn as green blocks with type name.
• All spawns appear near the player.
    ]])

    Tab:AddLabel("Note: Data Table styled for black background, white Arial font.")
end
