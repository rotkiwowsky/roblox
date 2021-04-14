local button = game.Workspace.Button
local buttonClickDetector = button.ClickDetector

buttonClickDetector.MouseClick:Connect(function()

	local part = Instance.new("Part")
	
	part.Position = Vector3.new(11, 0.5, 7.4)
	
	part.TopSurface = 0
	part.BottomSurface = 0
	
	part.Size = Vector3.new(2,2,2)

part.Parent = game.Workspace
	
end)