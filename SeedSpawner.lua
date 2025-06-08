return function(Window)
    local Tab = Window:MakeTab({Name = "Seed Spawner🌱", Icon = "rbxassetid://123457", PremiumOnly = false})
    local seedType = "Carrot"

    Tab:AddTextbox({
        Name = "Seed Type",
        Default = "Carrot",
        TextDisappear = true,
        Callback = function(Value)
            seedType = Value
        end
    })

    Tab:AddButton({
        Name = "Spawn Seed",
        Callback = function()
            local seed = Instance.new("Part")
            seed.Size = Vector3.new(1, 1, 1)
            seed.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(-5, 3, 0)
            seed.BrickColor = BrickColor.new("Bright green")
            seed.Name = "Seed_" .. seedType
            seed.Anchored = false
            seed.Parent = workspace
        end
    })
end
