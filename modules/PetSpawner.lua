-- modules/pets.lua
return function(Window)
    local Tab = Window:MakeTab({
        Name = "Pet Features 🐾",
        Icon = "rbxassetid://123456",
        PremiumOnly = false
    })

    local weight = "Normal"

    Tab:AddTextbox({
        Name = "Pet Weight",
        Default = weight,
        TextDisappear = true,
        Callback = function(Value)
            weight = Value
        end
    })

    Tab:AddButton({
        Name = "Spawn Pet",
        Callback = function()
            local player = game.Players.LocalPlayer
            if not player or not player.Character then return end

            local pet = Instance.new("Part")
            pet.Size = Vector3.new(2, 2, 2)
            pet.Color = Color3.fromRGB(math.random(255), math.random(255), math.random(255))
            pet.Name = "Pet_" .. weight
            pet.Anchored = false
            pet.Position = player.Character.HumanoidRootPart.Position + Vector3.new(3, 3, 0)
            pet.Parent = workspace
        end
    })
end
