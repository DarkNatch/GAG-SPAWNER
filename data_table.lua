return function(Window)
    local Tab = Window:MakeTab({Name = "Data Table 📊", Icon = "rbxassetid://123458", PremiumOnly = false})

    Tab:AddParagraph("Data Overview", [[
• All seeds are green bricks.
• All pets are colorful cubes.
• Weights affect name only (custom logic optional).
]])

    Tab:AddLabel("This section uses a dark style")
end
