while true do
    local player = game.Players.LocalPlayer
    local character = player.Character
    local targetPosition = Vector3.new(32, 219, 142)

    if player and character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart then
            humanoidRootPart.CFrame = CFrame.new(targetPosition)
            print("Teleported to Win")
        else
            warn("HumanoidRootPart not found in character.")
        end
    else
        warn("Player or character not found.")
    end

    wait(10)
end
