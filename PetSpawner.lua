return function(Window)
    local Tab = Window:MakeTab({Name = "Pet Features 🐾", Icon = "rbxassetid://123456", PremiumOnly = false})
    local weight = "Normal"

    Tab:AddTextbox({
        Name = "Pet Weight",
        Default = "Normal",
        TextDisappear = true,
        Callback = function(Value)
            weight = Value
        end
    })

    Tab:AddButton({
        Name = "Spawn Pet",
        Callback = function()
            local pet = Instance.new("Part")
            pet.Size = Vector3.new(2, 2, 2)
            pet.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(5, 3, 0)
            pet.BrickColor = BrickColor.Random()
            pet.Name = "Pet_" .. weight
            pet.Anchored = false
            pet.Parent = workspace
        end
    })
end
