-- modules/seeds.lua
return function(Window)
    local Tab = Window:MakeTab({
        Name = "Seed Spawn🌱",
        Icon = "rbxassetid://123457",
        PremiumOnly = false
    })

    local seedType = "Carrot"

    Tab:AddTextbox({
        Name = "Seed Type",
        Default = seedType,
        TextDisappear = true,
        Callback = function(Value)
            seedType = Value
        end
    })

    Tab:AddButton({
        Name = "Spawn Seed",
        Callback = function()
            local player = game.Players.LocalPlayer
            if not player or not player.Character then return end

            local seed = Instance.new("Part")
            seed.Size = Vector3.new(1, 1, 1)
            seed.Color = Color3.fromRGB(50, 205, 50)
            seed.Name = "Seed_" .. seedType
            seed.Anchored = false
            seed.Position = player.Character.HumanoidRootPart.Position + Vector3.new(-3, 3, 0)
            seed.Parent = workspace
        end
    })
end
