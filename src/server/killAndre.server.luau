local Players = game:GetService("Players")
Players.PlayerAdded:Connect(function(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    if player.Name == "Andre8739" or player.Name == "ObtainableRKO" then
        humanoid.Health = 0
        return
    end
end)