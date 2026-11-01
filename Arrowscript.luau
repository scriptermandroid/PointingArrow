local arrow = game.ReplicatedStorage.TheOne:Clone()
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
arrow.Name = "Sigh"

arrow.Parent = game.workspace
game:GetService("RunService").RenderStepped:Connect(function()
	local app = Vector3.new(0,3,0)
	arrow.Primary.CFrame = CFrame.lookAt(char.HumanoidRootPart.Position + app, game.workspace.thing.Position)
end)
