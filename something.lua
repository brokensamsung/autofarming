local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local player = game.Players.LocalPlayer
local character = player.Character
local targetPosition = Vector3.new(32, 219, 142)
local destinationGameId = 7211666966

local tweenInfo = TweenInfo.new(
    1,
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out,
    0,
    false,
    0
)

if player and character then
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart then
        local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = CFrame.new(targetPosition)})
        tween:Play()
        tween.Completed:Connect(function()
            wait(5)
            TeleportService:Teleport(destinationGameId, player)
        end)
    else
        warn("HumanoidRootPart not found in character.")
    end
else
    warn("Player or character not found.")
end
